<!DOCTYPE html>
<html lang="zxx">

<head>
    <?php
    $setting_header = \App\Models\Settings::first();
    //dd(json_decode($setting_header->slider));
    ?>
    <meta charset="utf-8">
    <meta name="description" content="{{$setting_header->EnDescription." ".$setting_header->ArDescription}}">
    <meta name="keywords" content="{{str_replace(" ",',',$setting_header->EnMetaKeywords)}}">
    <meta name="keywords" content="{{str_replace(" ",',',$setting_header->ArMetaKeywords)}}">
    <title>@if(App::isLocale('ar')) {{$setting_header->nameAr}} @else{{$setting_header->nameEn}} @endif</title>

    <!-- mobile responsive meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- ** Plugins Needed for the Project ** -->
    <!-- Bootstrap -->
    <link rel="stylesheet" href="{{asset('front_assets/plugins/bootstrap/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('front_assets/plugins/themify/css/themify-icons.css')}}">
    <link rel="stylesheet" href="{{asset('front_assets/plugins/icofont/icofont.min.css')}}">
    <link rel="stylesheet" href="{{asset('front_assets/plugins/fontawesome/css/all.css')}}">
    <link rel="stylesheet" href="{{asset('front_assets/plugins/aos/aos.css')}}">
    <link rel="stylesheet" href="{{asset('front_assets/plugins/magnific-popup/magnific-popup.css')}}">
    <link rel="stylesheet" href="{{asset('front_assets/plugins/video-popup/modal-video.min.css')}}">
    <link rel="stylesheet" href="{{asset('front_assets/plugins/swiper/swiper.min.css')}}">
    <link rel="stylesheet" href="{{asset('front_assets/plugins/date-picker/datepicker.min.css')}}">
    <link rel="stylesheet" href="{{asset('front_assets/plugins/clock-picker/clockpicker.min.css')}}">
    <link rel="stylesheet" href="{{asset('front_assets/plugins/bootstrap-touchpin/jquery.bootstrap-touchspin.min.css')}}">
    <link rel="stylesheet" href="{{asset("front_assets/plugins/devices.min.css")}}">

    <!-- Main Stylesheet -->
    <link href="{{asset('front_assets/css/style.css')}}" rel="stylesheet">

    <!--Favicon-->
    <link rel="shortcut icon" href="{{asset($setting_header->favIcon)}}" type="image/x-icon">
    <link rel="icon" href="{{asset($setting_header->favIcon)}}" type="image/x-icon">

    <link
        rel="stylesheet"
        href="https://unpkg.com/polipop/dist/css/polipop.core.min.css"
    />
    <link
        rel="stylesheet"
        href="https://unpkg.com/polipop/dist/css/polipop.default.min.css"
    />

</head>

<body>
<div class="preloader">
    <img src="{{asset('front_assets/images/preloader.gif')}}" alt="preloader" class="img-fluid">
</div>

<!-- Header Start -->

<header class="navigation ">
    <nav class="navbar navbar-expand-lg main-nav py-lg-3 position-absolute w-100" id="main-nav">
        <div class="container" @if(App::isLocale('ar'))dir="rtl" @endif>
            <a class="navbar-brand" href="{{url('/')}}">
                <img src="{{asset($setting_header->logo)}}" alt="" class="img-fluid">
            </a>

            <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navigation"
                    aria-controls="navigation" aria-expanded="false" aria-label="Toggle navigation">
                <span class="fa fa-bars"></span>
            </button>

        </div>
    </nav>
</header>

<!-- Header Close -->

<!--  Banner start -->
<!--  Banner End -->

