<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\BridesmaidsGroomsmen;
use Illuminate\Support\Facades\Validator;

class BridesmaidsGroomsmenController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $bridesmaidsGroomsmen = BridesmaidsGroomsmen::all();

        return response()->json([
            "code" => 200,
            "data" => $bridesmaidsGroomsmen
        ]);
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
        $validator = Validator::make($request->all(), $this->rules(), $this->messages(),$this->attributes());

        if ($validator->fails()) {
            return response()->json([
                'code' => 400,
                'errors' => $validator->messages()
            ], 400);
        } else {
            $create = BridesmaidsGroomsmen::create([
                'avatar'     => $request-> avatar,
                'name'       => $request-> name,
                'status'     => $request-> status,
                'google_id'  => $request-> google_id,
                'source_id'  => $request-> source_id,
                'created_at' => now()
            ]);

            if($create) {
                return response()->json([
                    'code'      => 200,
                    'data'      => $create,
                    'message'   => "Thêm dữ liệu thành công"
                ], 200);
            } else {
                return response()->json([
                    'code'  => 400,
                    "cr"    => $create,
                    'errors' => [
                        'message' => "Thêm dữ liệu thất bại"
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
            $update = BridesmaidsGroomsmen::where('id', $id)->update([
                'name'       => $request-> name,
                'avatar'     => $request-> avatar,
                'status'     => $request-> status,
                'google_id'  => $request-> google_id,
                'source_id'  => $request-> source_id,
                'updated_at'   => now()
            ]);

            if($update = 1) {
                return response()->json([
                    'code'      => 200,
                    'data'      => $update,
                    'message'   => "Cập nhật dữ liệu thành công"
                ], 200);
            } else {
                return response()->json([
                    'code'  => 400,
                    'errors' => [
                        'message' => "Cập nhật dữ liệu thất bại"
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
        //
    }

    public function rules()
    {
        return [
            'avatar' => 'required',
            'name'  => 'required',
          


        ];
    }

    public function messages(){
        return [
            'avatar.required'  => ':attribute không được bỏ trống',
            'name.required'  => ':attribute không được bỏ trống',
        ];
    }

    public function attributes(){
        return [
            'avatar'  => "Ảnh đải diện",
            'name'  => 'Tên',
        ];
    }
}
