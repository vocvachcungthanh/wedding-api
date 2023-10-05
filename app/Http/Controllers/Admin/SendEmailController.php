<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Mail;

class SendEmailController extends Controller
{
    public function SendEmail(Request $request){
        $to_name = $request->name;
        $to_email = $request->email;
        $message = $request->message;

        Mail::raw($message, function($message) use($to_email, $to_name){
            $message->to($to_email)->subject($to_name);
        });

        return response()->json([
            'code' => 200,
            'data' => $message,
            'to_name' => $to_name,
            'to_email' => $to_email,
            'message' => "Gửi lời cảm ơn thành công"
        ], 200);
    }
}

