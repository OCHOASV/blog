@extends('adminlte::page')

@section('title', 'Admin Panel')

@section('content_header')
    <h1>Crear Categoría</h1>
@stop

@section('content')
	@if (session('info'))
		<div class="alert alert-success alert-dismissible fade show" role="alert">
			<strong>{{ session('info') }}</strong>
			<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
		</div>
	@endif
    <div class="card">
    	<div class="card-body">
            {!! Form::open(['route'=>'admin.categories.store']) !!}
                <div class="form-group">
                    {!! Form::label('name', 'Nombre') !!}
                    {!! Form::text('name', null, ['class'=>'form-control', 'placeholder'=>'Nombre de la Categoría']) !!}
                    @error('name')
                    	<span class="text-danger">{{ $message }}</span>
                    @enderror
                </div>
                <div class="form-group">
                    {!! Form::label('slug', 'Slug') !!}
                    {!! Form::text('slug', null, ['class'=>'form-control', 'placeholder'=>'Slug de la Categoría', 'readonly']) !!}
                    @error('slug')
                    	<span class="text-danger">{{ $message }}</span>
                    @enderror
                </div>

                {!! Form::submit('Crear Categoría', ['class'=>'btn btn-primary btn-md']) !!}

            {!! Form::close() !!}
    	</div>
    </div>
@stop

@section('js')
	{{-- Llamamos a nuestro archivo de js --}}
    @include('admin.jsHelpers')
@endsection