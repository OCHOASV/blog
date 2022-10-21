<div>
    {{-- @if (session('info'))
		<div class="alert alert-danger alert-dismissible fade show" role="alert">
			<strong>{{ session('info') }}</strong>
			<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
		</div>
	@endif --}}
	<div class="card">
		<div class="card-header">
			{{-- Con wire:model="search" sincronizo este input con la variable $search del controlador Users de Livewire y si imprimo {{ $search }} aparece lo que escribo en el input automaticamente --}}
			<input type="text" class="form-control" placeholder="Nombre o Email del Usuario" wire:model="search">
		</div>
		@if ($users->count())
			<div class="card-body">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>ID</th>
							<th>Nombre</th>
							<th>Email</th>
							<th colspan="2" class="text-center">Acciones</th>
						</tr>
					</thead>
					<tbody>
						@foreach($users as $user)
							<tr>
								<td>{{ $user->id }}</td>
								<td>{{ $user->name }}</td>
								<td>{{ $user->email }}</td>
								<td width="10px">
									<a href="{{ route('admin.users.edit', $user) }}" class="btn btn-primary btn-sm">
										Editar
									</a>
								</td>
							</tr>
						@endforeach
					</tbody>
				</table>
			</div>
			<div class="card-footer">
				{{ $users->links() }}
			</div>
		@else
			<div class="card-body">
				<strong>No Data Users</strong>
			</div>
		@endif
	</div>
</div>