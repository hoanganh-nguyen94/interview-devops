<?php

namespace App\Passport;


use DateTimeImmutable;
use Laravel\Passport\Bridge\AccessToken as BaseToken;
use League\OAuth2\Server\Entities\Traits\AccessTokenTrait;

class AccessToken extends BaseToken
{
    use AccessTokenTrait;
    public function convertToJWT()
    {
        $this->initJwtConfiguration();

        return $this->jwtConfiguration->builder(new SecondBasedDateConversion())
            ->permittedFor($this->getClient()->getIdentifier())
            ->identifiedBy($this->getIdentifier())
            ->issuedAt(new DateTimeImmutable())
            ->canOnlyBeUsedAfter(new DateTimeImmutable())
            ->expiresAt($this->getExpiryDateTime())
            ->relatedTo((string) $this->getUserIdentifier())
            ->withClaim('scopes', $this->getScopes())
            ->getToken($this->jwtConfiguration->signer(), $this->jwtConfiguration->signingKey());
    }
}
