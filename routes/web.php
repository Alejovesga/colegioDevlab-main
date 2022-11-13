<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\EstudiantesController;
use App\Http\Controllers\CursosController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('inicio');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::get('/estudiantes',[EstudiantesController::class, 'index']);
Route::get('/cursos',[CursosController::class, 'index']);
Route::get('/Estudiante/{id}/ficha', [EstudiantesController::class, 'ShowFicha']);
Route::post('/estudiantes/filtro', [EstudiantesController::class, 'Filtrar']);
Route::get('/Curso/{id}/ficha',[CursosController::class, 'ShowFicha']);
Route::get('/RegistroEstudiantes',[EstudiantesController::class, 'registro']);
Route::post('/RegistroEstudiantes',[EstudiantesController::class, 'registrar']);

Route::get('/Estudiante/{id}/actualizar', [EstudiantesController::class, 'actualizar']);
Route::post('/UpdateEstudiantes/{id}', [EstudiantesController::class, 'update']);

Route::get('/Estudiante/{id}/eliminar', [EstudiantesController::class, 'eliminar']);

Route::get('/RegistroCurso',[CursosController::class, 'registro']);
Route::post('/RegistroCurso',[CursosController::class, 'registrar']);

Route::get('/Curso/{id}/actualizar', [CursosController::class, 'actualizar']);
Route::post('/UpdateCursos/{id}', [CursosController::class, 'update']);

Route::get('/Curso/{id}/eliminar', [CursosController::class, 'eliminar']);



