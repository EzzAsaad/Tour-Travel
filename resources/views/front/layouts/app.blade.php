<!DOCTYPE html>
<html lang="zxx">
<!--[if lt IE 7]>		<html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>			<html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>			<html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->	<html class="no-js" lang=""> <!--<![endif]-->
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

    <!-- Main Stylesheet -->

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
    <link
        rel="stylesheet"
        href="https://unpkg.com/swiper@7/swiper-bundle.min.css"
    />

    <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>


    <link rel="apple-touch-icon" href="{{asset('apple-touch-icon.png')}}">
    <link rel="stylesheet" href="{{asset('assets/css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('front_assets/plugins/bootstrap/bootstrap.min.css')}}">

    <link rel="stylesheet" href="{{asset('assets/css/normalize.css')}}">
{{--        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">--}}

        <link rel="stylesheet" href="{{asset('assets/css/font-awesome.min.css')}}">
    <link rel="stylesheet" href="{{asset('assets/css/icomoon.css')}}">
    <link rel="stylesheet" href="{{asset('assets/css/owl.carousel.css')}}">
    <link rel="stylesheet" href="{{asset('assets/css/bootstrap-select.css')}}">
    <link rel="stylesheet" href="{{asset('assets/css/scrollbar.css')}}">
    <link rel="stylesheet" href="{{asset('assets/css/jquery.mmenu.all.css')}}">
    <link rel="stylesheet" href="{{asset('assets/css/prettyPhoto.css')}}">
    <link rel="stylesheet" href="{{asset('assets/css/transitions.css')}}">
    <link rel="stylesheet" href="{{asset('assets/css/main.css')}}">
    <link rel="stylesheet" href="{{asset('assets/css/color.css')}}">
    <link rel="stylesheet" href="{{asset('assets/css/responsive.css')}}">
    <script src="{{asset('assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js')}}"></script>

</head>

<body class="tg-home tg-homevtwo">
<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->
<!--************************************
            Loader Start
*************************************-->
<div class="loader">
    <div class="span">
        <div class="location_indicator"></div>
    </div>
</div>
<!--************************************
            Loader End
*************************************-->
<!--************************************
        Mobile Menu Start
*************************************-->
<nav id="menu">
    <ul>
        <li><a href="{{url("/")}}">Home</a></li>
        <li><a href="#">Destinations</a></li>
        <li><a href="#">Tours</a></li>
        <li><a href="#">Programs</a></li>
        <li><a href="#">Packages</a></li>
        @if(\Illuminate\Support\Facades\Auth::guard('customer')->guest())
        <li><a  href="{{route("Front.loginregister",["lang"=>((App::isLocale('ar'))?"ar":"en")])}}">sign in/Register</a></li>
        @else
        @endif
    </ul>
</nav>
<!--************************************
        Mobile Menu End
*************************************-->
<!--************************************
        Wrapper Start
*************************************-->
<div id="tg-wrapper" class="tg-wrapper tg-haslayout">
    <!--************************************
            Header Start
    *************************************-->
    <header id="tg-header" class="tg-header tg-haslayout">
        <div class="container-fluid">
            <div class="row">
{{--                <div class="tg-topbar">--}}
{{--                    <nav class="tg-infonav">--}}
{{--                        <ul>--}}
{{--                            <li>--}}
{{--                                <i><img src="{{asset('assets/images/icons/icon-01.png')}}" alt="image destinations"></i>--}}
{{--                                <span>{{$setting_header->phone}}</span>--}}
{{--                            </li>--}}
{{--                            <li>--}}
{{--                                <i><img src="{{asset('assets/images/icons/icon-02.png')}}" alt="image destinations"></i>--}}
{{--                                <span>CHOOSE YOUR EXPERIENCE <a href="{{route('Front.destinations',['lang'=>(App::isLocale('ar')?'ar':'en')])}}">Discover more</a></span>--}}
{{--                            </li>--}}
{{--                        </ul>--}}
{{--                    </nav>--}}
{{--                    <div class="tg-addnavcartsearch">--}}
{{--                        <nav class="tg-addnav">--}}
{{--                            <ul>--}}
{{--                                <li><a href="{{route('Front.aboutus',['lang'=>App::isLocale('ar')?'ar':'en'])}}">about</a></li>--}}
{{--                                <li><a href="{{route('Front.contactus',['lang'=>App::isLocale('ar')?'ar':'en'])}}">contact</a></li>--}}
{{--                            </ul>--}}
{{--                        </nav>--}}
{{--                        <nav class="tg-cartsearch">--}}
{{--                        </nav>--}}
{{--                    </div>--}}
{{--                </div>--}}
                <div class="tg-navigationarea tg-headerfixed" style="background-color: #000000;">
                    <strong class="tg-logo"><a href="{{url('/')}}"><img style="width:90px;height:42px" src="{{asset($setting_header->logo)}}" alt="company logo here"></a></strong>
                    <div class="tg-socialsignin">
                        <ul class="tg-socialicons" style="color:white!important;">
                            <?php  $socials = \App\Models\Social::where('status',1)->get();?>
                            @foreach($socials as $social)
                                <li class="list-inline-item"><a href="{{$social->link}}"><img style="width: 20px;height: 20px;" src="{{asset($social->icon)}}"></a></li>
                            @endforeach
                        </ul>
                        @if(!\Illuminate\Support\Facades\Auth::guard('customer')->guest())
                        <div class="tg-userbox">
                            <div class="dropdown tg-dropdown">
                                <button class="tg-btndropdown" id="tg-dropdowndashboard" type="button" data-toggle="dropdown">
{{--                                    <img src="{{asset('assets/images/author/img-01.jpg')}}" alt="image description">--}}
                                    <span>{{\Illuminate\Support\Facades\Auth::guard('customer')->user()->name}}</span>
                                    <i class="fa fa-caret-down"></i>
                                </button>
                                <ul class="dropdown-menu tg-dropdownusermenu" aria-labelledby="tg-dropdowndashboard">
                                    <li><a href="{{route('Front.profile',['lang'=>App::isLocale('ar')?'ar':'en','id'=>auth()->guard('customer')->user()->id])}}">Edit Profile</a></li>
                                    <li>
                                        <a href="{{ url('/customer/logout') }}"
                                           onclick="event.preventDefault();
                                                 document.getElementById('logout-form').submit();">
                                            Sign Out
                                        </a>

                                        <form id="logout-form" action="{{ url('/customer/logout') }}" method="POST" style="display: none;">
                                            {{ csrf_field() }}
                                        </form>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        @endif
                    </div>
                    <nav  id="tg-nav" class="tg-nav">
                        <div class="navbar-header">
                            <a href="#menu" class="navbar-toggle collapsed">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </a>
                        </div>
                        <div id="tg-navigation" class="collapse navbar-collapse tg-navigation">
                            <ul>
                                <li class="menu-item-has-children">
                                    <a href="{{url('/')}}">Home</a>
                                </li>
                                <li><a href="{{route('Front.destinations',['lang'=>(App::isLocale('ar')?'ar':'en')])}}">destinations</a></li>
                                <li><a href="{{route('Front.tours',['lang'=>(App::isLocale('ar')?'ar':'en')])}}">Tours</a></li>
                                <li><a href="{{route('Front.galleries',['lang'=>(App::isLocale('ar')?'ar':'en')])}}">Gallery</a></li>
                                <li><a href="{{route('Front.aboutus',['lang'=>App::isLocale('ar')?'ar':'en'])}}">about</a></li>
                                <li><a href="{{route('Front.contactus',['lang'=>App::isLocale('ar')?'ar':'en'])}}">contact</a></li>
                            @if(\Illuminate\Support\Facades\Auth::guard('customer')->guest())
                                <li><a href="{{route("Front.loginregister",["lang"=>((App::isLocale('ar'))?"ar":"en")])}}">Login/Register</a></li>
                            @endif
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!--************************************
            Header End
    *************************************-->
    <!--************************************
            Home Slider Start
    *************************************-->
    <!-- Slider main container -->
    <style>
        .swiper {
  width: 600px;
  height: 300px;
}
    </style>
    <!-- <div class="swiper">
        <div class="swiper-wrapper">
        @foreach(json_decode($setting_header->slider) as $slide)
            <figure class="item swiper-slide" data-vide-bg="poster: {{asset($slide)}}" data-vide-options="position: 0% 50%">
                <figcaption>
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-7">
                                <div class="tg-slidercontent">
                                    <h1>Planning a Trip to Egypt?</h1>
                                    <h2>{{$setting_header->slider_infoEn}}</h2>
                                    <a class="tg-btn" href="{{route('Front.tours',['lang'=>(App::isLocale('ar')?'ar':'en')])}}"><span>Explore Tour</span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </figcaption>
            </figure>
            @endforeach
        </div>
        <div class="swiper-pagination"></div>

        <div class="swiper-button-prev"></div>
        <div class="swiper-button-next"></div>

        <div class="swiper-scrollbar"></div> -->
    <div id="tg-homebannerslider" class="tg-homebannerslider tg-haslayout">
        <div id="tg-homeslider" class="tg-homeslider tg-homeslidervtwo owl-carousel tg-haslayout">
            @foreach(json_decode($setting_header->slider) as $slide)
            <figure class="item" data-vide-bg="poster: {{asset($slide)}}" data-vide-options="position: 0% 50%">
                <figcaption>
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-7">
                                <div class="tg-slidercontent">
                                    <h1>Planning a Trip to Egypt?</h1>
                                    <h2>{{$setting_header->slider_infoEn}}</h2>
                                    <a class="tg-btn" href="{{route('Front.tours',['lang'=>(App::isLocale('ar')?'ar':'en')])}}"><span>Explore Tour</span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </figcaption>
            </figure>
            @endforeach
        </div>

        </div>
{{--        <div class="tg-findtour">--}}
{{--            <div class="container">--}}
{{--                <div class="row">--}}
{{--                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">--}}
{{--                        <form class="tg-formtheme tg-formtrip">--}}
{{--                            <fieldset>--}}
{{--                                <div class="form-group">--}}
{{--                                    <div class="tg-select">--}}
{{--                                        <select class="selectpicker" data-live-search="true" data-width="100%">--}}
{{--                                            <option data-tokens="Destinations">Destinations</option>--}}
{{--                                            <option data-tokens="All Areas">All Areas</option>--}}
{{--                                            <option data-tokens="Bayonne">Bayonne</option>--}}
{{--                                            <option data-tokens="Greenville">Greenville</option>--}}
{{--                                            <option data-tokens="Manhattan">Manhattan</option>--}}
{{--                                            <option data-tokens="Queens">Queens</option>--}}
{{--                                            <option data-tokens="The Heights">The Heights</option>--}}
{{--                                        </select>--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                                <div class="form-group">--}}
{{--                                    <div class="tg-select">--}}
{{--                                        <select class="selectpicker" data-live-search="true" data-width="100%">--}}
{{--                                            <option data-tokens="Adventure Type">Adventure Type</option>--}}
{{--                                            <option data-tokens="Ice Adventure Vacations">Ice Adventure Vacations</option>--}}
{{--                                            <option data-tokens="National Park">National Park</option>--}}
{{--                                            <option data-tokens="Adult Vacations">Adult Vacations</option>--}}
{{--                                        </select>--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                                <div class="form-group">--}}
{{--                                    <div class="tg-select">--}}
{{--                                        <select class="selectpicker" data-live-search="true" data-width="100%">--}}
{{--                                            <option data-tokens="Travel Month">Travel Month</option>--}}
{{--                                            <option data-tokens="January">January</option>--}}
{{--                                            <option data-tokens="February">February</option>--}}
{{--                                            <option data-tokens="March">March</option>--}}
{{--                                            <option data-tokens="April">April</option>--}}
{{--                                            <option data-tokens="May">May</option>--}}
{{--                                            <option data-tokens="June">June</option>--}}
{{--                                            <option data-tokens="July">July</option>--}}
{{--                                            <option data-tokens="August">August</option>--}}
{{--                                            <option data-tokens="September">September</option>--}}
{{--                                            <option data-tokens="October">October</option>--}}
{{--                                            <option data-tokens="November">November</option>--}}
{{--                                            <option data-tokens="December">December</option>--}}
{{--                                        </select>--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                                <div class="form-group">--}}
{{--                                    <div class="tg-select">--}}
{{--                                        <select class="selectpicker" data-live-search="true" data-width="100%">--}}
{{--                                            <option data-tokens="Duration">Duration</option>--}}
{{--                                            <option data-tokens="2 weeks">2 weeks</option>--}}
{{--                                            <option data-tokens="3 weeks">3 weeks</option>--}}
{{--                                            <option data-tokens="4 weeks">4 weeks</option>--}}
{{--                                            <option data-tokens="5 weeks">5 weeks</option>--}}
{{--                                            <option data-tokens="6 weeks">6 weeks</option>--}}
{{--                                            <option data-tokens="7 weeks">7 weeks</option>--}}
{{--                                            <option data-tokens="8 weeks">8 weeks</option>--}}
{{--                                            <option data-tokens="9 weeks">9 weeks</option>--}}
{{--                                            <option data-tokens="10 weeks">10 weeks</option>--}}
{{--                                        </select>--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                                <div class="form-group">--}}
{{--                                    <button class="tg-btn" type="submit"><span>find tours</span></button>--}}
{{--                                </div>--}}
{{--                            </fieldset>--}}
{{--                        </form>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </div>--}}
    </div>
    <!--************************************
            Home Slider End
    *************************************-->
    <!--************************************
            Main Start
    *************************************-->
    @yield('content')
    <!--************************************
            Main End
    *************************************-->
    <!--************************************
            Footer Start
    *************************************-->
    <footer id="tg-footer" class="tg-footer tg-haslayout">
        <div class="tg-fourcolumns">
            <div class="container">
                <div class="row">
                    <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3">
                        <div class="tg-footercolumn tg-widget tg-widgettext">
                            <div class="tg-widgettitle">
                                <h3>About @if(App::isLocale('ar')) {{$setting_header->nameAr}} @else{{$setting_header->nameEn}} @endif</h3>
                            </div>
                            <div class="tg-widgetcontent">
                                <div class="tg-description">
                                    <p>{{(App::isLocale('ar')?App\Models\Settings::first()->aboutDescAr : App\Models\Settings::first()->aboutDescEn)}}</p>
                                </div>
                                <span>{{$setting_header->phoneabout}}</span>
                                <a href="{{$setting_header->email}}">{{$setting_header->email}}</a>
                                <ul class="tg-socialicons tg-socialiconsvtwo">
                                    <?php  $socials = \App\Models\Social::where('status',1)->get();?>
                                    @foreach($socials as $social)
                                        <li class="list-inline-item"><a href="{{$social->link}}"><img style="width: 40px;height: 40px;" src="{{asset($social->icon)}}"></a></li>
                                    @endforeach
{{--                                    <li><a href="javascript:void(0);"><i class="icon-facebook-logo-outline"></i></a></li>--}}
{{--                                    <li><a href="javascript:void(0);"><i class="icon-instagram-social-outlined-logo"></i></a></li>--}}
{{--                                    <li><a href="javascript:void(0);"><i class="icon-twitter-social-outlined-logo"></i></a></li>--}}
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3">
                        <div class="tg-footercolumn tg-widget tg-widgettravelunews">
                            <div class="tg-widgettitle">
                                <h3>@if(App::isLocale('ar')) {{$setting_header->nameAr}} @else{{$setting_header->nameEn}} @endif Programs</h3>
                            </div>
                            <div class="tg-widgetcontent">
                                <ul>
                                    <?php $programs =  App\Models\Program::where('status',1)->latest('created_at')->paginate(2);?>
                                    @foreach($programs as $program)
                                    <li>
                                        <figure>
                                            <?php $image = json_decode($program->images)[0]?>
                                            <a href="javascript:void(0);"><img style="width:63px;height:63px ;" src="{{asset($image)}}" alt="image destinations"></a>
                                        </figure>
                                        <div class="tg-newcontent">
                                            <h4><a href="javascript:void(0);">{{$program->name}}</a></h4>
                                            <div class="tg-description">
                                                <p>{{$program->shortDesc}}</p>
                                            </div>
                                            <time>{{$program->created_at->format('Y-m-d')}}</time>
                                        </div>
                                    </li>
                                    @endforeach
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3">
                        <div class="tg-footercolumn tg-widget tg-widgetdestinations">
                            <div class="tg-widgettitle">
                                <h3>Top Destinations</h3>
                            </div>
                            <div class="tg-widgetcontent">
                                <ul>
                                    <?php $destinations = DB::table('packages')->where('status',1)->select('destination')->groupBy('destination')->get(); ?>
                                        @foreach($destinations as $destination)
                                            @if($destination->destination == null)
                                            @else
                                    <li><a href="{{route('Front.destinationProgram',['name'=>$destination->destination,'lang'=>(App::isLocale('ar')?'ar':'en')])}}">{{$destination->destination}}</a></li>
                                            @endif
                                    @endforeach
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3">
                        <div class="tg-footercolumn tg-widget tg-widgetnewsletter">
                            <div class="tg-widgettitle">
                                <h3>Newsletter</h3>
                            </div>
                            <div class="tg-widgetcontent">
                                <div class="tg-description"><p>Sign up for our mailing list to get latest updates and offers</p></div>
                                <form class="tg-formtheme tg-formnewsletter">
                                    <fieldset>
                                        <input type="email" name="email" class="form-control" placeholder="Your Email">
                                        <button type="submit"><img src="{{asset('assets/images/icons/icon-08.png')}}" alt="image destinations"></button>
                                    </fieldset>
                                </form>
                                <span>We respect your privacy</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="tg-footerbar">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <p><a href="https://hosting.log-apps.com/en"> Copyright &copy; 2021 LogApps. All  rights reserved</a></p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!--************************************
            Footer End
    *************************************-->
</div>
<!--************************************
        Wrapper End
*************************************-->
<!--************************************
        Search Start
*************************************-->
<div id="tg-search" class="tg-search">
    <button type="button" class="close"><i class="icon-cross"></i></button>
    <form>
        <fieldset>
            <div class="form-group">
                <input type="search" name="search" class="form-control" value="" placeholder="search here">
                <button type="submit" class="tg-btn"><span class="icon-search2"></span></button>
            </div>
        </fieldset>
    </form>
    <ul class="tg-destinations">
        <li>
            <a href="javascript:void(0);">
                <h3>Europe</h3>
                <em>(05)</em>
            </a>
        </li>
        <li>
            <a href="javascript:void(0);">
                <h3>Africa</h3>
                <em>(15)</em>
            </a>
        </li>
        <li>
            <a href="javascript:void(0);">
                <h3>Asia</h3>
                <em>(12)</em>
            </a>
        </li>
        <li>
            <a href="javascript:void(0);">
                <h3>Oceania</h3>
                <em>(02)</em>
            </a>
        </li>
        <li>
            <a href="javascript:void(0);">
                <h3>North America</h3>
                <em>(08)</em>
            </a>
        </li>
    </ul>
</div>
<!--************************************
        Search End
*************************************-->
<!--************************************
        Login Singup Start
*************************************-->
<!--************************************
        Login Singup End
*************************************-->

<script src="{{asset('assets/js/vendor/jquery-library.js')}}"></script>
<script src="{{asset('assets/js/vendor/bootstrap.min.js')}}"></script>
<script src="{{asset('assets/js/bootstrap-select.min.js')}}"></script>
<script src="{{asset('assets/js/jquery-scrolltofixed.js')}}"></script>
<script src="{{asset('assets/js/owl.carousel.min.js')}}"></script>
<script src="{{asset('assets/js/jquery.mmenu.all.js')}}"></script>
<script src="{{asset('assets/js/packery.pkgd.min.js')}}"></script>
<script src="{{asset('assets/js/jquery.vide.min.js')}}"></script>
<script src="{{asset('assets/js/scrollbar.min.js')}}"></script>
<script src="{{asset('assets/js/prettyPhoto.js')}}"></script>
<script src="{{asset('assets/js/countdown.js')}}"></script>
<script src="{{asset('assets/js/parallax.js')}}"></script>
<script src="{{asset('assets/js/gmap3.js')}}"></script>
<script src="{{asset('assets/js/main.js')}}"></script>
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


    // const swiper = new Swiper('.swiper', {
    //     direction: 'horizontal',
    //     loop: true,
    //     slidesPerView: 1,
    //     spaceBetween: 10,

    //     // If we need pagination
    //     pagination: {
    //         el: '.swiper-pagination',
    //     },

    //     // Navigation arrows
    //     navigation: {
    //         nextEl: '.swiper-button-next',
    //         prevEl: '.swiper-button-prev',
    //     },

    //     // And if we need scrollbar
    //     scrollbar: {
    //         el: '.swiper-scrollbar',
    //     },
    // });
</script>
<style>
    .float{
        position:fixed;
        width:60px;
        height:60px;
        bottom:60px;
        right:40px;
        background-color:#25d366;
        color:#FFF;
        border-radius:50px;
        text-align:center;
        font-size:30px;
        box-shadow: 2px 2px 3px #999;
        z-index:999;
    }

    .my-float{
        margin-top:16px;
    }
</style>
<a href="https://wa.me/01001235333" target="_blank" class="wptwa-account"  data-auto-text="" title="click to open whatsapp chat"><button class="float">
        <i class="fa fa-whatsapp"></i>
    </button></a>
</html>
