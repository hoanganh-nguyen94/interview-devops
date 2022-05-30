<?php

namespace App\Http\Controllers\V1\Auth;

use Illuminate\Http\Request;
use App\Models\User;
use App\Http\Controllers\Controller;
use App\Rules\MemberActivedRule;
use App\Transformers\UserTransformer;
use Carbon\Carbon;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Str;
use Twilio\Rest\Client as TwilioClient;

class AuthController extends Controller
{
    protected $auth0;
    /**
     * Create a new user.
     *
     * @param  string $token
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function register(Request $request) {
        $rules = [
            'first_name' => 'required|string|max:255',
            'last_name' => 'required|string|max:255',
            'email' => [
                'required',
                'email',
                new MemberActivedRule()
            ],
            'country_code' => 'required',
            'city_code' => 'required',
            'password' => 'required|string|min:6'
        ];

        $this->validate($request, $rules);
        // Convent to lower stirng
        $email = Str::lower($request->input('email'));
        $password = $request->input('password');

        try{
            $user = User::where([
                'email' => $email
            ])->first();

            if(!$user){
                $userInput = [
                    'first_name' => $request->input('first_name'),
                    'last_name' => $request->input('last_name'),
                    'email' => $email,
                    'username' => $email,
                    'type' => User::TYPE_MENTEE,
                    'country_code' => $request->input('country_code'),
                    'city_code' => $request->input('city_code'),
                    'verify_token' => Str::random(40).time(),
                    'password' => Hash::make($password),
                    'status' => User::STATUS_INACTIVE
                ];
                $user = User::create($userInput);
            } else {
                if($user->status == User::STATUS_ACTIVE){
                    Log::debug('User already exists');
                    throw new \Symfony\Component\HttpKernel\Exception\BadRequestHttpException(__('User already exists'));
                }
                $user->country_code = $request->input('city_code');
                $user->city_code = $request->input('city_code');
                $user->verify_token = Str::random(40).time();
                $user->save();
            }
            
            return (new UserTransformer)->transformAuthorization($user);
        } catch(\GuzzleHttp\Exception\ClientException $ex){
            $response = $ex->getResponse();
            $responseBodyAsString = $response->getBody()->getContents();
            $responseBodyAsString = json_decode($responseBodyAsString);
            throw new \Symfony\Component\HttpKernel\Exception\BadRequestHttpException($responseBodyAsString->message ?? 'error');
        }
    }

     /**
     * Undocumented function
     *
     * @param [type] $token
     * @param Request $request
     * @return void
     */
    public function sendOtp($verify_token, Request $request) {
        $this->validate($request, [
            'mobile_number' => 'required|string|max:255'
        ]);

        // Get user by verify_token
        $user = User::where([
            'verify_token' => $verify_token,
            'status' => User::STATUS_INACTIVE
        ])->first();
        if(!$user){
            abort(404, __('No member found'));
        }

        $account_sid = config('services.twilio.account_sid');
        $auth_token = config('services.twilio.auth_token');

        // A Twilio number you own with SMS capabilities
        $twilio_number = config('services.twilio.number');

        $otpNumber = sprintf("%'.04d", random_int(1, 9999));

        $user->mobile_number = $request->input('mobile_number');
        $user->verify_otp = $otpNumber;
        $user->save();

        $client = new TwilioClient($account_sid, $auth_token);
        $client->messages->create(
            // Where to send a text message (your cell phone?)
            $user->mobile_number,
            array(
                'from' => $twilio_number,
                'body' => "OTP: $user->verify_otp"
            )
        );

        return $this->responseSuccess();
    }

    /**
     * CheckOtp function
     *
     * @param [type] $verify_token
     * @param Request $request
     * @return void
     */
    public function checkOtp($verify_token, Request $request) {
        $this->validate($request, [
            'otp' => 'required'
        ]);

        // Get user by verify_token
        $user = User::where([
            'verify_token' => $verify_token,
            'status' => User::STATUS_INACTIVE,
            'verify_otp' => $request->input('otp')
        ])->first();
        
        if(!$user){
            abort(404, __('No member found'));
        }

        $user->phone_verified_at = Carbon::now();
        $user->save();

        return $this->responseSuccess();
    }

    /**
     * Active Member function
     *
     * @param [type] $verify_token
     * @param Request $request
     * @return void
     */
    public function activeAccount($verify_token, Request $request) {
        $this->validate($request, [
            'phone' => 'required',
            'referral_code' => 'required'
        ]);

        // Get user by verify_token
        $user = User::where([
            'verify_token' => $verify_token,
            'status' => User::STATUS_INACTIVE
        ])->first();
        
        if(!$user){
            abort(404, __('No member found'));
        }

        $response = Http::asForm()->post(config('services.api.referral_endpoint'), [
            'phone' => $request->input('phone'),
            'referralCode' => $request->input('referral_code')
        ]);

        if($response->failed() || $response->body() == 'false'){
            abort(400, __('Referral code is incorrect'));
        }

        $user->verify_token = null;
        $user->verify_otp = null;
        $user->status = User::STATUS_ACTIVE;
        $user->save();

        return $this->responseSuccess();
    }
}
