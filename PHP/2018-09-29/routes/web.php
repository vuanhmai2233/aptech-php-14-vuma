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


Route::get('/users', 'UserController@hienThiTatCa');
Route::get('/hienthimot/{id}','UserController@hienThiMot');
Route::post('/xoaNguoiDung/{id}','UserController@xoaNguoiDung');