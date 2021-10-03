@extends('front.layouts.app')
@section('content')

    <main id="tg-main" class="tg-main  tg-haslayout tg-bglight">
        <div id="tg-content" class="tg-content">
            <div class="tg-listing tg-tourcatagory tg-sectionspace">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <div class="">
                                <div id="booking" class="section mt-5">
                                    <div class="section-center">
                                        <div class="container">
                                            <div class="row">
                                                <div class="col-md col-md-pull">
                                                    <div class="booking-form">
                                                        <form class="  "    action="{{ route('Front.saveReserve',['lang'=>App::isLocale('ar')?'ar':'en']) }}" method="POST" enctype="multipart/form-data">
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
                                                                        <div class="form-group col">
                                                                            <label for="wizard-validation-firstname">{{__('booking.name')}}</label>
                                                                            <input required class="form-control @if($errors->has('name')) is-invalid @endif " type="text" id="wizard-validation-firstname" name="name">
                                                                        </div>
                                                                        <div class="form-group col">
                                                                            <label for="wizard-validation-firstname">{{__('booking.age')}}</label>
                                                                            <input required class="form-control @if($errors->has('age')) is-invalid @endif " type="text" id="wizard-validation-firstname" name="age">
                                                                        </div>
                                                                        <div class="form-group col">
                                                                            <label for="wizard-validation-firstname">{{__('booking.id')}}</label>
                                                                            <input required class="form-control @if($errors->has('IdNum')) is-invalid @endif " type="text" id="wizard-validation-firstname" name="IdNum">
                                                                        </div>
                                                                    </div>
                                                                    <div  class="row">
                                                                        <div class="col">
                                                                            <div class="form-group">
                                                                                <label class="d-block" for="image">{{__('booking.category')}}</label>
                                                                                <select   disabled class="form-control   @if($errors->has('category')) is-invalid @endif "  @if(App::isLocale('ar'))dir="rtl" @endif id="category" name="category">
                                                                                        <option  value="{{ $categorie->id }}">{{ $categorie->name }}</option>
                                                                                </select>
                                                                                <input hidden value="{{ $categorie->id }}" name="category">
                                                                            </div>
                                                                        </div>
                                                                        <div class="col">
                                                                            <div class="form-group">
                                                                                <label class="d-block" for="image">{{__('booking.package')}}</label>
                                                                                <select disabled class="form-control   @if($errors->has('package')) is-invalid @endif "  @if(App::isLocale('ar'))dir="rtl" @endif id="package" name="package">
                                                                                        <option value="{{ $package->id }}">{{ $package->name }}</option>
                                                                                </select>
                                                                                <input hidden value="{{ $package->id }}" name="package">
                                                                            </div>
                                                                        </div>
                                                                        <div class="col">
                                                                            <div class="form-group">
                                                                                <label class="d-block" for="image">{{__('booking.program')}}</label>
                                                                                <select disabled class="form-control   @if($errors->has('program_id')) is-invalid @endif "  @if(App::isLocale('ar'))dir="rtl" @endif id="program" name="program_id">
                                                                                        <option value="{{ $program->id }}">{{ $program->name }}</option>
                                                                                </select>
                                                                                <input hidden value="{{ $program->id }}" name="program_id">
                                                                            </div>
                                                                        </div>
                                                                    </div>

                                                                    <div class="row">
                                                                        <div class="col">
                                                                            <div class="form-group">
                                                                                <label class="d-block" for="image">{{__('booking.country')}}</label>
                                                                                <select  class="form-control   @if($errors->has('country')) is-invalid @endif "  @if(App::isLocale('ar'))dir="rtl" @endif id="country" name="country">
                                                                                    @foreach($countries as $c)
                                                                                        <option value="{{ $c->id }}"> {{$c->name_en}} </option>
                                                                                    @endforeach
                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col">
                                                                            <div class="form-group">
                                                                                <label class="d-block" for="image">{{__('booking.city')}}</label>
                                                                                <select  class="form-control   @if($errors->has('city')) is-invalid @endif "  @if(App::isLocale('ar'))dir="rtl" @endif id="city" name="city">

                                                                                </select>
                                                                            </div>
                                                                        </div>

                                                                    </div>


                                                                    <div class="row">
                                                                        <div class="col">
                                                                            <div class="form-group">
                                                                                <label class="d-block" for="image">{{__('booking.address')}}</label>
                                                                                <textarea class="form-control" name="address" id="" cols="40" rows="5"></textarea>
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

                                                                </div>


                                                                <div class="row">
                                                                    <div class="col">
                                                                        <div class="form-group">
                                                                            <label for="wizard-validation-lastname">{{__('booking.status')}}</label>
                                                                            <select  class="form-control   @if($errors->has('status')) is-invalid @endif "  @if(App::isLocale('ar'))dir="rtl" @endif id="wizard-validation-lastname" name="status">
                                                                                <option value="1">{{__('booking.active')}}</option>
                                                                                <option value="0">{{__('booking.deactive')}}</option>
                                                                            </select>
                                                                        </div>
                                                                    </div>

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
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--************************************
                    Article Start
            *************************************-->
        @yield("article_content")

        <!--************************************
                    Article End
            *************************************-->
        </div>
    </main>
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
@endsection
