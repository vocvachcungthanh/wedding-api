<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Exception;

class SendEmailController extends Controller
{
    public function sendEmail(Request $request){
        try{
        $to_name = $request->input('name');
        $to_email = $request->input('email');
        $messageText = $request->input('mesage');

        Mail::send([],[], function ($message) use ($to_email, $to_name, $messageText){
            $message->to($to_email)
            ->subject($to_name)
            ->setBody($message, 'text/html');
        });

        return response()->json([
            'code' => 200,
            'data' => $message,
            'to_name' => $to_name,
            'to_email' => $to_email,
            'message' => "Gửi lời cảm ơn thành công"
        ], 200);

    } catch(Exception $e){
        return response()->json([
            'code' => 400,
            'error' => [
                'message' => "Email không gửi được"
            ]
            ],400);
        }
    }
}

