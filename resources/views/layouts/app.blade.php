<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <!-- JS -->
    <script src='https://www.google.com/recaptcha/api.js'></script>

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('css/my.css') }}" rel="stylesheet">
    <link rel='shortcut icon' href='http://vsta.lt/images/favicon.ico' type='image/x-icon' />
	<link href="https://fonts.googleapis.com/css?family=Alex+Brush" rel="stylesheet">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script type="text/javascript" src="{{ asset('js/moment.min.js') }}"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
    
</head>
<body style="background-image:url('http://www.dukesmeadows.com/site/wp-content/uploads/2013/04/table-tennis-background-copy.jpg');background-repeat: no-repeat;
    background-attachment: fixed; background-size: cover;">
    <div id="app">
        <br>
        @include('inc.messages')
        @yield('content')
    </div>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}"></script>
    <script src="{{ asset('vendor/unisharp/laravel-ckeditor/ckeditor.js') }}"></script>
    <script>
        CKEDITOR.replace( 'summary-ckeditor' );
    </script>

    <script type="text/javascript">
        $('#exampleModal').on('show.bs.modal', function (event) {
         
            var button = $(event.relatedTarget)
            var tname = button.data('mytname')
            var name = button.data('myname')
            var surname = button.data('mysurname')
            var birthday = button.data('mybirthday')
            var name2 = button.data('myname2')
            var surname2 = button.data('mysurname2')
            var birthday2 = button.data('mybirthday2')
            var name3 = button.data('myname3')
            var surname3 = button.data('mysurname3')
            var birthday3 = button.data('mybirthday3')
            var name4 = button.data('myname4')
            var surname4 = button.data('mysurname4')
            var birthday4 = button.data('mybirthday4')
            var name5 = button.data('myname5')
            var surname5 = button.data('mysurname5')
            var birthday5 = button.data('mybirthday5')
            var name6 = button.data('myname6')
            var surname6 = button.data('mysurname6')
            var birthday6 = button.data('mybirthday6')
            var responsive = button.data('myresponsive')
            var city = button.data('mycity')
            var country = button.data('mycountry')
            var rate = button.data('myrate')
            var phone = button.data('myphone')
            var email = button.data('myemail')
            var id = button.data('myplayid')
            var argali = button.data('myargali')
            var sporthall = button.data('mysporthall')

            var modal = $(this)

            modal.find('.modal-body #tname').val(tname);
            modal.find('.modal-body #name').val(name);
            modal.find('.modal-body #surname').val(surname);
            modal.find('.modal-body #birthday').val(birthday);
            modal.find('.modal-body #name2').val(name2);
            modal.find('.modal-body #surname2').val(surname2);
            modal.find('.modal-body #birthday2').val(birthday2);
            modal.find('.modal-body #name3').val(name3);
            modal.find('.modal-body #surname3').val(surname3);
            modal.find('.modal-body #birthday3').val(birthday3);
            modal.find('.modal-body #name4').val(name4);
            modal.find('.modal-body #surname4').val(surname4);
            modal.find('.modal-body #birthday4').val(birthday4);
            modal.find('.modal-body #name5').val(name5);
            modal.find('.modal-body #surname5').val(surname5);
            modal.find('.modal-body #birthday5').val(birthday5);
            modal.find('.modal-body #name6').val(name6);
            modal.find('.modal-body #surname6').val(surname6);
            modal.find('.modal-body #birthday6').val(birthday6);
            modal.find('.modal-body #responsive').val(responsive);
            modal.find('.modal-body #city').val(city);
            modal.find('.modal-body #country').val(country);
            modal.find('.modal-body #rating').val(rate);
            modal.find('.modal-body #tel').val(phone);
            modal.find('.modal-body #email').val(email);
            modal.find('.modal-body #myplayid').val(id);
            modal.find('.modal-body #argali').val(argali);
            modal.find('.modal-body #sporthall').val(sporthall);
        })
    </script>
</body>
</html>
