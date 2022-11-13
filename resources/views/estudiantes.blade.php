@extends('layouts.app')

@section('content')

    <div class="container ">
        <center><h1>Estudiantes</h1></center>
        <button class="btn btn-dark">
            <a href="/RegistroEstudiantes" class="a-button">Crear Estudiantes</a>
        </button>
        @if (session('success'))
        <div class="alert alert-success" role="alert">
            <h6>{{session('success')}}</h6>
        </div>
        @endif
        <div class="container container-filtro">
            <center><h2>Filtros</h2></center>
            <form action="/estudiantes/filtro" method="post">
                @csrf
                <label for="nif" class="form-label">nif:</label>
                <br>
                <input type="text" name="nif" class="form-control">
                <br>
                <label for="nombres" class="form-label">Nombres:</label>
                <br>
                <input type="text" name="nombres" class="form-control">
                <br>
                <label for="apellidos" class="form-label">Apellidos:</label>
                <br>
                <input type="text" name="apellidos" class="form-control">
                <br>
                <input type="submit" name="filtrar" class="btn btn-dark">
            </form>
            <br>
            <button class="btn btn-dark">
                <a href="/estudiantes" class="a-button">Estudiantes</a>
            </button>
        </div>
        <br>
        <table class="table table-striped">
            <th>ID</th>
            <th>NIF</th>
            <th>Nombres</th>
            <th>Apellidos</th>
            <th>Ver ficha</th>
            <th>Actualizar</th>
            <th>Eliminar</th>
            @foreach ($estudiantes as $estudiante)

                <tr>
                    <td>
                        {{$estudiante->id}}
                    </td>
                    <td>
                        {{$estudiante->nif}}
                    </td>
                    <td>
                        {{$estudiante->nombres}}
                    </td>
                    <td>
                        {{$estudiante->apellidos}}
                    </td>
                    <td>
                        <a href="{{url('/Estudiante/'.$estudiante->id.'/ficha')}}">Ver ficha</a>
                    </td>
                    <td>
                        <a href="{{url('/Estudiante/'.$estudiante->id.'/actualizar')}}">Actualizar</a>
                    </td>
                    <td>
                        <a href="{{url('/Estudiante/'.$estudiante->id.'/eliminar')}}">Eliminar</a>
                    </td>
                </tr>
            @endforeach
        </table>
    </div>
@endsection
