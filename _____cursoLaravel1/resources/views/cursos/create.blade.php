@extends('layouts.plantilla')

@section('title', 'Crear Curso')

@section('content')
	<h1>Form Cursos Web</h1>
	<form action="{{ route('cursos.store') }}" method="POST">
		@csrf
		<label for="">
			Nombre:
			<br>
			<input type="text" name="name" value="{{ old('name') }}">
			<input type="hidden" name="slug" value="{{ old('slug') }}">
		</label>
		@error('name')
			<br>
				<small>* {{ $message }}</small>
			<br>
		@enderror
		<br>
		<label for="">
			Descripción:
			<br>
			<textarea name="descripcion" id="" rows="10">{{ old('descripcion') }}</textarea>
		</label>
		@error('descripcion')
			<br>
				<small>* {{ $message }}</small>
			<br>
		@enderror
		<br>
		<label for="">
			Categoría:
			<br>
			<input type="text" name="categoria" value="{{ old('categoria') }}">
		</label>
		@error('categoria')
			<br>
				<small>* {{ $message }}</small>
			<br>
		@enderror
		<br>
		<br>
		<button type="submit">Enviar</button>
	</form>
@endsection