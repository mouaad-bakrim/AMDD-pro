<?php

use App\Http\Controllers\ChatifyController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;
use App\Http\Controllers\Frontend\AdhesionController;
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

Route::get('/home', function () {
     return view('home');
 });

Route::get('/', 'App\Http\Controllers\Frontend\HomeController@index')->name('frontend.home');

//presentation
Route::get('/presentation', 'App\Http\Controllers\Frontend\PresentationController@index')->name('frontend.presentation');
//association
Route::get('/association', 'App\Http\Controllers\Frontend\AssociationController@index')->name('frontend.association');
//events
Route::get('/events', 'App\Http\Controllers\Frontend\EventController@index')->name('frontend.events');
Route::get('/events/{id}', 'App\Http\Controllers\Frontend\EventController@details')->name('events.details');
//contact
Route::get('/contact', 'App\Http\Controllers\Frontend\HomeController@contact')->name('frontend.contact');
Route::post('/contact/contact_mail', 'App\Http\Controllers\ContactController@contact_mail')->name('contact.mail');
Route::post('/contact', 'App\Http\Controllers\ContactController@store')->name('contact.store');
//adhesion
Route::get('/adhesion', 'App\Http\Controllers\Frontend\AdhesionController@showAdhesionForm')->name('frontend.adhesion');
Route::post('/adhesion/create', 'App\Http\Controllers\Frontend\AdhesionController@create')->name('adhesion.create');
Route::get('/get-specialites/{id}', [AdhesionController::class, 'getSpecialiteByComiteID']);

// Route::get('/adhesion/préinscription', 'App\Http\Controllers\Frontend\AdhesionController@showPreinscription')->name('frontend.adhesion.preinscription');

//visitors
// Route::name('frontend.')->group(function() {
//     // Route with 'visitor' middleware
//     Route::middleware('visitor')->get('/', 'App\Http\Controllers\Frontend\HomeController@index')->name('other');

//     // Another route without 'visitor' middleware
//     Route::get('/', 'App\Http\Controllers\Frontend\HomeController@index')->name('frontend.home');
// });


Auth::routes();
//Route::get('/chatify', [ChatifyController::class, 'renderChatifyView'])->name('chatify');

Route::get('/logi', [App\Http\Controllers\HomeController::class, 'index'])->name('vendor.Chatify.pages.app');
// Login
// Route::get('login', 'Auth\LoginController@showLoginForm')->name('login');
// Route::post('login', 'Auth\LoginController@login');
// Route::post('logout', 'Auth\LoginController@logout')->name('logout');

// Register
// Route::get('register', 'Auth\RegisterController@showRegistrationForm')->name('register');
// Route::post('register', 'Auth\RegisterController@register');