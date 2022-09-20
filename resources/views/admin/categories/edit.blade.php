@extends('adminlte::page')

@section('title', 'Admin Panel')

@section('content_header')
    <h1>Editar Categoría <strong>{{ $category->name }}</strong></h1>
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
            {!! Form::model($category, ['route'=>['admin.categories.update', $category], 'method'=>'put']) !!}
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

                {!! Form::submit('Actualizar Categoría', ['class'=>'btn btn-primary btn-md']) !!}

            {!! Form::close() !!}
    	</div>
    </div>
@stop

@section('js')
	<script type="text/javascript" src="{{ asset('vendor/jQuery-Plugin-stringToSlug-1.3/jquery.stringToSlug.min.js') }}"></script>
	<script type="text/javascript">
		$(document).ready( function() {
			$("#name").stringToSlug({
				setEvents: 'keyup keydown blur',
				getPut: '#slug',
				space: '-'
			});
		});
	</script>
@endsection