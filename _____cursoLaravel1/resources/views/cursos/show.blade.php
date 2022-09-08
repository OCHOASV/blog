@extends('layouts.plantilla')

@section('title', 'Curso de ' . $curso->name)

@section('content')
	<h1>Curso de: <i>{{ $curso->name }}</i></h1>
	<p><strong>Categoria: </strong>{{ $curso->categoria }}</p>
	<p><strong>Descripción: </strong>{{ $curso->descripcion }}</p>
	<a href="{{ route('cursos.index') }}">Todos los Cursos</a>
	<a href="{{ route('cursos.edit' , $curso) }}">Editar Curso</a>
	<br>
	<br>
	<br>
	<br>
	<br>
	<form action="{{ route('cursos.destroy' , $curso) }}" method="POST">
		@csrf
		@method('delete')
		<button type="submit"> Eliminar Curso</button>
	</form>
@endsection