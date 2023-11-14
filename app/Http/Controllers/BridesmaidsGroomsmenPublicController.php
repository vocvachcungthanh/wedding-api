<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\BridesmaidsGroomsmen;

class BridesmaidsGroomsmenPublicController extends Controller
{
    public function index(){
        $BridesmaidsGroomsmen = BridesmaidsGroomsmen::select('avatar','id', 'name','status')->get();

        return response()->json([
            'code' => 200,
            'data' =>  $BridesmaidsGroomsmen

        ], 200);
    }
    
}
