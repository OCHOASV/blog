@extends('adminlte::page')

@section('title', 'Admin Panel')

@section('content_header')
    <h1>Admin panel</h1>
@stop

@section('content')
	<div class="card">
    	<div class="card-body">
			<div class="form-group">
			    <p>Roles del Usuario</p>
			    @foreach ($roles as $role)
			        <label class="mr-2">
			            {{ $role->name }}
			        </label>
			    @endforeach
			    @error('roles')
			        <br>
			        <span class="text-danger">{{ $message }}</span>
			    @enderror
			</div>
		</div>
	</div>
@stop