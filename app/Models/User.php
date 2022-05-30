<?php

namespace App\Models;

use Illuminate\Auth\Authenticatable;
use Laravel\Lumen\Auth\Authorizable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Contracts\Auth\Authenticatable as AuthenticatableContract;
use Illuminate\Contracts\Auth\Access\Authorizable as AuthorizableContract;
use Illuminate\Support\Facades\Hash;
use Laravel\Passport\HasApiTokens;
use Illuminate\Support\Str;
use League\OAuth2\Server\Exception\OAuthServerException as ExceptionOAuthServerException;

class User extends Model implements AuthenticatableContract, AuthorizableContract
{
    use HasApiTokens, Authenticatable, Authorizable;

    protected $primaryKey = 'uuid';

    protected $keyType = 'string';

    public $incrementing = false;

    // Status
    const STATUS_INACTIVE = 0;
    const STATUS_ACTIVE = 1;

    // Type
    const TYPE_MENTEE = 1;
    const TYPE_MENTOR = 2;

    protected static function boot()
    {
        parent::boot();
        static::creating(function ($model) {
            $model->uuid = (string) Str::orderedUuid();
            $code = (string) Str::random(10);
            $model->code = Str::upper($code);
        });
    }

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'uuid',
        'code',
        'username',
        'email',
        'first_name',
        'last_name',
        'last_login',
        'type',
        'gender',
        'bio',
        'password',
        'social',
        'mobile_number',
        'covid_flag',
        'status',
        'is_hide_full_name',
        'is_get_new_notification',
        'city_code',
        'country_code',
        'job_code',
        'experience_code',
        'verify_token',
        'verify_otp',
        'avatar',
        'provider',
        'phone_verified_at',
        'referral_verified_at',
        'created_by',
        'updated_by'
    ];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [
        'password',
    ];

    public function findForPassport($username)
    {
        return $this->where('username', $username)->first();
    }

    public function validateForPassportPasswordGrant($password)
    {
        if($this->status != self::STATUS_ACTIVE) {
            $e = new ExceptionOAuthServerException ('Your user is not active', 400, 'inactive_user');
            $payload = $e->getPayload();
            $payload['verify_token'] = $this->verify_token;
            $payload['user'] = [
                'phone_verified_at' => $this->phone_verified_at,
                'referral_verified_at' => $this->referral_verified_at,
                'country_code' => $this->country_code,
                'mobile_number' => $this->mobile_number,
            ];
            $e->setPayload($payload);
            throw $e;
        }
        return Hash::check($password, $this->password);
    }
}
