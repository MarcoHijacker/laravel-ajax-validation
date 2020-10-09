<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Order;

class OrderController extends Controller
{
    public function index() {

      // $orders = Order::all();
      // return view('order-index', compact('orders'));
      return view('order-index');

    }

    public function create() {

      return view('order-create');

    }

    public function store(Request $request) {

      // $data = $request -> all();
      $data = $request -> validate([
        'item' => 'required|min:3|max:30',
        'price' => 'required|gte:0',
        'brand' => 'required|min:3|max:30',
        'category' => 'required|min:3|max:30',
        'fastdelivery' => 'required|min:1|max:1'
      ]);
      $order = Order::create($data);

      return redirect() -> route('order-index');

    }
}
