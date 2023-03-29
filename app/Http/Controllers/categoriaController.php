<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\categoria;
use DB;

class categoriaController extends Controller
{
   public function obtenerCategorias(){
    $categorias = categoria::all();
    return $categorias;
   }
}
