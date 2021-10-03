@extends('front.layouts.app')
@section('content')
    <link href="{{asset('front_assets/css/style.css')}}" rel="stylesheet">

    <section class="contact-form-wrap section mx-auto @if(App::isLocale('ar')) text-right @endif " @if(App::isLocale('ar'))dir="rtl" @endif>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-10 text-center ">
                    <span class="text-primary font-extra font-md">{{__('front.contactus')}}</span>
                    <h2 class="mb-5">{{__('front.getintouch')}} </h2>

                    <form id="contact-form" class="contact__form" method="post" action="{{route('Front.sendmessage',['lang'=>(App::isLocale('ar'))? 'ar' : 'en'])}}">
                        @csrf
                        <!-- form message -->
{{--                        <div class="row">--}}
{{--                            <div class="col-12">--}}
{{--                                <div class="alert alert-success contact__msg" style="display: none" role="alert">--}}
{{--                                    Your message was sent successfully.--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                        </div>--}}
                        <!-- end message -->

                        <div class="form-row">
                            <div class="form-group col-lg-6">
                                <input required name="name" type="text" class="form-control" placeholder="{{__('front.contactname')}}" mmclosedfield="true">
                            </div>
                            <div class="form-group col-lg-6">
                                <input required name="email" type="email" class="form-control" placeholder="{{__('front.email')}}" oldautocomplete="remove" autocomplete="off" mmclosedfield="true">
                                <div id="pwm-inline-icon-67525" class="pwm-field-icon" style="position: absolute !important; width: 18px !important; height: 18px !important; min-height: 0px !important; min-width: 0px !important; z-index: 2147483645 !important; box-shadow: none !important; box-sizing: content-box !important; background: none !important; border: none !important; padding: 0px !important; cursor: pointer !important; outline: none !important; margin-top: -39px; margin-left: 433px;"><svg style="display: inline-block !important; width: 16px !important; height: 16px !important; fill: rgb(230, 0, 23) !important; margin-top: 0.5px !important; position: absolute !important; top: 0px !important; left: 0px !important;" viewBox="0 0 40 64"><g><path d="m20,28.12a33.78,33.78 0 0 1 13.36,2.74a22.18,22.18 0 0 1 0.64,5.32c0,9.43 -5.66,17.81 -14,20.94c-8.34,-3.13 -14,-11.51 -14,-20.94a22.2,22.2 0 0 1 0.64,-5.32a33.78,33.78 0 0 1 13.36,-2.74m0,-28.12c-8.82,0 -14,7.36 -14,16.41l0,5.16c2,-1.2 2,-1.49 5,-2.08l0,-3.08c0,-6.21 2.9,-11.41 8.81,-11.41l0.19,0c6.6,0 9,4.77 9,11.41l0,3.08c3,0.58 3,0.88 5,2.08l0,-5.16c0,-9 -5.18,-16.41 -14,-16.41l0,0zm0,22c-6.39,0 -12.77,0.67 -18.47,4a31.6,31.6 0 0 0 -1.53,9.74c0,13.64 8.52,25 20,28.26c11.48,-3.27 20,-14.63 20,-28.26a31.66,31.66 0 0 0 -1.54,-9.77c-5.69,-3.3 -12.08,-4 -18.47,-4l0,0l0.01,0.03z"></path><path d="m21.23,39.5a2.81,2.81 0 0 0 1.77,-2.59a2.94,2.94 0 0 0 -3,-2.93a3,3 0 0 0 -3,3a2.66,2.66 0 0 0 1.77,2.48l-1.77,4.54l6,0l-1.77,-4.5z"></path></g></svg></div></div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-lg-6">
                                <input required name="phone" type="text" class="form-control" placeholder="{{__('front.phone')}}" mmclosedfield="true">
                            </div>
                            <div class="form-group col-lg-6">
                                <input required name="subject" type="text" class="form-control" placeholder="{{__('front.subject')}}" mmclosedfield="true">
                            </div>
                        </div>

                        <div class="form-group-2 mb-4">
                            <textarea required name="message" class="form-control" rows="8" placeholder="{{__('front.contactmessage')}}" spellcheck="false" mmclosedfield="true"></textarea>
                        </div>
                        <button class="btn btn-main btn-default "   type="submit">{{__('front.send')}}</button>
                    </form>
                </div>
            </div>
        </div>
    </section>
@endsection
