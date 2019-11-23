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
            <h3>Prenumeratoriai / Subscribers</h3>
        <div class="col" style="padding-top:4%;">
            <table class="table">
              <thead>
                <tr>
                  <th scope="col">Vardas / Name</th>
                  <th scope="col">Pavardė / Lastname</th>
                  <th scope="col">Gimimo data / Birthday</th>
                  <th scope="col">El. Paštas / E-mail</th>
                  <th></th>
                </tr>
              </thead>
              <tbody>
                @foreach($subscribers as $sub)
                <tr>
                  <td>{{$sub->name}}</td>
                  <td>{{$sub->surname}}</td>
                  <td>{{$sub->birthday}}</td>
                  <td>{{$sub->email}}</td>
                  <td class="spin">
                      {!! Form::open(['action' => ['SubController@destroy', $sub->id], 'method' => 'POST', 'onsubmit' => 'return confirm("Ištrinti / Delete ?")']) !!}
                        {{Form::hidden('_method','DELETE')}}
                        {{Form::submit('x')}}
                      {!! Form::close() !!}
                  </td>
                </tr>
                @endforeach
              </tbody>
            </table>
        </div>
        <br>
    </div>
    </div>
    <div class="col">
    </div>
  </div>
</div>
@endsection