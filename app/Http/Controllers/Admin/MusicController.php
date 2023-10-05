<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Music;
use Storage;

class MusicController extends Controller
{
    public function index()
    {
        $music = Music::all();

        return response()->json([
            'code' => 200,
            'data' => $music,
        ], 200);
    }

    public function create(Request $request)
    {
        $create = Music::create([
            'thumbnail'  => $request->thumbnail,
            'name'       => $request->name,
            'singer'     => $request->singer,
            'link'       => $request->link,
            'desc'       => $request->desc,
            'google_id'  => $request->google_id,
            'source_id'  => $request->source_id,
            'status'     => $request->status,
            'created_at' => now()
        ]);

        if($create) {
            return response()->json([
                'code' => 200,
                'data' =>  $create,
                'message' => "Thêm dữ liệu thành công"

            ],200);
        } else{
            return response()->json([
                'code' => 400,
                'errors' => [
                    'message' => "Thêm dữ liệu thất bại",
                ]

            ], 400);
        }
    }

    public function update(Request $request, $id)
    {
        if($id){
            $upload = Music::where('id', $id)->update([
                'thumbnail'  => $request->thumbnail,
                'name'       => $request->name,
                'singer'     => $request->singer,
                'link'       => $request->link,
                'desc'       => $request->desc,
                'google_id'  => $request->google_id,
                'source_id'  => $request->source_id,
                'updated_at' => now()
            ]);

            if($upload = 1) {
                return response()->json([
                    'code'    => 200,
                    'data'    =>  $upload,
                    'message' => "Cập nhật thành công"
                ],200);
            } else{
                return response()->json([
                    'code'   => 400,
                    'errors' => [
                        'message' => "Cập nhật thất bại",
                    ]
                ], 400);
            }
        } else {
            return response()->json([
                'core'   => 400,
                'errors' => [
                    'message' => "Thông tin cần sửa không tồn tại"
                ]
             ],400);
        }
    }

    public function show(Request $request,$page1)
    {

        $page = $request->input('page', $page1);

        $perPage = $request->input('per_page', $request->limit);
        $Music=   Music::orderBy('id', 'desc')->paginate($perPage, ['*'], 'page', $page);


       return response()->json([
        'code'  => 200,
        'data'  => $Music,
       ],200);
    }

    public function delete(Request $request)
    {

       $id = $request->id;
       $source = $request->source_id;

       if($source == 2) {
        $googleId = $request->google_id;
        $dirs = "/";
        $recursive = true;

        $fileinfo = collect(Storage::disk('google')->listContents($dirs,$recursive))->where('type', 'file')->where('path', $googleId)->first();

        if($fileinfo == null) return response()-> json([
            'code' => 400,
            'errors' => [
                'message'   => "Không tìm thấy file cần xóa"
            ]
        ],400);

        $deleteGoogle = Storage::disk('google')->delete($fileinfo['path']);
    }


       $deleteMsql = Music::where('id', $id)->delete();

       if($deleteMsql == -1){
           return response()->json([
               'code'   => 400,
               'errors' =>[
                   'message' => "Xóa music thất bại",
               ]
           ], 400);
       } else {
           return response()->json([
               'code' => 200,
               'data' =>  $id,
               'message' =>  'Xóa music thành công'
           ],200);
       }

    }
}
