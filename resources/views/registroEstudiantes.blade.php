@extends('layouts.app')

@section('content')
<div class="container">

@if($errors->any())
<div class="alert alert-danger" role="alert">
    {!! implode('', $errors->all('<h6 class="error">:message</h6>')) !!}
</div>
@endif
    <form action="/RegistroEstudiantes" method="post">
        @csrf
        <label for="nif" class="form-label">Nif:</label>
        <input type="text" name="nif" class="form-control">
        <br>
        <label for="nombres" class="form-label">Nombres:</label>
        <input type="text" name="nombres" class="form-control">
        <br>
        <label for="apellidos" class="form-label">Apellidos:</label>
        <input type="text" name="apellidos" class="form-control">
        <br>
        <input type="submit" value="registrar" class="btn btn-dark">
    </form>
</div>
@endsection
