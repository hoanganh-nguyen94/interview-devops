<?php

namespace App\Transformers;

use App\Models\User;
use League\Fractal\TransformerAbstract;

class UserTransformer extends TransformerAbstract
{
    protected $authorization;

    public function transform(User $user)
    {
        return [
            'data' => [
                'uuid' => $user->uuid,
                'email' => $user->email,
                'first_name' => $user->first_name,
                'last_name' => $user->last_name,
                'type' => $user->type,
                'avatar' => $user->avatar,
                'covid_flag' => $user->covid_flag,
                'country_code' => $user->country_code,
                'city_code' => $user->city_code,
                'job_code' => $user->job_code,
                'experience_code' => $user->experience_code,
                'mobile_number' => $user->mobile_number,
                'gender' => $user->gender,
                'created_at' => $user->created_at->toDateTimeString(),
                'updated_at' => $user->updated_at->toDateTimeString(),
                'languages' => $user->languages,
                'industries' => $user->industries,
                'expertises' => $user->expertises,
                'skills' => $user->skills,
            ]
        ];
    }

    public function setAuthorization($authorization)
    {
        $this->authorization = $authorization;

        return $this;
    }

    public function authorization(User $user, $token)
    {
        return [
            'data' => [
                'access_token' => $token,
                'user' => [
                    'uuid' => $user->uuid,
                    'email' => $user->email,
                    'first_name' => $user->first_name,
                    'last_name' => $user->last_name,
                    'type' => $user->type,
                    'avatar' => $user->avatar,
                    'covid_flag' => $user->covid_flag,
                    'country_code' => $user->country_code,
                    'city_code' => $user->city_code,
                    'job_code' => $user->job_code,
                    'experience_code' => $user->experience_code,
                    'mobile_number' => $user->mobile_number,
                    'gender' => $user->gender,
                    'created_at' => $user->created_at->toDateTimeString(),
                    'updated_at' => $user->updated_at->toDateTimeString()
                ]
            ]
        ];
    }

    public function transformAuthorization(User $user)
    {
        return [
            'data' => [
                'email' => $user->email,
                'verify_token' => $user->verify_token,
            ]
        ];
    }
}