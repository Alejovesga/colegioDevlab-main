@extends('layouts.app')

@section('content')
<div class="container">
    <form action="{{url('/UpdateEstudiantes/'.$estudiante->id)}}" method="post">
        @csrf
        <label for="nif" class="form-label">Nif:</label>
        <input type="text" name="nif" value="{{$estudiante->nif}}" class="form-control">
        <br>
        <label for="nombres" class="form-label">Nombres:</label>
        <input type="text" name="nombres"  value="{{$estudiante->nombres}}" class="form-control">
        <br>
        <label for="apellidos" class="form-label">Apellidos:</label>
        <input type="text" name="apellidos"  value="{{$estudiante->apellidos}}" class="form-control">
        <br>
        <input type="submit" name="actualizar" value="actualizar" class="btn btn-dark">
    </form>
</div>

@endsection
