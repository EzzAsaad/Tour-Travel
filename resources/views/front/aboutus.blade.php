@extends('front.layouts.app')
@section('content')
    <link href="{{asset('front_assets/css/style.css')}}" rel="stylesheet">
    <style>
        ul li{
            list-style-type: none !important;
        }
    </style>

    <section class="section about-section position-relative border-bottom" style="margin-top: 10px!important;">
        <div class="container ">
            <div class="row @if(App::isLocale('ar')) text-right @endif " @if(App::isLocale('ar')) dir="rtl" @endif >
                <div class="col-lg-3 mb-5 mb-lg-0 col-md-6">
                    <img style="width: 255px;height: 383px" src="{{asset($settings->Photoone)}}" alt="" class="img-fluid">

                </div>

                <div class="col-lg-4 mb-5 mb-lg-0 col-md-6">
                    <img style="width: 350px;height: 525px" src="{{asset($settings->Phototwo)}}" alt="" class="img-fluid">
                </div>

                <div class="col-lg-5">
                    <h2 class="mb-4">{{__('front.about')}}</h2>
                    <p>
                        @if(App::isLocale('ar'))
                        {{$settings->aboutDescAr}}.
                        @else
                            {{$settings->aboutDescEn}}.
                        @endif
                    </p>

                    <p class="mb-4"></p>

                    <ul class="list-unstyled">
                        <li>
                            @if(App::isLocale('ar'))
                            <h4>- {{$settings->featureoneAr}}</h4>
                            @else
                                <h4>- {{$settings->featureoneEn}}</h4>
                            @endif
                        </li>

                        <li>
                            @if(App::isLocale('ar'))
                                <h4>- {{$settings->featuretwoAr}}</h4>
                            @else
                                <h4>- {{$settings->featuretwoEn}}</h4>
                            @endif
                        </li>

                        <li>
                            @if(App::isLocale('ar'))
                                <h4>- {{$settings->featurethreeAr}}</h4>
                            @else
                                <h4>- {{$settings->featurethreeEn}}</h4>
                            @endif
                        </li>
                    </ul>

                    <h3 class="booking" @if(App::isLocale('ar')) style="padding:10px 30px 10px 90px!important; margin-right: -116px;" @endif>
                        {{__('front.booknow')}} ! <br>{{$settings->phoneabout}}</h3>
                </div>
            </div>
        </div>
    </section>
@endsection
