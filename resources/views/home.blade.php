@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default"  style="min-height:85vh">
              <Div style="float:right;margin:1%;">
                @if (Auth::guest())
                        <a href="{{ route('login') }}">Login</a>
                    @else
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                                {{ Auth::user()->name }} <span class="caret"></span>
                            </a>

                            <ul class="dropdown-menu" role="menu">
                                <li>
                                    <a href="{{ route('logout') }}"
                                        onclick="event.preventDefault();
                                                 document.getElementById('logout-form').submit();">
                                        Logout
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        {{ csrf_field() }}
                                    </form>
                                </li>
                            </ul>
                        </li>
                    @endif
                </Div>
                <div class="panel-heading">Valdymo skydas/Dashboard</div>

                <!-- Modal -->
                <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                  <div class="modal-dialog" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Pasirinkite renginį / Select event type</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                      </div>
                      <div class="modal-body">
                        <div class="container">
                          <div class="row">
                            <div class="col-md-3">
                              <a href="{{route('events.create')}}" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Asmeninės / Personal</a>
                            </div>
                            <div class="col-md-3">
                              <a href="{{route('tevents.create')}}" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Komandinės / Team</a>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="modal-footer">
                        
                      </div>
                    </div>
                  </div>
                </div>
                <!-- Modal End -->

                <div class="panel-body">
                    <ol>
                    	@if (Auth::user()->name == 'Krikis')
                        <li>
                           <a href="#" data-toggle="modal" data-target="#exampleModal">Sukurti renginį / Create an event
                           </a>
                       </li>
                       @endif
                       <li>
                           <a href="{{route('sub.index')}}">Siųsti naujienlaiškį / Send newsletter
                           </a>
                       </li>
                       <li>
                           <a href="{{route('payments.index')}}">Mokėjimai / Payments
                           </a>
                       </li>
                       <li>
                           <a href="{{route('sub.create')}}">Prenumeratoriai / Subscribers
                           </a>
                       </li>
                   </ol>
                   <hr>
                  <div class="container">
                    <div class="row">
                      <div class="col-md-5">
                     <div class="panel-heading">Registracija į renginį / Registration:</div>
                     <ol>
                      @if(count($events) > 0 || count($tevents) > 0)
                        @foreach($events as $event)
                          @if($event->edate <= date('Y-m-d'))
                            <div class="well" id="list-div" style="background:#f8d7da;border-color:#f8d7da">
                              @else
                              <div class="well" id="list-div" style="background:#d1ecf1;border-color:#bee5eb">
                                @endif
                                <h4>
                                <li style="margin:3%;">
                                  <a href="events/{{$event->id}}">
                                  {{$event->ename}} 
                                  </a>
                                </li>
                                </h4>
                                <h6>Renginio data/Event date:<b>
                                  {{$event->edate}}</b>
                                </h6>
                              </div>
                          @endforeach
                          @foreach($tevents as $tevent)
                          @if($tevent->edate <= date('Y-m-d'))
                            <div class="well" id="list-div" style="background:#f8d7da;border-color:#f8d7da">
                              @else
                              <div class="well" id="list-div" style="background:#d1ecf1;border-color:#bee5eb">
                                @endif
                                <h4>
                                <li style="margin:3%;">
                                  <a href="tevents/{{$tevent->id}}">
                                  {{$tevent->ename}} 
                                  </a>
                                </li>
                                </h4>
                                <h6>Renginio data/Event date:<b>
                                  {{$tevent->edate}}</b>
                                </h6>
                              </div>
                          @endforeach
                      @else
                        <p>No Events found</p>
                      @endif
                     </ol>
                     </div>
                     <div class="col-md-5">
                     <div class="panel-heading">Registruotų dalyvių sąrašas / List:</div>
                     <ol>
                      @if(count($lists) > 0 || count($tlists) > 0)
                        @foreach($lists as $list)
                           @if($list->edate <= date('Y-m-d'))
                            <div class="well" id="list-div" style="background:#f8d7da;border-color:#f8d7da">
                              @else
                              <div class="well" id="list-div" style="background:#d1ecf1;border-color:#bee5eb">
                                @endif
                                <h4>
                                <li style="margin:3%;">
                                  <a href="list/{{$list->id}}">
                                  {{$list->ename}} 
                                  </a>
                                </li>
                                </h4>
                                <h6>Renginio data/Event date:<b>
                                  {{$list->edate}}</b>
                                </h6>
                                </div>
                          @endforeach
                          @foreach($tlists as $tlist)
                           @if($tlist->edate <= date('Y-m-d'))
                            <div class="well" id="list-div" style="background:#f8d7da;border-color:#f8d7da">
                              @else
                              <div class="well" id="list-div" style="background:#d1ecf1;border-color:#bee5eb">
                                @endif
                                <h4>
                                <li style="margin:3%;">
                                  <a href="tlist/{{$tlist->id}}">
                                  {{$tlist->ename}} 
                                  </a>
                                </li>
                                </h4>
                                <h6>Renginio data/Event date:<b>
                                  {{$tlist->edate}}</b>
                                </h6>
                                </div>
                          @endforeach
                      @else
                        <p>Nėra registruotu dalyvių</p>
                      @endif
                     </ol>
                   </div>
                  </div>
                </div>
              </div>
            </div>
        </div>
    </div>
</div>
@endsection
