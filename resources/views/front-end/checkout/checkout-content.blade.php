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
			<h3><a href="index.html">Home</a> / <span>Add to Cart</span></h3>
		</div>
	</div>
	<!--banner-->

	<!--content-->
	<div class="content">
		<!--single-->
		<div class="single-wl3">
			<div class="container">
				<div class="row">
                    <div class="col-md-12 well">
                        <h3 class="text-center text-success">You have login to complete your valuable order.If you are not registered then registered faster.</h3>
                    </div>



						<div class="col-md-5 well">

							<h3>Register if you are noy register yet!</h3>
							<br/>
							{{ Form::open(['route' => 'customer-sign-up', 'method'=>'POST']) }}
							<div class="form-group">
								<input type="text" name="first_name" class="form-control" placeholder="First Name" >
							</div>

                            <div class="form-group">
                                <input type="text" name="last_name" class="form-control" placeholder="Last Name" >
                            </div>

                            <div class="form-group">
                                <input type="email" name="email_address" class="form-control" placeholder="something@gmail.com" >
                            </div>

                            <div class="form-group">
                                <input type="password" name="password" class="form-control" placeholder="Enter your password" >
                            </div>

                            <div class="form-group">
                                <input type="text" name="phone_number" class="form-control" placeholder="+880*********" >
                            </div>

                            <div class="form-group">
                               <textarea name="address" placeholder="address" class="form-control"></textarea>
                            </div>

                            <div class="form-group">
                                <input type="submit" value="Register" name="btn" class="form-control btn btn-success">
                            </div>






                            {{ Form::close() }}
						</div>



                          <div class="col-md-5 well" style="margin-left: 20px;">
							  <h3>Already Register ! Login here!</h3>
							  <br/>
							  {{ Form::open() }}

                              <div class="form-group">
                                  <input type="email" name="email_address" class="form-control" placeholder="something@gmail.com" >
                              </div>

                              <div class="form-group">
                                  <input type="password" name="password" class="form-control" placeholder="Enter your password" >
                              </div>

                              <div class="form-group">
                                  <input type="submit" value="Login" name="btn" class="form-control  btn-success">
                              </div>

							  {{ Form::close() }}





						  </div>



					</div>
				</div>



			</div>
			<!--single-->

			<!--new-arrivals-->
		</div>
	</div>
@endsection