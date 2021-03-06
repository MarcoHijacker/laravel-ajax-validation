<?php

use Illuminate\Support\Facades\Route;

Route::get('/', 'OrderController@index') -> name('order-index');
Route::get('/api/orders/all', 'OrderApiController@getAllOrders') -> name('order-api-all');
Route::get('api/orders/highprice', 'OrderApiController@getHighPriceOrder') -> name('order-api-high');
Route::get('/order/create', 'OrderController@create') -> name('order-create');
Route::post('order/store', 'OrderController@store') -> name('order-store');
