<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Guestkbook;
use App\Models\Bgs;

class GuestkbookController extends Controller
{
    public function index(){
        $guestkbooks = Guestkbook::select('id','name','email','desc','created_at')->orderBy('created_at','desc')->get();
        $bgGuestkbook = Bgs::where('key', '=', 'guestkbook')->get();

        return response()->json([
            'code'  => 200,
            'data'  => [
                'data'         =>  $guestkbooks,
                'bgGuestkbook' =>  $bgGuestkbook[0]
            ]
        ], 200);
    }
}
