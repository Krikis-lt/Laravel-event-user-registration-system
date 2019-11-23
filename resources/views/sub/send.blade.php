@extends('layouts.app')
@section('content')
	<div class="container">
  <div class="row">
    <div class="col">
    </div>
    <div class="col-6" style="background:white;min-height:85vh;">
        <div class="col" style="margin:4%;">
            <br>
            <a href="/reg/home">< Atgal / Back</a>
            <br>
            <h3>Naujienlaiškio žinutė / Newsletter message</h3>
        <div class="col" style="padding-top:4%;">
        	{!! Form::open(['action' => 'SubController@store', 'method' => 'POST']) !!}
            <div class="form-group">
                {{form::label('text', 'Žinutės tekstas / Message Text')}}
                {{Form::textarea('text','', ['id' => 'summary-ckeditor', 'class' => 'form-control', 'placeholder' => 'Tekstas / Text'])}}
            </div>
            {{Form::submit('Siųsti / Send', ['class'=>'btn btn-primary'])}}
            {!! Form::close() !!}
        </div>
        <br>
    </div>
    </div>
    <div class="col">
    </div>
  </div>
</div>
@endsection