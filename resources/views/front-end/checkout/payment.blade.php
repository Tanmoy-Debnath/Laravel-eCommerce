@extends('front-end.master')

@section('body')
    <div class="content">
        <!--single-->
        <div class="single-wl3">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 well text text-center text-success">
                        Dear <b>{{ Session::get('customerName') }}</b>. You have to give us Product payment method.
                    </div>


                </div>
                <div class="row">

                    <div class="col-md-8 well col-md-offset-2">

                      {{ Form::open(['route'=>'new-order', 'method'=>'POST']) }}
                           <table class="table table-bordered">
                               <tr>
                                   <th>Cash on Delivery</th>
                                   <td><input type="radio" name="payment_type" value="Cash"/> Cash on Delivery</td>

                               </tr>
                               <tr>
                                   <th>Paypal</th>
                                   <td><input type="radio" name="payment_type" value="Paypal"/> Paypal</td>

                               </tr>
                               <tr>
                                   <th>bKash</th>
                                   <td><input type="radio" name="payment_type" value="bKash"/> bKash</td>

                               </tr>
                               <tr>
                                   <th></th>
                                   <td><input type="submit" name="btn" value="Confirm Order"></td>

                               </tr>
                           </table>
                       {{ Form::close() }}










                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
