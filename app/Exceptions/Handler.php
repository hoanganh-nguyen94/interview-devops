<?php

namespace App\Exceptions;

use Illuminate\Auth\Access\AuthorizationException;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Validation\ValidationException;
use Laravel\Lumen\Exceptions\Handler as ExceptionHandler;
use Symfony\Component\HttpKernel\Exception\HttpException;
use Throwable;

class Handler extends ExceptionHandler
{
    /**
     * A list of the exception types that should not be reported.
     *
     * @var array
     */
    protected $dontReport = [
        AuthorizationException::class,
        HttpException::class,
        ModelNotFoundException::class,
        ValidationException::class,
    ];

    /**
     * Report or log an exception.
     *
     * This is a great spot to send exceptions to Sentry, Bugsnag, etc.
     *
     * @param  \Throwable  $exception
     * @return void
     *
     * @throws \Exception
     */
    public function report(Throwable $exception)
    {
        parent::report($exception);
    }

    /**
     * Render an exception into an HTTP response.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Throwable  $exception
     * @return \Illuminate\Http\Response|\Illuminate\Http\JsonResponse
     *
     * @throws \Throwable
     */
    public function render($request, Throwable $exception)
    {
        $response = $this->formatException($exception, $request);
    
        return response($response, $response['status_code']);
    }

    protected array $exceptionMap = [
        ModelNotFoundException::class => [
            'code' => 404,
            'status_code' => 404,
            'message' => 'Could not find what you were looking for.',
            'error_description' => '',
            'error' => 'model_not_found',
        ],
        
        NotFoundHttpException::class => [
            'code' => 404,
            'status_code' => 404,
            'message' => 'Could not find what you were looking for.',
            'error_description' => '',
            'error' => 'page_not_found',
        ],

        \Symfony\Component\HttpKernel\Exception\NotFoundHttpException::class => [
            'code' => 404,
            'status_code' => 404,
            'message' => 'Could not find what you were looking for.',
            'error_description' => '',
            'error' => 'page_not_found',
        ],
        
        MethodNotAllowedHttpException::class => [
            'code' => 405,
            'status_code' => 405,
            'message' => 'This method is not allowed for this endpoint.',
            'error_description' => '',
            'error' => 'invalid_method',
        ],
        
        ValidationException::class => [
            'code' => 422,
            'status_code' => 422,
            'message' => 'Some data failed validation in the request',
            'error_description' => '',
            'error' => 'invalid_validation',
        ],
        
        \InvalidArgumentException::class => [
            'code' => 400,
            'status_code' => 400,
            'message' => 'You provided some invalid input value',
            'error_description' => '',
            'error' => 'model_not_found',
        ],
        Laravel\Passport\Exceptions\OAuthServerException::class => [
            'code' => 400,
            'status_code' => 400,
            'message' => 'You provided some invalid input value',
            'error_description' => '',
            'error' => 'model_not_found',
        ]
    ];

    protected function formatException(\Throwable $exception, $request): array
    {
        # We get the class name for the exception that was raised
        $exceptionClass = get_class($exception);
        $errMap = $this->exceptionMap;

        switch($exceptionClass){
            case 'Laravel\Passport\Exceptions\OAuthServerException':
                $error = json_decode($exception->render($request)->getContent(), true);
                $error['code'] = $exception->statusCode();
                $error['status_code'] = $exception->statusCode();
                $errMap['Laravel\Passport\Exceptions\OAuthServerException'] = $error;
                break;
            case 'Illuminate\Validation\ValidationException':
                $error = (array) $exception->response->getData();
                $errMap['Illuminate\Validation\ValidationException']['error_description'] = $error;
                break;
            case 'Symfony\Component\HttpKernel\Exception\NotFoundHttpException':
                $errMap['Symfony\Component\HttpKernel\Exception\NotFoundHttpException']['message'] = $exception->getMessage();
                break;
            default:
        }
    
        # we see if we have registered it in the mapping - if it isn't
        # we create an initial structure as an 'Internal Server Error'
        # note that this can always be revised at a later time
        $definition = $errMap[$exceptionClass] ?? [
            'code' => 500,
            'message' => $exception->getMessage() ?? 'Something went wrong while processing your request',
            'error_description' => '',
            'error' => 'unknown',
        ];

        $definition['code'] = $definition['code'] ?? 500;
        $definition['status_code'] = $definition['status_code'] ?? 500;
        $definition['error'] = $definition['error'] ?? 'unknown';
        $definition['message'] = $definition['message'] ?? '';
        $definition['error_description'] = $definition['error_description'] ?? '';

        return $definition;
    }
}
