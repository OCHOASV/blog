@extends('adminlte::page')

@section('title', 'Admin Panel')

@section('content_header')
    <h1>Admin panel</h1>
@stop

@section('content')
    <p>Acá quiero imprimir el rol del usuario</p>
    {{ $user }}
@stop