<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Curso;
use App\Http\Requests\CursosRequest;
use Illuminate\Support\Facades\DB;

class CursosController extends Controller
{
    public function index(){
        if(Auth::check()){
            $cursos=Curso::all();
            return view('cursos', compact('cursos'));
        }else{
            return view('auth.login');
        }
    }


    public function ShowFicha($id){
        $cursos=Curso::where('id', $id)->get();
        return view('fichaCurso', compact('cursos'));
    }


    public function registro(){
        if(Auth::check()){
            return view('registroCursos');
        }
        return view('auth.login');
    }


    public function registrar(CursosRequest $request){
        $Cursos=Curso::create($request->validated());
        return  redirect('/cursos')->withSuccess('Curso Creado');
    }


    public function actualizar(Request $request, $id){
        if(Auth::check()){
            $curso=Curso::findOrfail($id);
            return view('actualizarcurso', compact('curso'));
        }
    }
    public function update($id){
        $curso=request()->except(['_token', '_method', 'actualizar']);
        Curso::where('id','=',$id)->update($curso);
        return redirect('/cursos')->withSuccess('curso Actualizado');
    }

    public function eliminar($id){
        $deleted = DB::table('cursos')->where('id',$id)->delete();
        return redirect('/cursos')->withSuccess('Curso Eliminado');
    }
}
