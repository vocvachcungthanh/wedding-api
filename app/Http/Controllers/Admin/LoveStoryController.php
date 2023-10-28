<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Admin\UploadFileController;
use App\Http\Controllers\Controller;
use App\Models\LoveStory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class LoveStoryController extends Controller
{
    protected $uploadController;

    public function __construct(UploadFilecontroller $uploadController)
    {
        $this->uploadController = $uploadController;
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $loveStory = LoveStory::all();

        return response()->json([
            'code' => 200,
            'data' => $loveStory
        ],200);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), $this->rules(), $this->messages(),$this->attributes());

        if ($validator->fails()) {
            return response()->json([
                'code' => 400,
                'errors' => $validator->messages()
            ], 400);
        } else {
            $create = LoveStory::create([
                'title'      => $request-> title,
                'avatar'     => $request-> avatar,
                'date'       => $request-> date,
                'desc'       => $request-> desc,
                'status'     => $request-> status,
                'google_id'  => $request-> google_id,
                'source_id'  => $request-> source_id,
                'created_at' => now()
            ]);

            if($create) {
                return response()->json([
                    'code'      => 200,
                    'data'      => $create,
                    'message'   => "Thêm câu chuyện thành công"
                ], 200);
            } else {
                return response()->json([
                    'code'  => 400,
                    'errors' => [
                        'message' => "Thêm câu chuyện thất bại"
                    ]
                ],400);
            }
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $validator = Validator::make($request->all(), $this->rules(), $this->messages(),$this->attributes());

        if ($validator->fails()) {
            return response()->json([
                'code' => 400,
                'errors' => $validator->messages()
            ], 400);
        } else {
            $update = LoveStory::where('id', $id)->update([
                'title'      => $request-> title,
                'avatar'     => $request-> avatar,
                'date'       => $request-> date,
                'desc'       => $request-> desc,
                'status'     => $request-> status,
                'google_id'  => $request-> google_id,
                'source_id'  => $request-> source_id,
                'updated_at'   => now()
            ]);

            if($update = 1) {
                return response()->json([
                    'code'      => 200,
                    'data'      => $update,
                    'message'   => "Cập nhật slider thành công"
                ], 200);
            } else {
                return response()->json([
                    'code'  => 400,
                    'errors' => [
                        'message' => "Cập nhật slider thất bại"
                    ]
                ],400);
            }
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {

    }

    public function delete(Request $request)
    {
        $id = $request->id;

        if(is_null($id) || empty($id) || $id <= 0 || !is_numeric($id)){
            return response()->json([
                'code' => 400,
                "message" => "Dữ liệu cần xóa không tồn tại"
            ], 400);
        }

        $source = $request->source_id;

        if($source === 2){
            $googleId = $request->google_id;
            $this->uploadController->DeleteFile($googleId);
        }

        $delete =LoveStory::where('id', $id)->delete();

        if($delete == -1){
            return response()->json([
                'code' => 400,
                'errors' =>[
                    'message' => "Xóa dũ liệu thất bại",
                ]
            ], 400);
        } else {
            return response()->json([
                'code' => 200,
                'data' =>  $id,
                'message' =>  'Xóa dữ thành công'
            ],200);
        }
    }

    public function rules()
    {
        return [
            'avatar' => 'required',
            'title'  => 'required',
            'date'   => 'required',
            'desc'   => 'required',


        ];
    }

    public function messages(){
        return [
            'avatar.required'  => ':attribute không được bỏ trống',
            'title.required'  => ':attribute không được bỏ trống',
            'date.required'    => ':attribute không được bỏ trống',
            'desc.required'    => ':attribute không được bỏ trống'
        ];
    }

    public function attributes(){
        return [
            'avatar'  => "Ảnh đải diện",
            'title'  => 'Tiêu đề',
            'date'    => 'Thời gian',
            'desc'    => 'Mô tả câu chuyện'
        ];
    }
}