<section class="contact-form-wrap section @if(App::isLocale('ar')) text-right @endif " @if(App::isLocale('ar'))dir="rtl" @endif>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-10 text-center ">
                <span class="text-primary font-extra font-md">{{__('front.contactus')}}</span>
                <h2 class="mb-5">{{__('front.getintouch')}} </h2>

                <div id="contact-form" class="contact__form" >
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

                    <div class="form-row" style="border:1px solid red;">
                        <div class="form-group col-lg-6">
                            <input required name="name" value="{{!! $name !!}}" type="text" class="form-control" placeholder="{{__('front.contactname')}}" mmclosedfield="true">
                        </div>
                        <div class="form-group col-lg-6">
                            <input required name="email" value="{{!! $email !!}}" type="email" class="form-control" placeholder="{{__('front.email')}}" oldautocomplete="remove" autocomplete="off" mmclosedfield="true">
                            <div id="pwm-inline-icon-67525" class="pwm-field-icon" style="position: absolute !important; width: 18px !important; height: 18px !important; min-height: 0px !important; min-width: 0px !important; z-index: 2147483645 !important; box-shadow: none !important; box-sizing: content-box !important; background: none !important; border: none !important; padding: 0px !important; cursor: pointer !important; outline: none !important; margin-top: -39px; margin-left: 433px;"><svg style="display: inline-block !important; width: 16px !important; height: 16px !important; fill: rgb(230, 0, 23) !important; margin-top: 0.5px !important; position: absolute !important; top: 0px !important; left: 0px !important;" viewBox="0 0 40 64"><g><path d="m20,28.12a33.78,33.78 0 0 1 13.36,2.74a22.18,22.18 0 0 1 0.64,5.32c0,9.43 -5.66,17.81 -14,20.94c-8.34,-3.13 -14,-11.51 -14,-20.94a22.2,22.2 0 0 1 0.64,-5.32a33.78,33.78 0 0 1 13.36,-2.74m0,-28.12c-8.82,0 -14,7.36 -14,16.41l0,5.16c2,-1.2 2,-1.49 5,-2.08l0,-3.08c0,-6.21 2.9,-11.41 8.81,-11.41l0.19,0c6.6,0 9,4.77 9,11.41l0,3.08c3,0.58 3,0.88 5,2.08l0,-5.16c0,-9 -5.18,-16.41 -14,-16.41l0,0zm0,22c-6.39,0 -12.77,0.67 -18.47,4a31.6,31.6 0 0 0 -1.53,9.74c0,13.64 8.52,25 20,28.26c11.48,-3.27 20,-14.63 20,-28.26a31.66,31.66 0 0 0 -1.54,-9.77c-5.69,-3.3 -12.08,-4 -18.47,-4l0,0l0.01,0.03z"></path><path d="m21.23,39.5a2.81,2.81 0 0 0 1.77,-2.59a2.94,2.94 0 0 0 -3,-2.93a3,3 0 0 0 -3,3a2.66,2.66 0 0 0 1.77,2.48l-1.77,4.54l6,0l-1.77,-4.5z"></path></g></svg></div></div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-lg-6">
                            <input required name="phone" type="text" value="{{!! $phone !!}}" class="form-control" placeholder="{{__('front.phone')}}" mmclosedfield="true">
                        </div>
                        <div class="form-group col-lg-6">
                            <input required name="subject" type="text" class="form-control" placeholder="{{__('front.subject')}}" mmclosedfield="true">
                        </div>
                    </div>

                    <div class="form-group-2 mb-4">
                        <textarea required name="message" class="form-control" rows="8" placeholder="{{__('front.contactmessage')}}" spellcheck="false" mmclosedfield="true"></textarea>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!--Footer start -->
<footer class="section footer" @if(App::isLocale('ar'))dir="rtl" @endif>
    <div class="container @if(App::isLocale('ar')) text-right @endif">
        <div class="row justify-content-center">
            <div class="col-lg-4 col-md-3 mb-5 mb-lg-0">
                <div class="widget">
                    <h4 class="mb-3">{{__('front.about')}}</h4>
                    <p>{{__('front.descAbout')}}</p>
                    @if(App::isLocale('ar'))
                        <style>
                            .list-inline-item:not(:last-child) {
                                margin-right: .5rem !important;
                            }
                            .list-inline-item:last-child {
                                margin-right: .5rem !important;
                            }
                        </style>
                    @endif
                    <ul class="list-inline footer-socials mt-4 @if(App::isLocale('ar')) float-right @endif " @if(App::isLocale('ar')) style="padding-right: 0px" @endif>
                        <?php  $socials = \App\Models\Social::where('status',1)->get();?>
                        @foreach($socials as $social)
                        <li class="list-inline-item"><a href="{{$social->link}}"><img style="width: 50px;height: 50px;" src="{{asset($social->icon)}}"></a></li>
                        @endforeach

                    </ul>
                </div>
            </div>

            <div class="col-lg-4 ml-auto col-md-5 mb-5 mb-lg-0">
                <div class="widget p-0" >
                    <h4 class="mb-3">{{__('front.contactinfo')}}</h4>

                    <ul @if(App::isLocale('ar')) style="padding-right: 0px" @endif class="list-unstyled mb-0 footer-contact">

                        <li><i class="fa fa-mobile-alt @if(App::isLocale('ar')) ml-1 @endif "></i>{{$setting_header->phone}}</li>
                        <li><i class="fa fa-envelope @if(App::isLocale('ar')) ml-1 @endif"></i>{{$setting_header->email}}</li>
                        <li><i class="fa fa-map @if(App::isLocale('ar')) ml-1 @endif"></i>{{__('front.testaddress')}}</li>

                    </ul>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 mb-5 mb-lg-0">
                <div class="widget">
                    <h4 class="mb-3">{{__('front.openinghours')}}</h4>

                    <div class="info mb-4">
                        <p class="mb-0">{{__('front.testdaysone')}}</p>
                        <h5>10:00 AM - 11:00 PM</h5>
                    </div>
                    <div class="info">
                        <p class="mb-0">{{__('front.testdaystwo')}}</p>
                        <h5>12:00 AM - 03:00 AM</h5>
                    </div>
                </div>
            </div>
        </div>

