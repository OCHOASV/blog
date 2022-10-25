<div class="form-group">
    {!! Form::label('name', 'Nombre') !!}
    {!! Form::text('name', null, ['class'=>'form-control', 'placeholder'=>'Nombre del Rol']) !!}
    @error('name')
    	<span class="text-danger">{{ $message }}</span>
    @enderror
</div>

<h2 class="h4">Lista de Permisos</h2>

@foreach ($permissions as $permission)
    <div>
        <label class="mr-2">
            {!! Form::checkbox('permissions[]', $permission->id, null) !!}
            <span class="ml-1">{{ $permission->description }}</span>
        </label>
    </div>
@endforeach