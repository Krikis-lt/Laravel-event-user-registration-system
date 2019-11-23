@extends('layouts.app')

@section('content')
<div class="container" style="background:white">
  <div class="row" style="margin:2%;">
<div class="col">
</div>
<div style="text-align:Center;"><img src="http://vsta.lt/Styles/logo.png"/></div>
<div style="" class="col-6">
  <h4 style="float:right">Renginio data/Event date: <b>{{$tevent->edate}}</b></h4>
  @if($tevent->edate > date('Y-m-d'))

     <h2>Registracija baigesi</h2>
    @else
	<h3>Registracija į</h3>
    <h1>{{$tevent->ename}}</h1>
    <Br>
    <h4>{!!$tevent->edesc!!}</h4>
    <br>
    {!! Form::open(['action' => 'TPlayerController@store', 'method' => 'POST']) !!}
        <div style="display:none;">
            <select class="form-control" name="tevent_id">
              <option value="{{$tevent->id}}">{{$tevent->id}}</option>
            </select>
            <select class="form-control" name="edate">
              <option value="{{$tevent->edate}}">{{$tevent->edate}}</option>
            </select>
            <input type="hidden" name="ename" value="{{$tevent->ename}}">
            <input type="hidden" name="eprice" value="{{$tevent->charged}}">
        </div>
        <div class="form-group">
            {{form::label('tname', 'Komandos pavadinimas/Team name *')}}
            {{Form::text('tname','', ['class' => 'form-control', 'placeholder' => 'Komandos pavadinimas/Team name'])}}
        </div>
        <div class="form-group">
            {{form::label('tclubname', 'Klubo pavadinimas/Club name *')}}
            {{Form::text('tclubname','', ['class' => 'form-control', 'placeholder' => 'Klubo pavadinimas/Club name'])}}
        </div>
        <div class="form-group">
        	<label>Galite pravesti varžybas?</label>
            <select class="form-control" name="argali">
              <option value="Ne">Ne / No</option>
              <option value="Taip">Taip / Yes</option>
            </select>
        </div>
        <div class="form-group">
            {{form::label('sporthall', 'Sporto salės adresas/Sports club address')}}
            {{Form::text('sporthall','', ['class' => 'form-control', 'placeholder' => 'Sporto salės adresas/Sports club address'])}}
        </div><br>
        <h4>Komandos žaidėjai / Team players:</h4><br>

        <!--- --->
        <?php $nr = $tevent->playerNo ?>
        <?php $z = 1; ?>

        @while ($z <= $nr)
        <div class="form-group">
          <input id="reiksme1" style="display:none;" type="text" value="1" />
          <div id="kiekis1">
            <label for="name">Vardas{{$z}}/Name{{$z}}*</label>
            <input type="text" name="name{{$z}}" class="form-control" placeholder="Vardas/Name" />
          </div>
        </div>
        <div class="form-group">
          <input id="reiksme1" style="display:none;" type="text" value="1" />
          <div id="kiekis1">
            <label for="surname">Pavardė{{$z}}/Surname{{$z}}*</label>
            <input type="text" name="surname{{$z}}" class="form-control" placeholder="Pavardė/Surname" />
          </div>
        </div>
        <div class="form-group">
          <input id="reiksme1" style="display:none;" type="text" value="1" />
          <div id="kiekis1">
            <label for="birthday">Gimimo data{{$z}}/Birthday{{$z}} </label>
            <input class="form-control" id="birthday{{$z}}" required type="text" name="birthday{{$z}}" value="10/24/1984" />
            <script>
              (function($) {
              $(function() {
                $('#birthday{{$z}}').daterangepicker({
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
        </div>
        <?php $z++ ?>
        @endwhile

        <!--- --->

        <!--
        <div class="form-group">
          <input id="reiksme1" style="display:none;" type="text" value="1" />
          <div id="kiekis1">
            {{form::label('name', 'Vardas/Name *')}}
            {{Form::text('name','', ['class' => 'form-control', 'placeholder' => 'Vardas/Name'])}}
          </div>
        </div>
        <div class="form-group">
          <input id="reiksme1" style="display:none;" type="text" value="1" />
          <div id="kiekis1">
            {{form::label('surname', 'Pavardė/Surname *')}}
            {{Form::text('surname','', ['class' => 'form-control', 'placeholder' => 'Pavardė/Surname'])}}
          </div>
        </div>
        <div class="form-group">
          <input id="reiksme1" style="display:none;" type="text" value="1" />
          <div id="kiekis1">
            <label for="birthday">Gimimo data/Birthday </label>
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
        </div>
         <div class="form-group">
          <input id="reiksme2" style="display:none;" type="text" value="2" />
          <div id="kiekis2">
            {{form::label('name2', 'Vardas 2/Name 2 *')}}
            {{Form::text('name2','', ['class' => 'form-control', 'placeholder' => 'Vardas 2/Name 2'])}}
          </div>
        </div>
        <div class="form-group">
          <input id="reiksme2" style="display:none;" type="text" value="2" />
          <div id="kiekis2">
            {{form::label('surname2', 'Pavardė 2/Surname 2 *')}}
            {{Form::text('surname2','', ['class' => 'form-control', 'placeholder' => 'Pavardė 2/Surname 2'])}}
          </div>
        </div>
        <div class="form-group">
          <input id="reiksme2" style="display:none;" type="text" value="2" />
          <div id="kiekis2">
            <label for="birthday2">Gimimo data/Birthday </label>
            <input class="form-control" required type="text" name="birthday2" value="10/24/1984" />
            <script>
              (function($) {
              $(function() {
                $('input[name="birthday2"]').daterangepicker({
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
        </div>
         <div class="form-group">
          <input id="reiksme3" style="display:none;" type="text" value="3" />
          <div id="kiekis3">
            {{form::label('name3', 'Vardas 3/Name 3 *')}}
            {{Form::text('name3','', ['class' => 'form-control', 'placeholder' => 'Vardas 3/Name 3'])}}
        </div>
      </div>
        <div class="form-group">
          <input  id="reiksme3"style="display:none;" type="text" value="3" />
          <div id="kiekis3">
            {{form::label('surname3', 'Pavardė 3/Surname 3 *')}}
            {{Form::text('surname3','', ['class' => 'form-control', 'placeholder' => 'Pavardė 3/Surname 3'])}}
        </div>
      </div>
        <div class="form-group">
          <input id="reiksme3" style="display:none;" type="text" value="3" />
           <div id="kiekis3">
            <label for="birthday3">Gimimo data/Birthday </label>
            <input class="form-control" required type="text" name="birthday3" value="10/24/1984" />
            <script>
              (function($) {
              $(function() {
                $('input[name="birthday3"]').daterangepicker({
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
        </div>
        <hr>
        <div class="extra-players" style="margin-left:3%;margin-right:3%;">
             <div class="form-group">
              <input id="reiksme4" style="display:none;" type="text" value="4" />
              <div id="kiekis4" >
                {{form::label('name4', 'Vardas 4/Name 4')}}
                {{Form::text('name4','', ['class' => 'form-control', 'placeholder' => 'Vardas 4/Name 4'])}}
              </div>
            </div>
            <div class="form-group">
              <input id="reiksme4" style="display:none;" type="text" value="4" />
              <div id="kiekis4" >
                {{form::label('surname4', 'Pavardė 4/Surname 4')}}
                {{Form::text('surname4','', ['class' => 'form-control', 'placeholder' => 'Pavardė 4/Surname 4'])}}
              </div>
            </div>
            <div class="form-group">
              <input id="reiksme4" style="display:none;" type="text" value="4" />
              <div id="kiekis4" >
                <label for="birthday4">Gimimo data 4/Birthday 4</label>
                <input class="form-control" required type="text" name="birthday4" value="10/24/1984" />
                <script>
                  (function($) {
                  $(function() {
                    $('input[name="birthday4"]').daterangepicker({
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
            </div>
             <div class="form-group">
              <input id="reiksme5" style="display:none;" type="text" value="5" />
              <div id="kiekis5">
                {{form::label('name5', 'Vardas 5/Name 5')}}
                {{Form::text('name5','', ['class' => 'form-control', 'placeholder' => 'Vardas 5/Name 5'])}}
              </div>
            </div>
            <div class="form-group">
              <input id="reiksme5" style="display:none;" type="text" value="5" />
              <div id="kiekis5">
                {{form::label('surname5', 'Pavardė 5/Surname 5')}}
                {{Form::text('surname5','', ['class' => 'form-control', 'placeholder' => 'Pavardė 5/Surname 5'])}}
              </div>
            </div>
            <div class="form-group">
              <input id="reiksme5" style="display:none;" type="text" value="5" />
              <div id="kiekis5">
                <label for="birthday5">Gimimo data/Birthday </label>
                <input class="form-control" required type="text" name="birthday5" value="10/24/1984" />
                <script>
                  (function($) {
                  $(function() {
                    $('input[name="birthday5"]').daterangepicker({
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
            </div>
            <div class="form-group">
              <input id="reiksme6" style="display:none;" type="text" value="6" />
              <div id="kiekis6">
                {{form::label('name6', 'Vardas 6/Name 6')}}
                {{Form::text('name6','', ['class' => 'form-control', 'placeholder' => 'Vardas 6/Name 6'])}}
              </div>
            </div>
            <div class="form-group">
              <input id="reiksme6" style="display:none;" type="text" value="6" />
              <div id="kiekis6">
                {{form::label('surname6', 'Pavardė 6/Surname 6')}}
                {{Form::text('surname6','', ['class' => 'form-control', 'placeholder' => 'Pavardė 6/Surname 6'])}}
              </div>
            </div>
            <div class="form-group">
              <input id="reiksme6" style="display:none;" type="text" value="6" />
              <div id="kiekis6">
                <label for="birthday6">Gimimo data/Birthday </label>
                <input class="form-control" required type="text" name="birthday6" value="10/24/1984" />
                <script>
                  (function($) {
                  $(function() {
                    $('input[name="birthday6"]').daterangepicker({
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
            </div>
         </div>
         --->
        <hr><br>
         <div class="form-group">
            {{form::label('responsive', 'Atsakingas asmuo/Responsive person *')}}
            {{Form::text('responsive','', ['class' => 'form-control', 'placeholder' => 'Atsakingas asmuo/Responsive person'])}}
        </div>
        <div class="form-group">
            {{form::label('city', 'Miestas/City *')}}
            {{Form::text('city','', ['class' => 'form-control', 'placeholder' => 'Miestas/City'])}}
        </div>
        <div class="form-group">
            {{form::label('country', 'Šalis/Country *')}}
            {{Form::text('country','', ['class' => 'form-control', 'placeholder' => 'Šalis/Country'])}}
        </div>
        <div class="form-group">
            {{form::label('tel', 'Telefonas/Phone (arba Jūsų trenerio Nr./or Your trainer No.) *')}}
            {{Form::text('tel','', ['class' => 'form-control', 'placeholder' => 'Telefonas/Phone'])}}
        </div>
        <div class="form-group">
            {{form::label('email', 'El. Paštas/E-mail *')}}
            {{Form::email('email','', ['class' => 'form-control', 'placeholder' => 'El. Paštas/E-mail'])}}
        </div>
        <label>Grupė</label>
        <select class="form-control" name="group">
          <option value="{{$tevent->egroup1}}">{{$tevent->egroup1}}</option>
          @if(!empty($tevent->egroup2)){
          <option value="{{$tevent->egroup2}}">{{$tevent->egroup2}}</option>
          } @endif
          @if(!empty($tevent->egroup3)){
          <option value="{{$tevent->egroup3}}">{{$tevent->egroup3}}</option>
          } @endif
          @if(!empty($tevent->egroup4)){
          <option value="{{$tevent->egroup4}}">{{$tevent->egroup4}}</option>
          } @endif
          @if(!empty($tevent->egroup5)){
          <option value="{{$tevent->egroup5}}">{{$tevent->egroup5}}</option>
          } @endif
          @if(!empty($tevent->egroup6)){
          <option value="{{$tevent->egroup6}}">{{$tevent->egroup6}}</option>
          } @endif
          @if(!empty($tevent->egroup7)){
          <option value="{{$tevent->egroup7}}">{{$tevent->egroup7}}</option>
          } @endif
        </select>
        <br>
        @if($tevent->charged > 0)
        <div style="background:rgb(242, 242, 243);padding:2%;">
          <h3>Mokėtojo duomenys/Payer details:</h3><br>
             <div class="form-group">
              <label for="cname">Įmonės pav. ar Asmens vardas/Company or Person name *</label>
              <input type="text" class="form-control" type="text" placeholder="Įmonės pav. ar Asmens vardas, pavardė/Company or Person name. surname" id="cname" name="cname" required>
            </div>
            <div class="form-group">
                <label for="caddress">Įmonės ar Asmens adresas/Company or Person address *</label>
                <input type="text" class="form-control" type="text" placeholder="Įmonės ar Asmens adresas/Company or Person address *" id="caddress" name="caddress" required>
            </div>
            <div class="form-group">
                <label for="ccode">Įmonės kodas ar Asmens gimimo data/Company code or Person birthday *</label>
                <input type="text" class="form-control" type="text" placeholder="Įmonės kodas ar Asmens gimimo data/Company code or Person birthday *" id="ccode" name="ccode" required>
            </div>
            <div class="form-group">
                {{form::label('vatcode', 'PVM mokėtojo kodas/VAT code')}}
                {{Form::text('vatcode','', ['class' => 'form-control', 'placeholder' => 'PVM mokėtojo kodas/VAT code'])}}
            </div>
            <br>
        </div>
       @endif
        <br> 
        <label>Ar sutinkate gauti svarbią informaciją apie vyksiančius VSTA turnyrus ir renginius? / Do you agree to receive important information about VSTA tournaments and events?</label>
        <br>
        <small>(Jeigu nebenorite gauti naujienlaiškių, prašome susisiekti: info@vsta.lt / if you don't want to get newsletters anymore, please contact: info@vsta.lt)</small>
        <br>
        <input type="checkbox" value="1" checked id="subscribe" name="subscribe">
    <label for="subscribe">Sutinku / Agree</label>
	<br>
	<label>Registruojantis sutinku, jog renginio nuotraukos ir vaizdo medžiaga būtų viešinamos / With registration I agree that the photo and video material of the event will be published *</label>
	<br>
	<input type="checkbox" value="1" required id="subscribe" name="subscribe">
	<label for="subscribe">Sutinku / Agree</label>
	<br>

        {{Form::submit('OK', ['class'=>'btn btn-primary'])}}
      {!! Form::close() !!}
    @endif
</div>
<div class="col">
</div>
</div>
</div>

<div style="display: none;">
<?php $nr = $tevent->playerNo ?>
<?php print $nr ?>
</div>

<script>
   /*
   var val = {!! json_encode($nr) !!};

  $(document).ready( function() {
        if( $('#reiksme1').val() > val ){
            $('.form-group #kiekis1').hide();
        }
        if( $('#reiksme2').val() > val ){
            $('.form-group #kiekis2').hide();
        }
        if( $('#reiksme3').val() > val ){
            $('.form-group #kiekis3').hide();
        }
        if( $('#reiksme4').val() > val ){
            $('.form-group #kiekis4').hide();
        }
        if( $('#reiksme5').val() > val ){
            $('.form-group #kiekis5').hide();
        }
        if( $('#reiksme6').val() > val ){
            $('.form-group #kiekis6').hide();
        }
    });
    */
</script>

@endsection
