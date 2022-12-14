@extends('adminlte::page')

@section('title', 'Admin Panel')

@section('content_header')
    <h1>Crear Post</h1>
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
            {!! Form::open(['route'=>'admin.posts.store', 'files' => true]) !!}
                {{-- Llamamos a nuestra Vista --}}
                @include('admin.posts.partials.formCreatEdit')

                {!! Form::submit('Crear Post', ['class'=>'btn btn-primary btn-md']) !!}

            {!! Form::close() !!}
    	</div>
    </div>
@stop

@section('css')
    <style>
        .imgCreatePost{
            position: relative;
            padding-bottom: 50%;
        }

        .imgCreatePost img{
            position: absolute;
            object-fit: cover;
            width: 100%;
            height: 100%;
        }
    </style>
@stop

@section('js')
	{{-- Llamamos a nuestro archivo de js --}}
    @include('admin.jsHelpers')
@endsection