{{--        <div class="row justify-content-center mt-5">--}}
{{--            <div class="col-lg-6 text-center">--}}
{{--                <h4 class="text-white-50 mb-3">Get latest food recipe at your inbox</h4>--}}
{{--                <form action="#" class="footer-newsletter">--}}
{{--                    <div class="form-group">--}}
{{--                        <button class="button"><span class="ti-email"></span></button>--}}
{{--                        <input type="email" class="form-control" placeholder="Enter Email">--}}
{{--                    </div>--}}
{{--                </form>--}}
{{--            </div>--}}
{{--        </div>--}}
    </div>
</footer>

<section class="footer-btm py-3">
    <div class="container" @if(App::isLocale('ar'))dir="rtl" @endif>
        <div class="row">
            <div class="col-lg-12">
                <div class="d-md-flex justify-content-between align-items-center py-3  text-center">
                    <p class="mb-0"><a href="#" class="text-white">LogApps</a> &copy; 2021 </p>

{{--                    <div class="footer-menu mt-3 mt-lg-0">--}}
{{--                        <ul class="list-inline mb-0">--}}
{{--                            <li class="list-inline-item pl-2"><a href="index.html">Home</a></li>--}}
{{--                            <li class="list-inline-item pl-2"><a href="about.html">About Us</a></li>--}}
{{--                            <li class="list-inline-item pl-2"><a href="gallery.html">Gallery</a></li>--}}
{{--                            <li class="list-inline-item pl-2"><a href="policy.html">Privacy Policy</a></li>--}}
{{--                            <li class="list-inline-item pl-2"><a href="terms.html">Use of terms</a></li>--}}
{{--                        </ul>--}}
{{--                    </div>--}}
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Footer  End -->

<!-- jQuery -->
<script src="{{asset('front_assets/plugins/jQuery/jquery.min.js')}}"></script>
<!-- Bootstrap JS -->
<script src="{{asset('front_assets/plugins/bootstrap/bootstrap.min.js')}}"></script>
<script src="{{asset('front_assets/plugins/aos/aos.js')}}"></script>
<script src="{{asset('front_assets/plugins/shuffle/shuffle.min.js')}}"></script>
<script src="{{asset('front_assets/plugins/magnific-popup/jquery.magnific-popup.min.js')}}"></script>
<script src="{{asset('front_assets/plugins/date-picker/datepicker.min.js')}}"></script>
<script src="{{asset('front_assets/plugins/clock-picker/clockpicker.min.js')}}"></script>
<script src="{{asset('front_assets/plugins/video-popup/jquery-modal-video.min.js')}}"></script>
<script src="{{asset('front_assets/plugins/swiper/swiper.min.js')}}"></script>
<script src="{{asset('front_assets/plugins/instafeed/instafeed.min.js')}}"></script>
<script src="{{asset('front_assets/plugins/bootstrap-touchpin/jquery.bootstrap-touchspin.min.js')}}"></script>

<!-- Google Map -->
<script src="{{asset('front_assets/https://maps.googleapis.com/maps/api/js?key=AIzaSyBu5nZKbeK-WHQ70oqOWo-_4VmwOwKP9YQ')}}"></script>
<script src="{{asset('front_assets/plugins/google-map/gmap.js')}}"></script>
<!-- Main Script -->
<script src="{{asset('front_assets/js/contact.js')}}"></script>
<script src="{{asset('front_assets/js/script.js')}}"></script>

<script src="https://unpkg.com/polipop/dist/polipop.min.js"></script>


<script>
    var polipop = new Polipop('mypolipop', {
        layout: 'popups',
        insert: 'before',
        pool: 5,
        progressbar: true,
        @if(App::isLocale('ar'))
        position:"bottom-left"
        @else
        position:"bottom-right"
        @endif
    });
    @if($errors->any())
    @foreach($errors->all() as $error)
    polipop.add({
        content: '{{$error}}',
        title: '{{__('alert.titleval')}}',
        type: 'error',
        life: 500
    });
    @endforeach
    @endif
    @if(session()->has('successM'))
    polipop.add({
        content: '{{session()->get('successM')}}',
        title: '{{__('alert.titlesuc')}}',
        type: 'success',
        life: 500
    });
    @endif
</script>

</html>
