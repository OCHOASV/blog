@extends('adminlte::page')

@section('title', 'Admin Panel')

@section('content_header')
    <h1>Editar Post: <strong>{{ $post->name }}</strong></h1>
@stop

{{-- @section('content')
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
            {!! Form::model($post, ['route'=>['admin.posts.update', $post], 'method'=>'put']) !!}
                {{-- Llamamos a nuestra Vista
                @include('admin.posts.partials.formCreatEdit')

                {!! Form::submit('Actualizar Post', ['class'=>'btn btn-primary btn-md']) !!}

            {!! Form::close() !!}
    	</div>
    </div>
@stop --}}

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