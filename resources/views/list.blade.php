@extends('layouts.app')
@section('content')
<div style="background:white;padding-top:2%;padding-bottom:2%;min-height:85vh;">
  <div style="margin:2%;">
	<h3>Registruoti dalyviai į</h3>
    <h5 style="float:right;"><a href="http://www.vsta.lt">Grįžti į www.VSTA.lt ></a></h5>
    <h1>{{$list->ename}}</h1>
    <hr>
@if(count($players) > 0)
<table class="table">
  @if(Auth::user())
  <a href="{{ url('/') }}"> < Atgal / Back</a>
  <thead>
    <tr>
      <th scope="col">Vardas/Name</th>
      <th scope="col">Pavardė/Surname</th>
      <th scope="col">Gimimo d./Birthday</th>
      <th scope="col">Miestas/City</th>
      <th scope="col">Šalis/Country</th>
      <th scope="col">Reit./Rate</th>
      <th scope="col">Tel./Phone</th>
      <th scope="col">El.Paštas/E-mail</th>
      <th scope="col">Pren./Subs.</th>
      <th scope="col">Grupė/Group</th>
      <th scope="col"></th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
    @foreach($players as $player)
      <tr>
         <td>{{$player->name}}</td>
           <td>{{$player->surname}}</td>
           <td>{{$player->birthday}}</td>
           <td>{{$player->city}}</td>
           <td>{{$player->country}}</td>
           <td>{{$player->rating}}</td>
           <td>{{$player->tel}}</td>
           <td>{{$player->email}}</td>
           <td>{{$player->subscribe}}</td>
           <td>{{$player->group}}</td>
           <td>
           		<div style="float:right;">
           			<td>
		                <button type="button" class="btn btn-primary btn-xs" data-myname="{{$player->name}}" data-mysurname="{{$player->surname}}" data-mybirthday="{{$player->birthday}}" data-mycity="{{$player->city}}" data-mycountry="{{$player->country}}" data-myrate="{{$player->rating}}" data-myphone="{{$player->tel}}" data-myemail="{{$player->email}}" data-myplayid="{{$player->id}}" data-toggle="modal" data-target="#exampleModal">
						  ✎
						</button>
		 				 {!! Form::open(['method'=>'DELETE', 'route'=>['list.destroy',$player->id]]) !!}
		                    <button data-toggle="tooltip" data-placement="top" title="Delete" type="submit" class="btn btn-danger btn-xs" onclick="return confirm('Ar tkrai norite ištrinti? / Are you sure you want to delete?');">&nbsp;X</button>
		                {!! Form::close() !!}
		            </td>
				</div>
           </td>
         </tr>
      @endforeach
    </tbody>
    @else
    <thead>
      <tr>
        <th scope="col">Vardas/Name</th>
        <th scope="col">Pavardė/Surname</th>
        <th scope="col">Miestas/City</th>
      </tr>
  </thead>
  <tbody style="font-size:18px;">
    @foreach($players as $player)
      <tr>
       <td>{{$player->name}}</td>
       <td>{{$player->surname}}</td>
       <td>{{$player->city}}</td>
      </tr>
    @endforeach
  </tbody>
  @endif
</table>
<small><b>Iš viso užsiregistravo/Total registered: {{count($players)}}</b></small>
@if(Auth::user())
<div style="float:right;">
{!! Form::open(['action' => 'ListController@store', 'method' => 'POST']) !!}
        <div style="display:none;">
            <select class="form-control" name="event_id">
              <option value="{{$list->id}}">{{$list->id}}</option>
            </select>
        </div>
        {{Form::submit('Eksportuoti CSV', ['class'=>'btn btn-primary'])}}
{!! Form::close() !!}
</div>
@endif
  @else
     <p>Nėra registruotų žaidėjų</p>
  @endif
</div>
</div>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Redaguoti / Edit</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form action="{{route('players.update','test')}}" method="post">
      		{{method_field('patch')}}
      		{{csrf_field()}}
	      <div class="modal-body">
			<div class="container">
			  <div class="row">
			    <div class="col-sm-3">
			      <div class="form-group">
				        	<label for="title">Vardas/Name</label>
				        	<input type="text" class="form-control" name="name" id="name">
				        	<input type="hidden" name="myplayid" id="myplayid" value="">
				        </div>
				        <div class="form-group">
				        	<label for="title">Pavardė/Surname</label>
				        	<input type="text" class="form-control" name="surname" id="surname">
				        </div>
				        <div class="form-group">
				        	<label for="title">Gim. data/Birthday</label>
				        	<input type="text" class="form-control" name="birthday" id="birthday">
				        </div>
				        <div class="form-group">
				        	<label for="title">Miestas/City</label>
				        	<input type="text" class="form-control" name="city" id="city">
				        </div>
			    </div>
			    <div class="col-sm-3">
			      <div class="form-group">
				        	<label for="title">Šalis/Country</label>
				        	<input type="text" class="form-control" name="country" id="country">
				        </div>
				        <div class="form-group">
				        	<label for="title">Reit./Rate</label>
				        	<input type="text" class="form-control" name="rating" id="rating">
				        </div>
				        <div class="form-group">
				        	<label for="title">Tel./Phone</label>
				        	<input type="text" class="form-control" name="tel" id="tel">
				        </div>
				        <div class="form-group">
				        	<label for="title">El.Paštas/E-mail</label>
				        	<input type="text" class="form-control" name="email" id="email">
				        </div>
			    </div>
			  </div>
			</div>

	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">x</button>
	        <button type="submit" class="btn btn-primary">✓</button>
	      </div>
  	  </form>
    </div>
  </div>
</div>
@endsection