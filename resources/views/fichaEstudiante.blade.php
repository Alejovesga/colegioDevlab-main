@extends('layouts.app')

@section('content')

    <div class="container">
        <div class="container-filtro">
            <table class="table table-striped">
            <h1>Ficha de estudiante</h1>
            <tr>
                <img src="{{asset('logo_estudiante.jpg')}}" alt="">
            </tr>
            @foreach ($estudiante as $estu)
            <tr>
                <td>NIF</td>
                <td>{{$estu->nif}}</td>
            </tr>
            <tr>
                <td>Nombre Estudiante:</td>
                <td>{{$estu->nombres}} {{$estu->apellidos}}</td>
            </tr>

            @endforeach

        </table >
        </div>

        <br><br>
        <center><h2>Cursos del estudiante</h2></center>
        @foreach ($cursoEstudiante as $ce)
            <table class="table table-striped">
                <tr>
                    <td>
                        {{$ce->nombre}}
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="{{url('/Curso/'.$ce->id.'/ficha')}}">Ver ficha</a>
                    </td>
                </tr>
            </table>
        @endforeach

    </div>

@endsection
