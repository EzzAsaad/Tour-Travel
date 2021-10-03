@extends('front.layouts.app')
@section('content')

    <section style="padding: 40px 40px;" class="section shipping">
        <div class="container">
            <div class="row" @if(App::isLocale('ar')) dir="rtl" @endif>
                <div class="col-md-12 col-sm-12 col-lg-8"  >
                    <div class="details-form @if(App::isLocale('ar')) text-right @endif" >
                        <h3 class="headline mb-3 font-weight-bold">{{__('front.yourdtails')}}</h3>
                        <hr>

                        <form action="{{route('Front.editprofile',['lang'=>(App::isLocale('ar'))? 'ar' : 'en','id'=>$customer->id])}}" id="bookingForm" method="post" >
                            @csrf
                            <div class="row">
                                <div class="col-md-6 col-lg-6">
                                    <div class="form-group">
                                        <label>{{__('front.username')}}</label>
                                        <input type="text" value="{{$customer->name}}" class="form-control" placeholder="{{__('front.username')}}" name="name" required>
                                    </div>
                                    <div class="form-group">
                                        <label>{{__('front.password')}}</label>
                                        <input type="password" class="form-control" placeholder="{{__('front.password')}}" name="password" >
                                    </div>
                                    <div class="form-group">
                                        <label>{{__('front.phone')}}</label>
                                        <input type="text" value="{{$customer->phone}}" class="form-control" placeholder="{{__('front.phone')}}" name="phone" required>
                                    </div>
                                    <div class="form-group">
                                        <label>{{__('front.email')}}</label>
                                        <input type="email" class="form-control" value="{{$customer->email}}" placeholder="{{__('front.email')}}" name="email" required>
                                    </div>
                                    <div class="form-group">
                                        <label>{{__('front.address')}}</label>
                                        <input type="text" value="{{$customer_address->new_address}}" class="form-control" placeholder="{{__('front.address')}}" name="address" required>
                                    </div>
                                </div>

                                <div class="col-md-6 col-lg-6">
                                    <div class="form-group">
                                        <label>{{__('front.buildNumber')}}</label>
                                        <input type="text" value="{{$customer_address->build_number}}" class="form-control" placeholder="{{__('front.buildNumber')}}" name="buildNumber" required>
                                    </div>
                                    <div class="form-group">
                                        <label>{{__('front.floorNumber')}}</label>
                                        <input type="text" value="{{$customer_address->floor_number}}" class="form-control" placeholder="{{__('front.floorNumber')}}" name="floorNumber" required>
                                    </div>
                                    <div class="form-group">
                                        <label>{{__('front.flatNumber')}}</label>
                                        <input type="text" value="{{$customer_address->flat_number}}" class="form-control" placeholder="{{__('front.flatNumber')}}" name="flatNumber" required>
                                    </div>
                                    <div class="form-group">
                                        <label>{{__('front.area')}}</label>
                                        <select required style="{{ $errors->has('area_id') ? 'border-color:red' : '' }}"  class="form-control" name="area_id" placeholder="{{__('front.area')}}">
                                            <option selected disabled value=""></option>
                                            @foreach($areas as $area)
                                                <option @if($area->id == $customer_address->area_id) selected @endif value="{{$area->id}}">{{(App::isLocale('ar')?$area->name:$area->name_en)}}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                </div>
                            </div>
                            <button type="submit" class="btn btn-default btn-main">{{__('front.edit')}}</button>

                        </form>
                    </div>
                </div>

            </div>
        </div>
    </section>
@endsection
