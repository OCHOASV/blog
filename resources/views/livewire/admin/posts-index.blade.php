<div>
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
			{{-- Con wire:model="search" sincronizo este input con la variable $search del controlador Post de Livewire y si imprimo {{ $search }} aparece lo que escribo en el input automaticamente --}}
			<input type="text" class="form-control" placeholder="Nombre del Post" wire:model="search">
		</div>
		@if ($posts->count())
			<div class="card-body">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>ID</th>
							<th>Nombre</th>
							<th>Status</th>
							<th colspan="2" class="text-center">Acciones</th>
						</tr>
					</thead>
					<tbody>
						@foreach($posts as $post)
							<tr>
								<td>{{ $post->id }}</td>
								<td>{{ $post->name }}</td>
								<td>
									@if ($post->status == 2)
										Publicado
									@else
										Borrador
									@endif
								</td>
								<td width="10px">
									<a href="{{ route('admin.posts.edit', $post) }}" class="btn btn-primary btn-sm">
										Editar
									</a>
								</td>
								<td width="10px">
									<form action="{{ route('admin.posts.destroy', $post) }}" method="POST">
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
			<div class="card-footer">
				{{ $posts->links() }}
			</div>
		@else
			<div class="card-body">
				<strong>No Data Posts</strong>
			</div>
		@endif
	</div>
</div>
