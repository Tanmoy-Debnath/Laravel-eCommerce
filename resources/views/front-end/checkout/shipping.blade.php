@extends('front-end.master')

@section('body')
    <div class="content">
        <!--single-->
        <div class="single-wl3">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 well text text-center text-success">
                        Dear <b>{{ Session::get('customerName') }}</b>. You have to give us product Shipping Information to complete your order.If your billing info & shipping info are same then just press the save shipping info button.
                    </div>


                </div>
                <div class="row">

<div class="col-md-8 well col-md-offset-2">

    <h3>Shipping Information goes here!</h3>
    <br/>
    {{ Form::open(['route'=>'new-shipping', 'method'=>'POST']) }}
    <div class="form-group">
        <input type="text" value="{{ $customer->first_name.' '.$customer->last_name }}" name="full_name" class="form-control" placeholder="First Name" >
    </div>


    <div class="form-group">
        <input type="email" value="{{ $customer->email_address }}" name="email_address" class="form-control" placeholder="something@gmail.com" >
    </div>

    <div class="form-group">
        <input type="text" value="{{ $customer->phone_number }}" name="phone_number" class="form-control" placeholder="+880*********" >
    </div>

    <div class="form-group">
        <textarea  name="address" placeholder="address" class="form-control">{{ $customer->address }}</textarea>
    </div>

    <div class="form-group">
        <input type="submit" value="Save Shipping Info" name="btn" class="form-control btn btn-info">
    </div>






    {{ Form::close() }}
</div>
                </div>
            </div>
        </div>
    </div>

    @endsection
