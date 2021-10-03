@extends('admin.layouts.app')
@section('content')
    <!-- Validation Wizards -->
    @if(session()->has('success'))
        <div class="alert alert-success text-right" style="width:100%">
            {{session()->get('success')}}
        </div>
    @endif
    @if($data)
    <div class="js-wizard-validation block block @if(App::isLocale('ar')) text-right @endif " style="width:100%;" >
        <!-- Step Tabs -->
        <ul class="nav nav-tabs nav-tabs-block nav-justified" role="tablist">
            <li class="nav-item">
                <span style="background-color: #272E38;color: white;" class="nav-link active"  data-toggle="tab" style="font-size:17px;margin-top:">{{__('booking.edit')}}</span>
            </li>
        </ul>
        <form class="js-wizard-validation-form" @if(App::isLocale('ar')) dir="rtl"@endif action="{{ route('Admin.UpdateBooking', $data->id) }}" method="POST" enctype="multipart/form-data">
            @csrf
            @if($errors->any())
                <div class="alert alert-danger">
                    @foreach($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </div>
            @endif
            <div class="block-content block-content-full tab-content px-md-5" style="min-height: 300px;">
                <div class="tab-pane active" id="wizard-validation-step1" role="tabpanel">
                    <div class="row">
                        <div class="form-group col-4">
                            <label for="wizard-validation-firstname">{{__('booking.name')}}</label>
                            <input required class="form-control @if($errors->has('name')) is-invalid @endif " type="text" id="wizard-validation-firstname" name="name" value="{{$data->name}}">
                        </div>
                        <div class="form-group col-4">
                            <label for="wizard-validation-firstname">{{__('booking.age')}}</label>
                            <input required class="form-control @if($errors->has('age')) is-invalid @endif " type="text" id="wizard-validation-firstname" name="age"  value="{{$data->age}}">
                        </div>
                        <div class="form-group col-4">
                            <label for="wizard-validation-firstname">{{__('booking.id')}}</label>
                            <input required class="form-control @if($errors->has('IdNum')) is-invalid @endif " type="text" id="wizard-validation-firstname" name="IdNum"  value="{{$data->IdNum}}">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="form-group">
                                <label class="d-block" for="image">{{__('booking.category')}}</label>
                                    <select  class="form-control   @if($errors->has('category')) is-invalid @endif "  @if(App::isLocale('ar'))dir="rtl" @endif id="category" name="category">
                                        @foreach($categories as $c)
                                            <option value="{{ $c->id }}" {{($c->id == $data->program->package->category->id)? 'selected' : ''}}>{{ $c->name }}</option>
                                        @endforeach
                                    </select>                            
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <label class="d-block" for="image">{{__('booking.package')}}</label>
                                    <select  class="form-control   @if($errors->has('package')) is-invalid @endif "  @if(App::isLocale('ar'))dir="rtl" @endif id="package" name="package">
                                        @foreach($packages as $p)
                                            <option value="{{ $p->id }}" {{($p->id == $data->program->package->id)}}>{{ $p->name }}</option>
                                        @endforeach
                                    </select>                           
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <label class="d-block" for="image">{{__('booking.program')}}</label>
                                    <select  class="form-control   @if($errors->has('program_id')) is-invalid @endif "  @if(App::isLocale('ar'))dir="rtl" @endif id="program" name="program_id">
                                        @foreach($programs as $p)
                                            <option value="{{ $p->id }}" {{($p->id == $data->program_id)? 'selected' : ''}}>{{ $p->name }}</option>
                                        @endforeach
                                    </select>                           
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <div class="form-group">
                                <label class="d-block" for="image">{{__('booking.country')}}</label>
                                    <select  class="form-control   @if($errors->has('country')) is-invalid @endif "  @if(App::isLocale('ar'))dir="rtl" @endif id="country" name="country">
                                        @foreach($countries as $c)
                                            <option value="{{ $c->id }}" {{($c->id == $data->country_id)? 'selected' : ''}}> {{$c->name_en}} </option>
                                        @endforeach
                                    </select>                            
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <label class="d-block" for="image">{{__('booking.city')}}</label>
                                    <select  class="form-control   @if($errors->has('city')) is-invalid @endif "  @if(App::isLocale('ar'))dir="rtl" @endif id="city" name="city">
                                        @foreach($cities as $c)
                                            <option value="{{ $c->id }}" {{($c->id == $data->city_id)? 'selected' : ''}}> {{$c->name_en}} </option>
                                        @endforeach
                                    </select>                           
                            </div>
                        </div>

                    </div>


                    <div class="row">
                        <div class="col">
                            <div class="form-group">
                                <label class="d-block" for="image">{{__('booking.address')}}</label>
                                <textarea class="form-control" name="address" id="" cols="40" rows="5">{{$data->address}}</textarea>                       
                            </div>
                        </div>

                    </div>
                </div>

                <div class="row">
                    <div class="col">
                            <div class="form-group">
                                <label class="d-block" for="image">{{__('booking.images')}}</label>
                                <input type="file" id="image" name="images[]" multiple>
                            </div>
                    </div>
                    @if($data->images)
                            <?php 
                                $images = json_decode($data->images);
                            ?>
                            @foreach($images as $i)
                            <a href="{{asset($i)}}">
                                <img src="{{ asset($i) }}" alt="" style="max-width:100px;max-height:100px;">
                            </a>
                            @endforeach
                    @endif

                </div>


                <div class="form-group">
                                    <label for="wizard-validation-lastname">{{__('booking.status')}}</label>
                                    <select  class="form-control   @if($errors->has('status')) is-invalid @endif "  @if(App::isLocale('ar'))dir="rtl" @endif id="wizard-validation-lastname" name="status">
                                        <option value="1" {{($data->status == 1)? 'selected' : ''}}>{{__('booking.active')}}</option>
                                        <option value="0" {{($data->status == 0)? 'selected' : ''}}>{{__('booking.deactive')}}</option>
                                    </select>
                                </div>
                <!-- Steps Navigation -->
                <div class="block-content block-content-sm block-content-full bg-body-light rounded-bottom">
                    <div class="row">
                        <div class="col">
                            <button type="submit" class="btn btn-alt-primary @if(App::isLocale('ar'))text-right @endif mx-auto d-block" data-wizard="next">
                                {{__('booking.send')}} <i class="fa fa-angle-right ml-1"></i>
                            </button>
                        </div>
                    </div>
                </div>
                <!-- END Steps Navigation -->
        </form>
    </div>
{{--    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>--}}
    <script src="{{asset('assets/js/core/jquery.min.js')}}"></script>
<script type=text/javascript>
  $('#category').change(function(){
  var countryID = $(this).val();  
  if(countryID){
    $.ajax({
      type:"GET",
      url:"{{route('Admin.getPackages')}}?categorie_id="+countryID,
      success:function(res){        
      if(res){
        $("#package").empty();
        $("#package").append('<option>Select</option>');
        $.each(res,function(key,value){
          $("#package").append('<option value="'+key+'">'+value+'</option>');
        });
      
      }else{
        $("#package").empty();
      }
      }
    });
  }else{
    $("#package").empty();
  }   
  });

  $('#package').change(function(){
  var countryID = $(this).val();  
  if(countryID){
    $.ajax({
      type:"GET",
      url:"{{route('Admin.getPrograms')}}?package_id="+countryID,
      success:function(res){        
      if(res){
        $("#program").empty();
        $("#program").append('<option>Select</option>');
        $.each(res,function(key,value){
          $("#program").append('<option value="'+key+'">'+value+'</option>');
        });
      
      }else{
        $("#program").empty();
      }
      }
    });
  }else{
    $("#program").empty();
  }   
  });
 
  $('#country').change(function(){
  var countryID = $(this).val();  
  if(countryID){
    $.ajax({
      type:"GET",
      url:"{{route('Admin.getCities')}}?country_id="+countryID,
      success:function(res){        
      if(res){
        $("#city").empty();
        $("#city").append('<option>Select</option>');
        $.each(res,function(key,value){
          $("#city").append('<option value="'+key+'">'+value+'</option>');
        });
      
      }else{
        $("#city").empty();
      }
      }
    });
  }else{
    $("#city").empty();
  }   
  });
</script>

@else
  <span class="d-flex justify-content-center">There's no data.</span>
@endif

@endsection

