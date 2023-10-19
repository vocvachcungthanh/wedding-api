<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Guestkbook;
use App\Models\Bgs;

class GuestkbookPublicController extends Controller
{
    public function index(){
        $bgGuestkbook = Bgs::where('key', '=', 'guestkbook')->get();
        $guestkbooks = Guestkbook::select('id','name','desc')->orderBy('created_at','desc')->get();

        return response()->json([
            'data'  => [
                'data' => $guestkbooks,
                'bg' =>   $bgGuestkbook[0]->bg
            ]

        ], 200);
    }

    public function create(Request $request)
    {
        $create = Guestkbook::create([
            'name' => $request->name,
            'email'  => $request->email,
            'desc' => $request->desc,
            'created_at' => now()
        ]);

        if($create) {
            return response()->json([
                'code' => 200,
                'data' =>  $create,
                'message' => "Cô dâu chu rể Hữu Thành & Thủy Tiên cảm ơn bạn !"

            ],200);
        } else{
            return response()->json([
                'code' => 400,
                'errors' => [
                    'message' => "Lỗi chưa gửi được lời chúc",
                ]

            ], 400);
        }
    }

}
