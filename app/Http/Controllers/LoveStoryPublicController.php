<?php

namespace App\Http\Controllers;
use App\Models\LoveStory;
use Illuminate\Http\Request;

class LoveStoryPublicController extends Controller
{
    public function index(){
        $loveStory = LoveStory::select('id','avatar', 'date', 'title', 'desc')->where('status', '=','1')->get();

        return response()->json([
            'code' => 200,
            'data' => $loveStory

        ], 200);
    }
}
