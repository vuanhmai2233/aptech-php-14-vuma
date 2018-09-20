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
    return view('welcome');
});
Route::get('hello', function () {
    return 'Hello World';
});
Route::get('welcome', function () {
    return 'Welcome to DN';
});
Route::get('xinchao', function () {
    return 'Xin chào Việt Nam';
});
Route::get('Hi', function () {
    return 'Hihihi';
});
Route::get('leuleu', function () {
    return 'Leu Leu';
});


Route::get('table', function () {
    return view('table');
});
Route::get('form', function () {
    return view('form');
});
Route::get('simple', function () {
    return view('simple');
});
Route::get('aa', function () {
    return view('aa ');
});

