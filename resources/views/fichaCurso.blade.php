@extends('layouts.app')

@section('content')

    <div class="container">
        <div class="container-filtro">
            <center><h1>Ficha del curso</h1></center>
        <table class="table table-striped">
            <tr>
                <img style="widht:180px; height:180px;" src="{{asset('logo_curso.webp')}}" alt="">
            </tr>
            @foreach ($cursos as $curso)
            <tr>
                <td>
                    Codigo del curso:
                </td>
                <td>
                    {{$curso->codigo}}
                </td>
            </tr>
            <tr>
                <td>
                    Nombre del curso:
                </td>
                <td>
                    {{$curso->nombre}}
                </td>
            </tr>
            <tr>
                <td>
                    Descripcion:
                </td>
                <td>
                    {{$curso->descripcion}}
                </td>
            </tr>
            <tr>
                <td>
                    Creditos:
                </td>
                <td>
                    {{$curso->creditos}}
                </td>
            </tr>
            @endforeach

        </table>
        </div>

    </div>
@endsection
