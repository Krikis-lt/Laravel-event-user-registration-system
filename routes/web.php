<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return redirect('login');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::resource('tplayer','TPlayerController');
Route::resource('tevents','TEventController');
Route::resource('events','EventsController');
Route::resource('players','PlayersController');
Route::resource('list','ListController');
Route::resource('tlist','TListController');
Route::resource('success','SuccessController');
Route::resource('sub','SubController');
Route::resource('payments','PaymentsController');
Route::get('/invoice', 'InvoiceController@invoice')->name('invoice');
Route::get('export', 'MyController@export')->name('export');
Route::get('importExportView', 'MyController@importExportView');