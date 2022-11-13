@extends('layouts.app')


@section('content')
<div class="container">
@if($errors->any())
<div class="alert alert-danger" role="alert">
    {!! implode('', $errors->all('<h6 class="error">:message</h6>')) !!}
</div>
@endif
    <form action="/RegistroCurso" method="post">
        @csrf
        <label for="nombre" class="form-label">Nombre:</label>
        <input type="text" name="nombre" class="form-control">
        <br>
        <label for="codigo" class="form-label">Codigo:</label>
        <input type="text" name="codigo" class="form-control">
        <br>
        <label for="descripcion" class="form-label">Descripcion:</label>
        <input type="text" name="descripcion" class="form-control">
        <br>
        <label for="creditos" class="form-label">Creditos</label>
        <input type="number" name="creditos"class="form-control">
        <br>

        <input type="submit" name="Registrar" value="Registrar" class="btn btn-dark">
        <br>
    </form>
</div>
@endsection
