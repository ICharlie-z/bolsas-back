<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\productosController;
use App\Http\Controllers\categoriaController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/products', [productosController::class, 'getProducts']);
Route::get('/allproducts', [productosController::class, 'getAllProducts']);
Route::get('/products/{id}', [productosController::class, 'getProduct']);
Route::post('/contacto', [productosController::class, 'contacto']);
Route::get('/categorias', [categoriaController::class, 'obtenerCategorias']);
Route::post('/agregar', [productosController::class, 'agregarProducto']);
Route::delete('/eliminar', [productosController::class, 'eliminarProducto']);