{!! Form::hidden('user_id', auth()->user()->id) !!}

<div class="form-group">
    {!! Form::label('name', 'Nombre') !!}
    {!! Form::text('name', null, ['class'=>'form-control', 'placeholder'=>'Nombre del Post', 'autofocus']) !!}
    @error('name')
    	<span class="text-danger">{{ $message }}</span>
    @enderror
</div>

<div class="form-group">
    {!! Form::label('slug', 'Slug') !!}
    {!! Form::text('slug', null, ['class'=>'form-control', 'placeholder'=>'Slug del Post', 'readonly']) !!}
    @error('slug')
    	<span class="text-danger">{{ $message }}</span>
    @enderror
</div>

<div class="form-group">
    {!! Form::label('category_id', 'Categoría') !!}
    {!! Form::select('category_id', $categories, null, ['class'=>'form-control', 'placeholder'=>'Seleccione Categoría']) !!}
    @error('category_id')
        <span class="text-danger">{{ $message }}</span>
    @enderror
</div>

<div class="form-group">
    <p class="font-weight-bold">Etiquetas</p>
    @foreach ($tags as $tag)
        <label class="mr-2">
            {!! Form::checkbox('tags[]', $tag->id, null) !!}
            {{ $tag->name }}
        </label>
    @endforeach
    @error('tags')
        <br>
        <span class="text-danger">{{ $message }}</span>
    @enderror
</div>

<div class="form-group">
    <p class="font-weight-bold">Estado</p>
    <label class="mr-2">
        {!! Form::radio('status', 1, true) !!}
        Borrador
    </label>
    <label class="mr-2">
        {!! Form::radio('status', 2) !!}
        Publicado
    </label>
</div>

<div class="form-group">
    {!! Form::label('extract', 'Resumen') !!}
    {!! Form::textarea('extract', null, ['class'=>'form-control', 'placeholder'=>'Resumen del Post', 'rows' => 5]) !!}
    @error('extract')
        <span class="text-danger">{{ $message }}</span>
    @enderror
</div>

<div class="form-group">
    {!! Form::label('body', 'Post') !!}
    {!! Form::textarea('body', null, ['class'=>'form-control', 'placeholder'=>'Cuerpo del Post', 'rows' => 5]) !!}
    @error('body')
        <span class="text-danger">{{ $message }}</span>
    @enderror
</div>