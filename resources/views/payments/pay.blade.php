@extends('layouts.app')
@section('content')
<div style="background:white;padding-top:2%;padding-bottom:2%;min-height:85vh;">
  <div style="margin:2%;">
  <h3>Mokėjimai / Payments</h3>
    <h5 style="float:right;"><a href="http://www.vsta.lt">Grįžti į www.VSTA.lt ></a></h5>
    <hr>
@if(count($pay) > 0)
<table class="table" style="background:white;font-size:12px;">
  @if(Auth::user())
  <a href="{{ url('/') }}"> < Atgal / Back</a>
  <thead style="font-size:12px;">
    <tr>
      <th scope="col">Sąsk.nr.</th>
      <th scope="col">Komanda</th>
      <th scope="col">Atstovas</th>
      <th scope="col">El.Paštas</th>
      <th scope="col">Įm.pav.</th>
      <th scope="col">Įm. kodas</th>
      <th scope="col">PVM kodas</th>
      <th scope="col">Turnyro data</th>
      <th scope="col">Turnyro pav</th>
      <th scope="col">Apmokėta</th>
    </tr>
  </thead>
  <tbody>
    @foreach($pay as $p)
      <tr>
         <td>{{$p->accnr}}</td>
         <td>{{$p->tname}}</td>
           <td>{{$p->responsive}}</td>
           <td>{{$p->email}}</td>
           <td>{{$p->cname}}</td>
            <td>{{$p->ccode}}</td>
           <td>{{$p->vatcode}}</td>
           <td>{{$p->edate}}</td>
           <td>{{$p->ename}}</td>
            <td>@if($p->paid == 'Ne')<span style="color:red">{{$p->paid}}</span>@else<span style="color:green">{{$p->paid}}</span>@endif</td>
           <td>
                <div class="btn-group" role="group" aria-label="Basic example">
                  <div class="col-md-2">
                    <form action="{{route('payments.update','test2')}}" method="post">
                    {{ csrf_field() }}
                      {{ method_field('PATCH') }}
                         <button type="submit" class="btn btn-xs btn-light">Taip</button>
                         <input type="hidden" name="paid" value="Taip">
                         <input type="hidden" name="id" value="{{$p->id}}">
                    </form>
                  </div>
                  <div class="col-md-2">
                   <form action="{{route('payments.update','test2')}}" method="post">
                    {{ csrf_field() }}
                      {{ method_field('PATCH') }}
                         <button type="submit" class="btn btn-xs btn-light">Ne</button>
                         <input type="hidden" name="paid" value="Ne">
                         <input type="hidden" name="id" value="{{$p->id}}">
                    </form>
                    </div>
                </div>
           </td>
         </tr>
      @endforeach
    </tbody>
  @endif
</table>
<small><b>Iš viso užsiregistravo/Total registered: {{count($pay)}}</b></small>

  @else
     <p>Nėra laukiančių mokėjimų</p>
  @endif
</div>
</div>


@endsection