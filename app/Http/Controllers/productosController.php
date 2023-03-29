<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\productos;
use App\Models\categoria;
use Mail;
use Illuminate\Support\Facades\Storage;
use File;
class productosController extends Controller
{
    /**
     * Handle the incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function getProducts(){
        $productos = productos::join('categoria','categoria.id','=', 'productos.categoria')
                ->select('productos.id', 'productos.nombre', 'productos.precio', 'productos.medidas', 'productos.img', 'categoria.nombre as nombreCategoria', 'categoria.id as idCategoria')
                ->get();
        return $productos;
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
    public function getAllProducts(){
        $productos = productos::join('categoria','categoria.id','=', 'productos.categoria')
        ->select('productos.id', 'productos.nombre', 'productos.medidas', 'productos.img', 'categoria.nombre as nombreCategoria', 'categoria.id as idCategoria')
        ->get();
        return $productos;
    }
    public function agregarProducto(Request $request){
        $producto = new productos;
        $producto->precio = $request->precio;
        $producto->nombre = $request->nombre;
        $producto->medidas = $request->medidas;
        $producto->categoria = $request->categoria;

        //obtenemos el campo file definido en el formulario
       $file = $request->file('imagen');

       //obtenemos el nombre del archivo
       $nombre = time().$file->getClientOriginalName();

       //indicamos que queremos guardar un nuevo archivo en el disco local
       Storage::disk('public')->put($nombre, File::get($file));


        $producto->img = $nombre;
        $producto->save();

        return $producto;
        
    }
    public function eliminarProducto(Request $request){
        $producto = productos::find($request->id);
        
        return $producto->delete();
    }
    public function getProduct(string $id){
        $producto = productos::find($id);
        $categoria = categoria::find($producto->categoria);

        
        $producto->nombreCategoria =  $categoria->nombre;
        return $producto;
    }
}
