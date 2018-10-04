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
Route::get('User','UserController@index')->name('user.index');;
Route::get('UserOne/{id}','UserController@UserOne')->name('user.userOne');
Route::delete('Delete/{id}','UserController@Delete')->name('users.destroy');

Route::get('/users/{id}/edit', 'UserController@edit')->name('users.edit');

Route::put('/users/{id}', 'UserController@update')->name('users.update');