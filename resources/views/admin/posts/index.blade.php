@extends('adminlte::page')

@section('title', 'Admin Panel')

@section('content_header')
    <h1>Posts</h1>
@stop

@section('content')
	@livewire('admin.posts-index')
@stop