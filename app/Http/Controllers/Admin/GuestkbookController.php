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

    public function destroy($id)
    {
     

        if(is_null($id) || empty($id) || $id <= 0 || !is_numeric($id)){
            return response()->json([
                'code' => 400,
                "message" => "Dữ liệu cần xóa không tồn tại"
            ], 400);
        }

        $delete =Guestkbook::where('id', $id)->delete();

        if($delete == -1){
            return response()->json([
                'code' => 400,
                'errors' =>[
                    'message' => "Xóa dữ liệu thất bại",
                ]
            ], 400);
        } else {
            return response()->json([
                'code' => 200,
                'data' =>  $id,
                'message' =>  'Xóa dữ liệu thành công'
            ],200);
        }
    }
}
