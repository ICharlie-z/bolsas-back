<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\bolsas;
use Mail;
class bolsasController extends Controller
{
    /**
     * Handle the incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function getBolsas(){
        $bolsas = bolsas::get();
        return $bolsas;
    }
    public function contacto(Request $request){
        $email = Array("carlos.ron.mouat@gmail.com"=>"Some One");
        $subject = "Contacto web";
        $data = Array(  "nombre" => $request->nombre,
                        "apellido" => $request->apellido,
                        "telefono" => $request->telefono,
                        "email" => $request->email,
                        "comentario" => $request->comentario
                    );
        Mail::send('contacto', $data, function($message) use ($email, $subject) {

            $message->to($email)->subject($subject);
        });
    }
}
