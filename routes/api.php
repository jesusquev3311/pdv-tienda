<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

/**
 * Products
*/
Route::get('/products', 'ProductController@index')->name('products.index');

Route::post('/products', 'ProductController@store')->name('products.store');

Route::get('/products/{product}', 'ProductController@show')->name('products.show');

Route::put('/products/{product}', 'ProductController@update')->name('products.update');

Route::delete('/products/{product}', 'ProductController@destroy')->name('products.destroy');

/** Product's tags */

Route::get('/products/{product}/tags', 'Products\ProductTag@index')->name('products.tags');

Route::post('/products/{product}/tags', 'Products\ProductTag@store')->name('products.tags.store');

Route::put('/products/{product}/tags/{tags}', 'TagsController@update')->name('products.tags.update');

Route::delete('/products/{product}/tags/{tags}', 'TagsController@destroy')->name('products.tags.destroy');


