<?php

namespace App\Http\Controllers\V1\Auth;

use Illuminate\Http\Request;
use App\Models\User;
use App\Http\Controllers\Controller;
use App\Mail\ForgotPassword;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Mail;


class FotgotPassword extends Controller
{
    public function forgot(Request $request)
    {
        $this->validate($request, [
            'email' => 'required|email'
        ]);

        $user = User::where([
            'username' => $request->input('email'),
            'status' => User::STATUS_ACTIVE
        ])->first();

        if(!$user){
            abort(404, __('No member found'));
        }

        $user->verify_token = Str::random(40).time();
        $user->save();

        Mail::to($user->email)->send(new ForgotPassword($user));

        return $this->responseSuccess();
    }

    public function reset(Request $request)
    {
        $this->validate($request, [
            'token' => 'required',
            'password' => 'required|string|min:6',
        ]);

        $user = User::where([
            'verify_token' => $request->input('token'),
            'status' => User::STATUS_ACTIVE
        ])->first();

        if(!$user){
            abort(404, __('No member found'));
        }

        $user->verify_token = null;
        $user->password = Hash::make($request->input('password'));
        $user->save();

        //Mail::to($user->email)->send(new ForgotPassword($user));

        return $this->responseSuccess();
    }
}
