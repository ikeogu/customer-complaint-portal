<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

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

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', 'App\Http\Controllers\HomeController@index')->name('dashboard');


Route::resource('branch', App\Http\Controllers\BranchController::class);
Route::resource('complaint', App\Http\Controllers\ComplaintController::class);
Route::resource('customer', App\Http\Controllers\CustomersController::class);
Route::resource('manager', App\Http\Controllers\ManagerController::class);
Route::get('logout', '\App\Http\Controllers\HomeController@logout');

Route::get('reviews/{id}', '\App\Http\Controllers\ComplaintController@review')->name('RW');