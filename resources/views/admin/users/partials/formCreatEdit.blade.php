<div class="form-group">
    <p class="font-weight-bold">Roles</p>
    @foreach ($roles as $role)
        <label class="mr-2">
            {!! Form::checkbox('roles[]', $role->id, null) !!}
            {{ $role->name }}
        </label>
    @endforeach
    @error('roles')
        <br>
        <span class="text-danger">{{ $message }}</span>
    @enderror
</div>