@extends('adminlte::page')

@section('title', 'Admin Panel')

@section('content_header')
    <a href="{{ route('admin.posts.create') }}" class="btn btn-secondary btn-md float-right">
    	Crear Post
	</a>
    <h1>Listado de Posts de <strong>{{ auth()->user()->name }}</strong></h1>
@stop

@section('content')
	@livewire('admin.posts-index')
@stop