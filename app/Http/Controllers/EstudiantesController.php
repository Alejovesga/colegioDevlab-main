<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Estudiante;
use App\Models\Cursos_estudiante;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\Http\Requests\EstudiantesRequest;

class EstudiantesController extends Controller
{
    public function index(){
        if(Auth::check()){
            $estudiantes=Estudiante::all();
            return view('estudiantes', compact('estudiantes'));
        }else{
            return view('auth.login');
        }

    }


    public function ShowFicha($id){
        $estudiante=Estudiante::where('id', $id)->get();
        $cursoEstudiante=DB::table('cursos_estudiantes')
        ->join('cursos', 'cursos_estudiantes.id_curso', 'cursos.id')
        ->join('estudiantes', 'cursos_estudiantes.id_estudiante', 'estudiantes.id')
        ->select('cursos.nombre', 'cursos.id')
        ->where('id_estudiante', $id)->get();
        return view('fichaEstudiante', compact('estudiante', 'cursoEstudiante'));
    }

    public function Filtrar(Request $request){
        $nif=$request->get('nif');
        $nombres=$request->get('nombres');
        $apellidos=$request->get('apellidos');
        $estudiantes=Estudiante::where('nif','=', $nif)->orWhere('nombres','=',$nombres)
        ->orWhere('apellidos', '=', $apellidos)->get();
        return view('estudiantes', compact('estudiantes'));
    }

    public function registro(){
        if(Auth::check()){
            return view('registroEstudiantes');
        }
        return view('auth.login');
    }


    public function registrar(EstudiantesRequest $request){
        $estudiantes=Estudiante::create($request->validated());
        return  redirect('/estudiantes')->withSuccess('Estudiante Creado');
    }


    public function actualizar(Request $request, $id){
        if(Auth::check()){
            $estudiante=Estudiante::findOrfail($id);
            return view('actualizarEstudiante', compact('estudiante'));
        }
    }
    public function update($id){
        $estudiante=request()->except(['_token', '_method', 'actualizar']);
        Estudiante::where('id','=',$id)->update($estudiante);
        return redirect('/estudiantes')->withSuccess('Estudiante Actualizado');
    }

    public function eliminar($id){
        $deleted = DB::table('estudiantes')->where('id',$id)->delete();
        return redirect('/estudiantes')->withSuccess('Estudiante Eliminado');
    }
}
