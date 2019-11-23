@extends('layouts.app')

@section('content')
<div class="container" style="background:white">
  <div class="row" style="margin:2%;">
<div class="col">
</div>
<div style="text-align:Center;"><img src="http://vsta.lt/Styles/logo.png"/></div>
<div style="" class="col-6">
  <h4 style="float:right">Renginio data/Event date: <b>{{$event->edate}}</b></h4>
  @if($event->edate < date('Y-m-d'))
      <h2>Registracija baigesi</h2>
    @else
	<h3>Registracija į</h3>
    <h1>{{$event->ename}}</h1>
    <Br>
    <h4>{!!$event->edesc!!}</h4>
    <br>
    {!! Form::open(['action' => 'PlayersController@store', 'method' => 'POST']) !!}
        <div style="display:none;">
            <select class="form-control" name="event_id">
              <option value="{{$event->id}}">{{$event->id}}</option>
            </select>
            <select class="form-control" name="edate">
              <option value="{{$event->edate}}">{{$event->edate}}</option>
            </select>
        </div>
        <div class="form-group">
            {{form::label('name', 'Vardas/Name*')}}
            {{Form::text('name','', ['class' => 'form-control', 'placeholder' => 'Vardas/Name'])}}
        </div>
        <div class="form-group">
            {{form::label('surname', 'Pavardė/Surname*')}}
            {{Form::text('surname','', ['class' => 'form-control', 'placeholder' => 'Pavardė/Surname'])}}
        </div>
		<div class="form-group">
		<label for="birthday">Gimimo data/Birthday* </label>
		<input class="form-control" required type="text" name="birthday" value="10/24/1984" />
		<script>
			(function($) {
			$(function() {
			  $('input[name="birthday"]').daterangepicker({
			    singleDatePicker: true,
			    showDropdowns: true,
			    minYear: 1901,
			    maxYear: parseInt(moment().format('YYYY'),10)
			  }, function(start, end, label) {
			    var years = moment().diff(start, 'years');
			  });
			});
			})(jQuery);
		</script>
		</div>
        <div class="form-group">
            {{form::label('city', 'Miestas/City*')}}
            {{Form::text('city','', ['class' => 'form-control', 'placeholder' => 'Miestas/City'])}}
        </div>
        <div class="form-group">
            {{form::label('country', 'Šalis/Country*')}}
            {{Form::text('country','', ['class' => 'form-control', 'placeholder' => 'Šalis/Country'])}}
        </div>
        <div class="form-group">
            {{form::label('rating', 'Reitingas/Rate')}}
            {{Form::text('rating','', ['class' => 'form-control', 'placeholder' => 'Reitingas/Rate'])}}
        </div>
        <div class="form-group">
            {{form::label('tel', 'Telefonas/Phone* (arba Jūsų trenerio Nr./or Your trainer No.)')}}
            {{Form::text('tel','', ['class' => 'form-control', 'placeholder' => 'Telefonas/Phone'])}}
        </div>
        <div class="form-group">
            {{form::label('email', 'El. Paštas/E-mail')}}
            {{Form::email('email','', ['class' => 'form-control', 'placeholder' => 'El. Paštas/E-mail'])}}
        </div>
        <label>Grupė</label>
        <select class="form-control" name="group">
          <option value="{{$event->egroup1}}">{{$event->egroup1}}</option>
          @if(!empty($event->egroup2)){
          <option value="{{$event->egroup2}}">{{$event->egroup2}}</option>
          } @endif
          @if(!empty($event->egroup3)){
          <option value="{{$event->egroup3}}">{{$event->egroup3}}</option>
          } @endif
          @if(!empty($event->egroup4)){
          <option value="{{$event->egroup4}}">{{$event->egroup4}}</option>
          } @endif
          @if(!empty($event->egroup5)){
          <option value="{{$event->egroup5}}">{{$event->egroup5}}</option>
          } @endif
          @if(!empty($event->egroup6)){
          <option value="{{$event->egroup6}}">{{$event->egroup6}}</option>
          } @endif
          @if(!empty($event->egroup7)){
          <option value="{{$event->egroup7}}">{{$event->egroup7}}</option>
          } @endif
          @if(!empty($event->egroup7)){
          <option value="{{$event->egroup8}}">{{$event->egroup8}}</option>
          } @endif
        </select>
        <br> 
        <label>Ar sutinkate gauti svarbią informaciją apie vyksiančius VSTA turnyrus ir renginius? / Do you agree to receive important information about VSTA tournaments and events?</label>
        <br>
        <small>(Jeigu nebenorite gauti naujienlaiškių, prašome susisiekti: info@vsta.lt / if you don't want to get newsletters anymore, please contact: info@vsta.lt)</small>
        <br>
        <input type="checkbox" value="1" checked id="subscribe" name="subscribe">
    <label for="subscribe">Sutinku / Agree</label>
	<br>
	<label>Registruojantis sutinku, jog renginio nuotraukos ir vaizdo medžiaga būtų viešinamos / With registration I agree that the photo and video material of the event will be published</label>
	<br>
	<input type="checkbox" value="1" required id="subscribe" name="subscribe">
	<label for="subscribe">Sutinku / Agree</label>
	<br>

        {{Form::submit('Registruotis', ['class'=>'btn btn-primary'])}}
      {!! Form::close() !!}
    @endif
</div>
<div class="col">
</div>
</div>
</div>
@endsection
