@extends('front.layouts.app')
@section('content')
    <main id="tg-main" class="tg-main tg-haslayout">
        <!--************************************
                Tranding Trips Start
        *************************************-->
        <section class="tg-sectionspace tg-haslayout" style="padding: 20px 0 !important;">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" >
                        <div class="tg-sectionhead tg-sectionheadvtwo" style="padding-top: 60px!important;" >
                            <div class="tg-sectiontitle">
                                <h1 style="text-align: center;">Private Guides Gold Seal<br>
                                    <span style="font-family: Berkshire Swash, serif !important;">Hebba Ezz Eldin</span></h1>
                            </div>

                            <?php
                            $setting_header = \App\Models\Settings::first();
                            //dd(json_decode($setting_header->slider));
                            ?>
                            <a href="{{$setting_header->tripadvisorlink}}"><img width="270px" height="190px" src="{{asset('/front_assets/images/badge-tripadvisor-winner.png')}}"></a>
                            <a class="pr-5" href="{{$setting_header->privateguidelink}}"><img width="270px" height="190px" src="{{asset('/front_assets/images/Private-Guides-gold-seal-2-1187.gif')}}"></a>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <div class="tg-sectionhead tg-sectionheadvtwo">
                            <div class="tg-sectiontitle">
                                <h2>Newest Programs</h2>
                            </div>
                            <div class="tg-description">
                                <p>Newest Programs is ranking newest programs in Egypt with good services and special offers, you will never regret meeting us!</p>
                            </div>
                        </div>
                    </div>
                    <div class="tg-trendingtrips">
                        <?php $programs =  App\Models\Program::where('status',1)->latest('created_at')->paginate(6);?>
                        @foreach($programs as $program)
                        <div class="col-xs-6 col-sm-4 col-md-4 col-lg-4">
                            <div class="tg-trendingtrip">
                                <figure>
                                    <a href="{{route('Front.program',['lang'=>(App::isLocale('ar')?"ar":"en"),'id'=>$program->id])}}">
                                        <?php $image = json_decode($program->images)[0]?>
                                        <img style="width:360px;height:256px"  src="{{asset($image)}}" alt="image destinations">
                                        <div class="tg-hover">
                                            <span class="tg-stars"><span></span></span>
                                            <span class="tg-tourduration">{{$program->package->days}} Days</span>
                                            <span class="tg-locationname">Egypt</span>
                                            @if($program->discount != 0)
                                                <div class="tg-pricearea">
                                                    <span>From</span>
                                                    <del>${{$program->price_us}}</del>
                                                    <sub>or</sub>
                                                    <del>{{$program->price_egp}}EGP</del>
                                                    <h4>${{($program->price_us*$program->discount)/100}}<sub>/ per person</sub></h4>
                                                    <h4>{{($program->price_egp*$program->discount)/100}}EGP<sub>/ per person</sub></h4>
                                                </div>
                                            @else
                                                <div class="tg-pricearea">
                                                    <h4>${{($program->price_us)}}<sub>/ per person</sub></h4>
                                                    <sub>or</sub>
                                                    <h4>{{($program->price_egp)/100}}EGP<sub>/ per person</sub></h4>
                                                </div>
                                            @endif
                                        </div>
                                    </a>
                                </figure>
                                <div class="tg-populartourcontent">
                                    <div class="tg-populartourtitle">
                                        <h3><a href="{{route('Front.program',['lang'=>(App::isLocale('ar')?"ar":"en"),'id'=>$program->id])}}">{{$program->name}}, Egypt</a></h3>
                                    </div>
                                    <div class="tg-description">
                                        <p>{{$program->shortDesc}}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </section>
        <!--************************************
                Tranding Trips End
        *************************************-->
        <!--************************************
                Popular Destination Start
        *************************************-->
        <section class="tg-parallax" data-appear-top-offset="600" data-parallax="scroll" data-image-src="{{asset($setting_header->bannerphoto)}}">
            <div class="tg-sectionspace tg-haslayout">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-9">
                            <div class="tg-sectionhead">
                                <div class="tg-sectiontitle">
                                    <h2>{{$setting_header->bannertitle}}</h2>
                                </div>
                                <div class="tg-description">
                                    <p style="color: white!important;">{{$setting_header->bannerdesc}}.</p>
                                </div>
                            </div>
                            <div id="tg-populardestinationslider" class="tg-populardestinationslider tg-populardestinations owl-carousel">
                                <div class="item tg-populardestination">
                                    <figure>
                                        <a href="javascript:void(0);"><img style="width: 409px; height: 296px" src="{{asset('assets/images/tours/giza-pyramids-and-sphinx-in-cairo.jpg')}}" alt="image destinations"></a>
                                        <figcaption>
                                            <h3><a href="javascript:void(0);">Giza</a></h3>
                                            <div class="tg-description">
                                                <p style="color: white!important;">Beautiful Governorate in the World</p>
                                            </div>
                                        </figcaption>
                                    </figure>
                                </div>
                                <div class="item tg-populardestination">
                                    <figure>
                                        <a href="javascript:void(0);"><img style="width: 409px; height: 296px" src="{{asset('assets/images/tours/temple-of-edfu.jpg')}}" alt="image destinations"></a>
                                        <figcaption>
                                            <h3><a href="javascript:void(0);">temple of edfu</a></h3>
                                            <div class="tg-description">
                                                <p style="color: white!important;">Beautiful Governorate in the World</p>                                            </div>
                                        </figcaption>
                                    </figure>
                                </div>
                                <div class="item tg-populardestination">
                                    <figure>
                                        <a href="javascript:void(0);"><img style="width: 409px; height: 296px" src="{{asset('assets/images/tours/98314939.jpg')}}" alt="image destinations"></a>
                                        <figcaption>
                                            <h3><a href="javascript:void(0);">Hurghada</a></h3>
                                            <div class="tg-description">
                                                <p style="color: white!important;">Hurghada and its magic at sunset</p>
                                            </div>
                                        </figcaption>
                                    </figure>
                                </div>
                                <div class="item tg-populardestination">
                                    <figure>
                                        <a href="javascript:void(0);"><img style="width: 409px; height: 296px" src="{{asset('assets/images/tours/dalmatian-honeymoon3.jpg')}}" alt="image destinations"></a>
                                        <figcaption>
                                            <h3><a href="javascript:void(0);">Marsa Alam</a></h3>
                                            <div class="tg-description">
                                                <p style="color: white!important;">in the streets of Marsa Alam</p>
                                            </div>
                                        </figcaption>
                                    </figure>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--************************************
                Popular Tour End
        *************************************-->
        <!--************************************
                Top Destination Start
        *************************************-->
        <section class="tg-sectionspace tg-haslayout">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <div class="tg-sectionhead tg-sectionheadvtwo">
                            <div class="tg-sectiontitle">
                                <h2>Top Destinations</h2>
                            </div>
                            <div class="tg-description">
                                <p>Here The Most Popular Destinations!.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <div class="tg-themetabs">
                            <div class="tg-themetabcontent">
                                <div class="tg-topdestinations">
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                                            <div class="tg-topdestination">
                                                <figure>
                                                    <a href="javascript:void(0);" class="tg-btnviewall">View All Tours</a>
                                                    <a href="javascript:void(0);"><img style="width:360px;height:473px;" src="{{asset('assets/images/tours/aswan.jpg')}}" alt="image description"></a>
                                                    <figcaption>
                                                        <h2><a href="javascript:void(0);">Aswan</a></h2>
                                                        <span class="tg-totaltours">7 Tours</span>
                                                    </figcaption>
                                                </figure>
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                                            <div class="tg-topdestination">
                                                <figure>
                                                    <a href="javascript:void(0);" class="tg-btnviewall">View All Tours</a>
                                                    <a href="javascript:void(0);"><img  style="width:360px;height:222px;" src="{{asset('assets/images/tours/4-Days-in-Cairo-Egypt-Trips-in-Egypt.jpg')}}" alt="image description"></a>
                                                    <figcaption>
                                                        <h2><a href="javascript:void(0);">Pyramids</a></h2>
                                                        <span class="tg-totaltours">11 Tours</span>
                                                    </figcaption>
                                                </figure>
                                            </div>
                                            <div class="tg-topdestination">
                                                <figure>
                                                    <a href="javascript:void(0);" class="tg-btnviewall">View All Tours</a>
                                                    <a href="javascript:void(0);"><img style="width:360px;height:222px;" src="{{asset('assets/images/tours/hugrada.jpg')}}" alt="image description"></a>
                                                    <figcaption>
                                                        <h2><a href="javascript:void(0);">Hurghada</a></h2>
                                                        <span class="tg-totaltours">3 Tours</span>
                                                    </figcaption>
                                                </figure>
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                                            <div class="tg-topdestination">
                                                <figure>
                                                    <a href="javascript:void(0);" class="tg-btnviewall">View All Tours</a>
                                                    <a href="javascript:void(0);"><img style="width:360px;height:473px;" src="{{asset('assets/images/tours/ancient-abu-simbel-temples-egypt-wallpaper.jpg')}}" alt="image description"></a>
                                                    <figcaption>
                                                        <h2><a href="javascript:void(0);">Abu Simbel Temple</a></h2>
                                                        <span class="tg-totaltours">30 Tours</span>
                                                    </figcaption>
                                                </figure>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--************************************
                Top Destination End
        *************************************-->
        <!--************************************
                Call To Action Start
        *************************************-->
        <section class="tg-parallax" data-appear-top-offset="600" data-parallax="scroll" data-image-src="{{asset('assets/images/parallax/bgparallax-04.jpg')}}">
            <div class="tg-sectionspace tg-zerobottompadding tg-haslayout">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <div class="tg-sectionhead tg-sectionheadvtwo">
                                <div class="tg-sectiontitle">
                                    <h2>What makes these trips different?</h2>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-8 col-lg-push-2">
                            <figure class="tg-videobox">
                                <img src="{{asset('assets/images/img-01.jpg')}}" alt="image description">
                                <a class="tg-btnplay" href="https://www.youtube.com/watch?v=wJF5NXygL4k" data-rel="prettyPhoto[instagram]"><i class="icon-play3"></i></a>
                            </figure>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--************************************
                Call To Action End
        *************************************-->
        <!--************************************
                Our Guides Start
        *************************************-->
        <section class="tg-sectionspace tg-toppadding tg-haslayout">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <div class="tg-sectionhead tg-sectionheadvtwo">
                            <div class="tg-sectiontitle">
                                <h2>Popular Tours</h2>
                            </div>
                            <div class="tg-description">
                                <p>Here The Most Popular Tours!</p>
                            </div>
                        </div>
                        <div id="tg-populartoursslider" class="tg-populartoursslider tg-populartours tg-populartoursvtwo owl-carousel">
                            <?php $tours = App\Models\Categorie::where('status',1)->latest('created_at')->paginate(5);?>
                            @foreach($tours as $tour)
                            <div class="item tg-populartour">
                                <figure>
                                    <a href="{{route('Front.category',['lang'=>(App::isLocale('ar')?"ar":"en"),'id'=>$tour->id])}}"><img style="width:360px ;height:247px ;" src="{{asset($tour->image)}}" alt="image destinations"></a>
{{--                                    <span class="tg-descount">25% Off</span>--}}
                                </figure>
                                <div class="tg-populartourcontent text-center">
                                    <div class="tg-populartourtitle">
                                        <h3><a href="{{route('Front.category',['lang'=>(App::isLocale('ar')?"ar":"en"),'id'=>$tour->id])}}">{{$tour->name}}</a></h3>
                                    </div>
                                    <div class="tg-description ">
                                        <p>{{$tour->desc}}</p>
                                    </div>
{{--                                    <div class="tg-populartourfoot">--}}
{{--                                        <div class="tg-durationrating">--}}
{{--                                            <span class="tg-tourduration">7 Days</span>--}}
{{--                                            <span class="tg-stars"><span></span></span>--}}
{{--                                            <em>(3 Review)</em>--}}
{{--                                        </div>--}}

{{--                                    </div>--}}
                                </div>
                            </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--************************************
                Our Guides End
        *************************************-->
        @yield("article_content")
    </main>

@endsection
