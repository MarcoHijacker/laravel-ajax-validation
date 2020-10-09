@extends('layouts.main-layout')

@section('content')

  <div class="container">
      <div class="row justify-content-center">
          <div class="col-md-8">
              <div class="card">
                  <div class="card-header">Add New Order:</div>

                  <div class="card-body">

                      <form action="{{ route('order-store') }}" method="post">
                          @csrf
                          @method('POST')

                          <div class="form-group">
                              <label for="item">Item</label><br>
                              <input type="text" class="form-control @error('item') is-invalid @enderror" name="item" value="{{ old('item') }}">
                              @error('item')
                                  <span class="invalid-feedback" role="alert">
                                      <strong>{{ $message }}</strong>
                                  </span>
                              @enderror
                          </div>
                          <div class="form-group">
                              <label for="price">Price</label><br>
                              <input type="number" class="form-control @error('price') is-invalid @enderror" name="price" value="{{ old('price', 0) }}">
                              @error('price')
                                  <span class="invalid-feedback" role="alert">
                                      <strong>{{ $message }}</strong>
                                  </span>
                              @enderror
                          </div>
                          <div class="form-group">
                              <label for="brand">Brand</label><br>
                              <input type="text" class="form-control @error('brand') is-invalid @enderror" name="brand" value="{{ old('brand') }}">
                              @error('brand')
                                  <span class="invalid-feedback" role="alert">
                                      <strong>{{ $message }}</strong>
                                  </span>
                              @enderror
                          </div>
                          <div class="form-group">
                              <label for="category">Category</label><br>
                              <input type="text" class="form-control @error('category') is-invalid @enderror" name="category" value="{{ old('category') }}">
                              @error('category')
                                  <span class="invalid-feedback" role="alert">
                                      <strong>{{ $message }}</strong>
                                  </span>
                              @enderror
                          </div>
                          <div class="form-group">
                              <label for="fastdelivery">Fast Delivery (1 Yes 0 No)</label><br>
                              <input type="number" class="form-control @error('fastdelivery') is-invalid @enderror" name="fastdelivery" value="{{ old('fastdelivery') }}">
                              @error('fastdelivery')
                                  <span class="invalid-feedback" role="alert">
                                      <strong>{{ $message }}</strong>
                                  </span>
                              @enderror
                          </div><br>

                          <button type="submit" name="button">CREATE</button>

                      </form>
                  </div>

              </div>
          </div>
      </div>

  </div>
@endsection
