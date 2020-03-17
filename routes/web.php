<?php

use Illuminate\Support\Facades\Route;

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
    return view('welcome');
});

Route::get('/service', 'ServiceController@showDescriptionSpa');

Route::get('/service_time', 'ServiceController@showServiceHours');

Route::post('/reservation', 'ReservationController@create');

Route::get('/service_avaliable/{date}+{service}', 'ServiceController@showAvaliable');





