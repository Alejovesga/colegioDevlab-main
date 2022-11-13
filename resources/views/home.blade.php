@extends('layouts.app')
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Menu</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            bienvenido
                        </div>
                    @endif
                    <button class="btn btn-dark">
                        <a href="/estudiantes" class="a-button">Estudiantes</a>
                    </button>
                    <button class="btn btn-dark">
                        <a href="/cursos" class="a-button">Cursos</a>
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
