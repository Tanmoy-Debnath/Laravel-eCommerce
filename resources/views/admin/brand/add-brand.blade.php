@extends('admin.master')
@section('body')
    <br/>
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-body">
                    <h3 class="text-center text-success">{{ Session::get('message')  }}</h3>
                       {{ Form::open(['route' => 'new-brand', 'method'=>'POST', 'class'=>'form-horizontal']) }}

                    <div class="form-group">
                        <label class="control-label col-md-3">Brand Name</label>
                        <div class="col-md-9">
                            <input type="text" name="brand_name" class="form-control"/>
                            <span class="text-danger">{{ $errors->has('brand_name') ? $errors->first('brand_name') : ' ' }}</span>
                        </div>
                    </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">Brand Description</label>
                                <div class="col-md-9">
                                  <textarea class="form-control" name="brand_description"></textarea>
                                    <span class="text-danger">{{ $errors->has('brand_description') ? $errors->first('brand_description') : ' ' }}</span>

                                </div>
                            </div>

                    <div class="form-group">
                        <label class="control-label col-md-3">Publication status</label>
                        <div class="col-md-9 radio">
                            <label><input type="radio" name="publication_status" value="1"/> Published</label>
                            <label><input type="radio" name="publication_status" value="0"/> Unpublished</label>
                            <span class="text-danger">{{ $errors->has('publication_status') ? $errors->first('publication_status') : ' ' }}</span>
                        </div>
                    </div>
                    <div class="form-group">

                        <div class="col-md-9 col-md-offset-3">
                            <input type="submit" name="btn" class="btn btn-success btn-block" value="save Brand Info">

                        </div>



                       {{ Form::close() }}
                </div>
            </div>
        </div>
    </div>

@endsection