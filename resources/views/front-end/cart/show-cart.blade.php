@extends('front-end.master')
@section('title')
    Product-details
@endsection
@section('icon')
    <link rel="shortcut icon" href="{{ asset('/') }}/front-end/images/shop1.png"/>
@endsection
@section('body')
    <div class="banner1">
        <div class="container">
            <h3><a href="{{ route('/') }}">Home</a> / <span>Add to Cart</span></h3>
        </div>
    </div>
    <!--banner-->

    <!--content-->
    <div class="content">
        <!--single-->
        <div class="single-wl3">
            <div class="container">
                <div class="row">
                    <div class="col-md-11 col-md-offset-1">
                        <h3 class="text-center text-success">My Shopping Cart</h3>
                        <hr/>
                        <table class="table table-bordered">
                            <tr class="bg-primary">
                                <th>Sl. No.</th>
                                <th>Name</th>
                                <th>Image</th>
                                <th>Price TK.</th>
                                <th>Quantity</th>
                                <th>Total Price TK.</th>
                                <th>Action</th>


                            </tr>
                            @php($i = 1)
                            @php($sum = 0)
                            @foreach($cartProducts as $cartProduct)
                            <tr>
                                <th>{{ $i++ }}</th>
                                <th>{{ $cartProduct->name }}</th>
                                <th><img src="{{ asset($cartProduct->options->image) }}" alt="" height="50" width="50"/></th>
                                <th>{{ $cartProduct->price }}</th>
                                <th>

                                        {{ Form::open(['route'=>'update-cart','method'=>'POST'])}}
                                        <input type="number" name="qty" value="{{ $cartProduct->qty }}" min="1"/>
                                         <input type="hidden" name="rowId" value="{{ $cartProduct->rowId }}" min="1"/>
                                         <input type="submit" name="btn" value="Update"/>

                                        {{ Form::close() }}

                                </th>
                                <th>{{ $total = $cartProduct->price*$cartProduct->qty }}</th>
                                <th>
                                    <a href="{{ route('delete-cart-item', ['rowId'=>$cartProduct->rowId]) }}" class=" btn btn-danger btn-xs" title="Delete">
                                        <span class="glyphicon glyphicon-trash"></span>

                                    </a>
                                </th>
                            </tr>
                                <?php  $sum = $sum + $total; ?>
                                @endforeach

                        </table>
                        <hr/>
                        <table class="table table-bordered">
                            <tr>
                                <th>Item Total (TK.)</th>
                                <td>{{ $sum }}</td>
                            </tr>
                            <tr>
                                <th>Vat Total (TK.)</th>
                                <td>{{ $vat = 0 }}</td>
                            </tr>
                            <tr>
                                <th>Grand Total (TK.)</th>
                                <td>{{ $orderTotal = $sum+$vat }}</td>
                                <?php
                                  Session::put('orderTotal', $orderTotal)
                                ?>
                            </tr>
                        </table>

                    </div>
                </div>

                <div class="row">
                    <div class="col-md-11 col-md-offset-1">
                        <a href="{{ route('checkout') }}" class="btn btn-success pull-right">Checkout</a>
                        <a href="" class="btn btn-success">Continue Shopping</a>



                    </div>
                </div>



        </div>
        <!--single-->

        <!--new-arrivals-->
    </div>
    </div>
@endsection