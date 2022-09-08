@extends('layouts.plantilla')

@section('title', 'Editar curso: '. $curso->name)

@section('content')
	<h1>Editar {{ $curso->name }}, ID => {{ $curso->id }}</h1>
	<form action="{{ route('cursos.update', $curso) }}" method="POST">
		@csrf
		@method('put')
		<label for="">
			Nombre:
			<br>
			<input type="text" name="name" value="{{ old('name', $curso->name) }}">
			<input type="hidden" name="slug" value="{{ $curso->slug }}">
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
			<textarea name="descripcion" id="" rows="10">{{ old('descripcion', $curso->descripcion) }}</textarea>
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
			<input type="text" name="categoria" value="{{ old('categoria', $curso->categoria) }}">
		</label>
		@error('categoria')
			<br>
				<small>* {{ $message }}</small>
			<br>
		@enderror
		<br>
		<br>
		<button type="submit">Actualizar</button>
	</form>
@endsection