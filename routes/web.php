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

Route::get('/', 'HomeController@view')->name('home');
Route::get('/contact-us', 'ContactUsController@view')->name('contact-us');
Route::post('/contact-us', 'ContactUsController@contactUsMail');
Route::get('/logout', 'AuthController@logout');

Route::get('/admin/login', 'AuthController@login')->name('login');
Route::post('/admin/login', 'AuthController@doLogin');

Route::group(['prefix' => 'admin' , 'middleware' => ['auth']], function(){
    Route::get('/home', 'HomeController@adminView')->name('admin-home');
    Route::post('/homepage-content','HomeController@storeHomePageContent');
    Route::get('/contact', 'ContactUsController@adminView')->name('admin-contact-us');
    
    Route::post('/contactus-content','ContactUsController@storeContactUsPageContent');
    Route::get('/configuration', 'ConfigurationController@view')->name('admin-configuration');
    Route::post('/configuration', 'ConfigurationController@storeConfiguration');
});