@extends('adminlte::page')

@section('title', 'Admin Panel')

@section('content_header')
    <h1>Etiquetas</h1>
@stop

@section('content')
	@if (session('info'))
		<div class="alert alert-danger alert-dismissible fade show" role="alert">
			<strong>{{ session('info') }}</strong>
			<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
		</div>
	@endif
	<div class="card">
		<div class="card-header">
			<a href="{{ route('admin.tags.create') }}" class="btn btn-secondary btn-md">
				Agregar Etiqueta
			</a>
		</div>
		<div class="card-body">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>ID</th>
						<th>Nombre</th>
						<th>Color</th>
						<th colspan="2">Acciones</th>
					</tr>
				</thead>
				<tbody>
					@foreach($tags as $tag)
						<tr>
							<td>{{ $tag->id }}</td>
							<td>{{ $tag->name }}</td>
							<td><span class="p-1 bg-{{ $tag->color }} mr-2">&nbsp;&nbsp;&nbsp;</span>{{ $tag->color }}</td>
							<td width="10px">
								<a href="{{ route('admin.tags.edit', $tag) }}" class="btn btn-primary btn-sm">
									Editar
								</a>
							</td>
							<td width="10px">
								<form action="{{ route('admin.tags.destroy', $tag) }}" method="POST">
									@csrf
									@method('delete')

									<button type="submit" class="btn btn-danger btn-sm">
										Eliminar
									</button>
								</form>
							</td>
						</tr>
					@endforeach
				</tbody>
			</table>
		</div>
	</div>
@stop