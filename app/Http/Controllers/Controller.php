<?php

namespace App\Http\Controllers;

use Laravel\Lumen\Routing\Controller as BaseController;

class Controller extends BaseController
{
    protected function responseSuccess()
    {
        return response()->json([
            'status_code' => 200
        ], 200);
    }
}
