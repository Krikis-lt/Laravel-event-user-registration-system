@extends('layouts.app')

@section('content')
@if (Auth::user()->name == 'Krikis')
<div class="container" style="background:white">
  <div class="row" style="margin:2%;">
<div class="col">
</div>
<div style="text-align:Center;"><img src="http://vsta.lt/Styles/logo.png"/></div>
<div style="" class="col-6">
    <br>
    <a href="{{ URL::previous() }}"> < Atgal / Back</a>
    <br>
	<h1>Sukurti komandinį renginį</h1>

	{!! Form::open(['action' => 'TEventController@store', 'method' => 'POST']) !!}
    	<div class="form-group">
    		{{form::label('ename', 'Pavadinimas/Name')}}
    		{{Form::text('ename','', ['class' => 'form-control', 'placeholder' => 'Name'])}}
    	</div>
    	<div class="form-group">
    		{{form::label('edesc', 'Aprašymas/Desc')}}
    		{{Form::textarea('edesc','', ['id' => 'summary-ckeditor','class' => 'form-control', 'placeholder' => 'Description'])}}
    	</div>
        <div class="form-group">
            <label for="edate">Renginio data/Event date</label>
            <input required type="date" class="form-control" type="edate" placeholder="Renginio data/Event date" id="edate" name="edate">
        </div>
        <div class="form-group">
         <label>Kain/Price</label>
          <input required type="charged" class="form-control" type="charged" placeholder="Palikti tuščia jeigu nemokamas/Empty if for free" id="charged" name="charged">
        </div>
    	<div class="form-group">
    		{{form::label('egroup1', 'Grupė 1/Group 1')}}
    		{{Form::text('egroup1','', ['class' => 'form-control', 'placeholder' => 'Grupe 1'])}}
    	</div>
    	<div class="form-group">
    		{{form::label('egroup2', 'Grupė 2/Group 2')}}
    		{{Form::text('egroup2','', ['class' => 'form-control', 'placeholder' => 'Grupe 2'])}}
    	</div>
    	<div class="form-group">
    		{{form::label('egroup3', 'Grupė 3/Group 3')}}
    		{{Form::text('egroup3','', ['class' => 'form-control', 'placeholder' => 'Grupe 3'])}}
    	</div>
    	<div class="form-group">
    		{{form::label('egroup4', 'Grupė 4/Group 4')}}
    		{{Form::text('egroup4','', ['class' => 'form-control', 'placeholder' => 'Grupe 4'])}}
    	</div>
    	<div class="form-group">
    		{{form::label('egroup5', 'Grupė 5/Group 5')}}
    		{{Form::text('egroup5','', ['class' => 'form-control', 'placeholder' => 'Grupe 5'])}}
    	</div>
    	<div class="form-group">
    		{{form::label('egroup6', 'Grupė 6/Group 6')}}
    		{{Form::text('egroup6','', ['class' => 'form-control', 'placeholder' => 'Grupe 6'])}}
    	</div>
    	<div class="form-group">
    		{{form::label('egroup7', 'Grupė 7/Group 7')}}
    		{{Form::text('egroup7','', ['class' => 'form-control', 'placeholder' => 'Grupe 7'])}}
    	</div>
    	<div class="form-group">
    		{{form::label('playerNo', 'Leisti žaidėjų (maks. 6)/Allow players (max 6)')}}
    		{{Form::number('playerNo','', ['class' => 'form-control','min'=>1,'max'=>6, 'placeholder' => 'Leisti žaidėjų'])}}
    	</div>
    	{{Form::submit('Sukurti/Create', ['class'=>'btn btn-primary'])}}
{!! Form::close() !!}
</div>
<div class="col">
</div>
</div>
</div>
@endif
@endsection