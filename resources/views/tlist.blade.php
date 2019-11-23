@extends('layouts.app')
@section('content')
<div style="background:white;padding-top:2%;padding-bottom:2%;min-height:85vh;">
  <div style="margin:2%;">
	<h3>Registruotos komandos į</h3>
    <h5 style="float:right;"><a href="http://www.vsta.lt">Grįžti į www.VSTA.lt ></a></h5>
    <h1>{{$tlist->ename}}</h1>
    <hr>
@if(count($players) > 0)
<table class="table" style="background:white;font-size:14px;">
  @if(Auth::user())
  <a href="{{ url('/') }}"> < Atgal / Back</a>
  <thead style="font-size:10px;">
    <tr>
      <th scope="col">Komandos pav.</th>
      <th scope="col">Klubo pav.</th>
      <th scope="col">Vardas</th>
      <th scope="col">Pavardė</th>
      <th scope="col">Gimimo d.</th>
      <th scope="col">Vardas 2</th>
      <th scope="col">Pavardė 2</th>
      <th scope="col">Gimimo d. 2</th>
      <th scope="col">Vardas 3</th>
      <th scope="col">Pavardė 3</th>
      <th scope="col">Gimimo d. 3</th>
      <th scope="col">Vardas 4</th>
      <th scope="col">Pavardė 4</th>
      <th scope="col">Gimimo d. 4</th>
      <th scope="col">Vardas 5</th>
      <th scope="col">Pavardė 5</th>
      <th scope="col">Gimimo d. 5</th>
      <th scope="col">Vardas 6</th>
      <th scope="col">Pavardė 6</th>
      <th scope="col">Gimimo d. 6</th>
      <th scope="col">Atsaking.</th>
      <th scope="col">Miestas</th>
      <th scope="col">Šalis</th>
      <th scope="col">Tel.</th>
      <th scope="col">El.Paštas</th>
      <th scope="col">Ar gali pravesti?</th>
      <th scope="col">Salės adresas</th>
    </tr>
  </thead>
  <tbody>
    @foreach($players as $player)
      <tr>
         <td>{{$player->tname}}</td>
         <td>{{$player->tclubname}}</td>
           <td>{{$player->name}}</td>
           <td>{{$player->surname}}</td>
           <td>{{$player->birthday}}</td>
            <td>{{$player->name2}}</td>
           <td>{{$player->surname2}}</td>
           <td>{{$player->birthday2}}</td>
            <td>{{$player->name3}}</td>
           <td>{{$player->surname3}}</td>
           <td>{{$player->birthday3}}</td>
            <td>{{$player->name4}}</td>
           <td>{{$player->surname4}}</td>
           <td>{{$player->birthday4}}</td>
           <td>{{$player->name5}}</td>
           <td>{{$player->surname5}}</td>
           <td>{{$player->birthday5}}</td>
           <td>{{$player->name6}}</td>
           <td>{{$player->surname6}}</td>
           <td>{{$player->birthday6}}</td>
           <td>{{$player->responsive}}</td>
           <td>{{$player->city}}</td>
           <td>{{$player->country}}</td>
           <td>{{$player->tel}}</td>
           <td>{{$player->email}}</td>
           <td>{{$player->argali}}</td>
           <td>{{$player->sporthall}}</td>
           <td>
           		<div style="float:right;">
           			<td>
		                <button type="button" class="btn btn-primary btn-xs" data-myname="{{$player->name}}" data-mysurname="{{$player->surname}}" data-mybirthday="{{$player->birthday}}" data-mycity="{{$player->city}}" data-mycountry="{{$player->country}}" data-myname2="{{$player->name2}}" data-mysurname2="{{$player->surname2}}" data-mybirthday2="{{$player->birthday2}}" data-myname3="{{$player->name3}}" data-mysurname3="{{$player->surname3}}" data-mybirthday3="{{$player->birthday3}}" data-myname4="{{$player->name4}}" data-mysurname4="{{$player->surname4}}" data-mybirthday4="{{$player->birthday4}}" data-myname5="{{$player->name5}}" data-mysurname5="{{$player->surname5}}" data-mybirthday5="{{$player->birthday5}}" data-myname6="{{$player->name6}}" data-mysurname6="{{$player->surname6}}" data-mybirthday6="{{$player->birthday6}}" data-myresponsive="{{$player->responsive}}" data-myphone="{{$player->tel}}" data-myemail="{{$player->email}}" data-myplayid="{{$player->id}}" data-mytname="{{$player->tname}}" data-myargali="{{$player->argali}}" data-mysporthall="{{$player->sporthall}}" data-toggle="modal" data-target="#exampleModal">
						  ✎
						</button>
		 				 {!! Form::open(['method'=>'DELETE', 'route'=>['tlist.destroy',$player->id]]) !!}
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
        <th scope="col">Komandos pav/Team name</th>
        <th scope="col">Klubo pavadinimas/Club name</th>
        <th scope="col">Miestas/City</th>
        <th scope="col">Žaidėjai/Players</th>
        <th></th>
        <th></th>
        <th></th>
        <th></th>
        <th></th>
      </tr>
  </thead>
  <tbody style="font-size:18px;">
    @foreach($players as $player)
      <tr>
        <td>{{$player->tname}}</td>
        <td>{{$player->tclubname}}</td>
       <td>{{$player->city}}</td>
       <td>{{$player->name[0]}}.{{$player->surname}}</td>
       <td>{{$player->name2[0]}}.{{$player->surname2}}</td>
       <td>{{$player->name3[0]}}.{{$player->surname3}}</td>
       <td>{{$player->name4[0]}}.{{$player->surname4}}</td>
       <td>{{$player->name5[0]}}.{{$player->surname5}}</td>
       <td>{{$player->name6[0]}}.{{$player->surname6}}</td>
      </tr>
    @endforeach
  </tbody>
  @endif
