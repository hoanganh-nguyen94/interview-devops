<?php

namespace App\SocialGrant;

use Laravel\Socialite\Facades\Socialite;
use Illuminate\Contracts\Auth\Authenticatable;
use League\OAuth2\Server\Entities\ClientEntityInterface;
use Adaojunior\PassportSocialGrant\SocialGrantUserProvider;
use App\Models\User;
use Illuminate\Support\Str;
use League\OAuth2\Server\Exception\OAuthServerException as ExceptionOAuthServerException;

class UserProvider implements SocialGrantUserProvider
{
    /**
     * Retrieve a user by provider and access token.
     *
     * @param string $provider
     * @param string $accessToken
     * @param ClientEntityInterface $client
     * @return Authenticatable|null
     */
    public function getUserByAccessToken(string $provider, string $accessToken, ClientEntityInterface $client):? Authenticatable
    {
        $socialUuser = Socialite::driver($provider)->userFromToken($accessToken);
        $user = User::where('username', $socialUuser->id)->first();

        if ($user) {
        } else {
            $user = User::create([
                'first_name' => $socialUuser->name,
                'username' => $socialUuser->id,
                'email' => $socialUuser->email,
                'type' => User::TYPE_MENTEE,
                'verify_token' => Str::random(40).time(),
                'status' => User::STATUS_INACTIVE,
                'provider' => $provider
            ]);
        }

        if($user->status != User::STATUS_ACTIVE) {
            $e = new ExceptionOAuthServerException ('Your user is not active', 400, 'inactive_user');
            $payload = $e->getPayload();
            $payload['verify_token'] = $user->verify_token;
            $e->setPayload($payload);
            throw $e;
        }
            

        return $user;

    }
}