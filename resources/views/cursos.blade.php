@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Cursos</h1>
    <button class="btn btn-dark">
        <a href="/RegistroCurso" class="a-button">Crear curso</a>
    </button>
    @if (session('success'))
    <div class="alert alert-success" role="alert">
        <h6>{{session('success')}}</h6>
    </div>
    @endif
    <table class="table table-striped">
        <th>ID</th>
        <th>Codigo</th>
        <th>Nombre</th>
        <th>creditos</th>
        <th>Actualizar</th>
        <th>Eliminar</th>
        <th>Ficha</th>
        @foreach ($cursos as $curso)

            <tr>
                <td>
                    {{$curso->id}}
                </td>
                <td>
                    {{$curso->codigo}}
                </td>
                <td>
                    {{$curso->nombre}}
                </td>
                <td>
                    {{$curso->creditos}}
                </td>
                <td>
                    <a href="{{url('/Curso/'.$curso->id.'/actualizar')}}">Actualizar</a>
                </td>
                <td>
                    <a href="{{url('/Curso/'.$curso->id.'/eliminar')}}">eliminar</a>
                </td>
                <td>
                    <a href="{{url('/Curso/'.$curso->id.'/ficha')}}">Ver ficha</a>
                </td>
            </tr>
        @endforeach
    </table>
</div>
@endsection
