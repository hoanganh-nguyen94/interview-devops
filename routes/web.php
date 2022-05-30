<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

/* @var \Laravel\Lumen\Routing\Router $router */

use Illuminate\Support\Facades\Artisan;

$router->get('/', function () use ($router) {
    return $router->app->version();
});

$router->get('/config/database', function () use ($router) {
	Artisan::call('migrate');
});

$router->group(['prefix' => 'api/v1/auth'], function (\Laravel\Lumen\Routing\Router $router) {
    $router->post('register', 'V1\Auth\AuthController@register');
    $router->post('send-otp/check/{verify_token}', 'V1\Auth\AuthController@checkOtp');
    $router->post('send-otp/{verify_token}', 'V1\Auth\AuthController@sendOtp');
    $router->post('active/{verify_token}', 'V1\Auth\AuthController@activeAccount');

    // Forgot password
    $router->post('password/email', 'V1\Auth\FotgotPassword@forgot');
    $router->post('password/reset', 'V1\Auth\FotgotPassword@reset');
});