@extends('adminlte::page')

@section('title', 'Admin Panel')

@section('content_header')
    <h1>Editar Etiqueta <strong>{{ $tag->name }}</strong></h1>
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
            {!! Form::model($tag, ['route'=>['admin.tags.update', $tag], 'method'=>'put']) !!}
                {{-- Llamamos a nuestra Vista --}}
                @include('admin.tags.partials.formEdit')

                {!! Form::submit('Actualizar Etiqueta', ['class'=>'btn btn-primary btn-md']) !!}

            {!! Form::close() !!}
    	</div>
    </div>
@stop

@section('js')
	{{-- Llamamos a nuestro archivo de js --}}
    @include('admin.jsHelpers')
@endsection