</table>
<hr>
<small><b>Iš viso užsiregistravo/Total registered: {{count($players)}}</b></small>
@if(Auth::user())
<div >
{!! Form::open(['action' => 'TListController@store', 'method' => 'POST']) !!}
        <div style="display:none;">
            <select class="form-control" name="tevent_id">
              <option value="{{$tlist->id}}">{{$tlist->id}}</option>
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
      <form action="{{route('tplayer.update','test')}}" method="post">
      		{{method_field('patch')}}
      		{{csrf_field()}}
	      <div class="modal-body">
			<div class="container">
			  <div class="row">
			    <div class="col-sm-2">
            <div class="form-group">
                  <label for="title">Komandos pav./Team Name</label>
                  <input type="text" class="form-control" name="tname" id="tname">
                </div>
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
                  <label for="title">Vardas2/Name2</label>
                  <input type="text" class="form-control" name="name2" id="name2">
                </div>
                <div class="form-group">
                  <label for="title">Pavardė2/Surname2</label>
                  <input type="text" class="form-control" name="surname2" id="surname2">
                </div>
			    </div>
			    <div class="col-sm-2">
			       
                <div class="form-group">
                  <label for="title">Gim. data2/Birthday2</label>
                  <input type="text" class="form-control" name="birthday2" id="birthday2">
                </div>
                <div class="form-group">
                  <label for="title">Vardas3/Name3</label>
                  <input type="text" class="form-control" name="name3" id="name3">
                </div>
                <div class="form-group">
                  <label for="title">Pavardė3/Surname3</label>
                  <input type="text" class="form-control" name="surname3" id="surname3">
                </div>
                <div class="form-group">
                  <label for="title">Gim. data3/Birthday3</label>
                  <input type="text" class="form-control" name="birthday3" id="birthday3">
                </div>
				        <div class="form-group">
				        	<label for="title">El.Paštas/E-mail</label>
				        	<input type="text" class="form-control" name="email" id="email">
				        </div>
                <div class="form-group">
                  <label for="title">Vardas4/Name4</label>
                  <input type="text" class="form-control" name="name4" id="name4">
                </div>
			    </div>
          <div class="col-sm-2">
                <div class="form-group">
                  <label for="title">Pavardė4/Surname4</label>
                  <input type="text" class="form-control" name="surname4" id="surname4">
                </div>
                <div class="form-group">
                  <label for="title">Gim. data4/Birthday4</label>
                  <input type="text" class="form-control" name="birthday4" id="birthday4">
                </div>
                <div class="form-group">
                  <label for="title">Vardas5/Name5</label>
                  <input type="text" class="form-control" name="name5" id="name5">
                </div>
                <div class="form-group">
                  <label for="title">Pavardė5/Surname5</label>
                  <input type="text" class="form-control" name="surname5" id="surname5">
                </div>
                <div class="form-group">
                  <label for="title">Gim. data5/Birthday5</label>
                  <input type="text" class="form-control" name="birthday5" id="birthday5">
                </div>
                <div class="form-group">
                  <label for="title">Vardas6/Name6</label>
                  <input type="text" class="form-control" name="name6" id="name6">
                </div> 
          </div>
          <div class="col-sm-2">
            <div class="form-group">
              <div class="form-group">
                  <label for="title">Pavardė6/Surname6</label>
                  <input type="text" class="form-control" name="surname6" id="surname6">
                </div>
                <div class="form-group">
                  <label for="title">Gim. data6/Birthday6</label>
                  <input type="text" class="form-control" name="birthday6" id="birthday6">
                </div>  
                  <label for="title">Atsakingas/Responsive</label>
                  <input type="text" class="form-control" name="responsive" id="responsive">
                </div>
                <div class="form-group">
                  <label for="title">Miestas/City</label>
                  <input type="text" class="form-control" name="city" id="city">
                </div>
                <div class="form-group">
                  <label for="title">El.Paštas/E-mail</label>
                  <input type="text" class="form-control" name="email" id="email">
                </div>
                <div class="form-group">
                  <label for="title">Ar gali pravest?</label>
                  <input type="text" class="form-control" name="argali" id="argali">
                </div>
                <div class="form-group">
                  <label for="title">Salės adresas</label>
                  <input type="text" class="form-control" name="sporthall" id="sporthall">
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