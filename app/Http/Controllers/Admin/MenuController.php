<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Menu;
use Illuminate\Support\Facades\Validator;

class MenuController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $menus = Menu::all();

        return response()->json([
            'code'  => 200,

            'data'  => $menus
        ],200);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), $this->rulesCreate(), $this->messagesCreate(),$this->attributesCreate());

        if ($validator->fails()) {
            return response()->json([
                'code' => 400,
                'errors' => $validator->messages()
            ], 400);
        } else {
            $create = Menu::create([
                'name'         => $request-> name,
                'link'         => $request-> link,
                'parent_id'    => $request-> parent_id,
                'status'       => $request-> status,
                'desc'         => $request-> desc,
                'created_at' => now()
            ]);

            if($create) {
                return response()->json([
                    'code'      => 200,
                    'data'      => $create,
                    'message'   => "Thêm menu thành công"
                ], 200);
            } else {
                return response()->json([
                    'code'  => 400,
                    'errors' => [
                        'message' => "Thêm menu thất bại"
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
            $update = Menu::where('id', $id)->update([
                'name'         => $request-> name,
                'link'         => $request-> link,
                'status'       => $request-> status,
                'updated_at'   => now()
            ]);

            if($update = 1) {
                return response()->json([
                    'code'      => 200,
                    'data'      => $update,
                    'message'   => "Cập nhật menu thành công"
                ], 200);
            } else {
                return response()->json([
                    'code'  => 400,
                    'errors' => [
                        'message' => "Cập nhật menu thất bại"
                    ]
                ],400);
            }
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $delete = Menu::where('id', $id)->delete();

        if($delete == -1){
            return response()->json([
                'code' => 400,
                'errors' =>[
                    'message' => "Xóa menu thất bại",
                ]
            ], 400);
        } else {
            return response()->json([
                'code' => 200,
                'data' =>  $id,
                'message' =>  'Xóa menu thành công'
            ],200);
        }
    }

    public function rules()
    {
        return [
            'name'  => 'required',
            'link'  => 'required',
            'id'    => 'required'

        ];
    }

    public function messages(){
        return [
            'name.required'  => ':attribute không được bỏ trống',
            'link.required'  => ':attribute không được bỏ trống',
            'id.required'    => ':attribute cần cập nhật không tồn tại'
        ];
    }

    public function attributes(){
        return [
            'name'  => "Menu",
            'link'  => 'Link menu',
            'id'    => 'Menu'
        ];
    }

    public function rulesCreate()
    {
        return [
            'name'  => 'required',
            'link'  => 'required',

        ];
    }

    public function messagesCreate(){
        return [
            'name.required'  => ':attribute không được bỏ trống',
            'link.required'  => ':attribute không được bỏ trống',
        ];
    }

    public function attributesCreate(){
        return [
            'name'  => "Menu",
            'link'  => 'Link menu',
        ];
    }
}
