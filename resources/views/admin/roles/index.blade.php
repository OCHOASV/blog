@extends('adminlte::page')

@section('title', 'Admin Panel')

@section('content_header')
    <h1>Listado de Roles</h1>
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
			<a href="{{ route('admin.roles.create') }}" class="btn btn-secondary btn-md">
				Agregar Rol
			</a>
		</div>
		<div class="card-body">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>ID</th>
						<th>Nombre</th>
						<th colspan="2">Acciones</th>
					</tr>
				</thead>
				<tbody>
					@foreach($roles as $role)
						<tr>
							<td>{{ $role->id }}</td>
							<td>{{ $role->name }}</td>
							<td width="10px">
								<a href="{{ route('admin.roles.edit', $role) }}" class="btn btn-primary btn-sm">
									Editar
								</a>
							</td>
							<td width="10px">
								<form action="{{ route('admin.roles.destroy', $role) }}" method="POST">
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