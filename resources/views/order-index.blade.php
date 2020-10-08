@extends('layouts.main-layout')

@section('content')

  <div class="card">
    <div class="card-header">
      <div>
        Orders:
      </div>
      <div>
        <input id="highprice" type="checkbox" name="highprice" value="">
        <label for="highprice">More than 500EUR</label>
      </div>
    </div>
    <div class="card-body">
      <ul id="orders">

      </ul>
    </div>
  </div>

@endsection
