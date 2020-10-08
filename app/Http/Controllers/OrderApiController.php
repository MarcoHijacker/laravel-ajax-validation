<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Order;

class OrderApiController extends Controller
{
    public function getAllOrders() {

      $orders = Order::all();
      return response() -> json($orders);

    }

    public function getHighPriceOrder() {
      $orders = Order::where('price', '>', 500) -> get();
      return response() -> json($orders);
    }
}
