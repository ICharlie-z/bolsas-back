<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\bolsas;

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
}
