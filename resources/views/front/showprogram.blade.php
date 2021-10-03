@extends('front.layouts.app')
@section('content')
    <!--************************************
				Main Start
		*************************************-->
    <main id="tg-main" class="tg-main tg-haslayout" style="margin-top: 100px!important;">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <div id="tg-content" class="tg-content">
                        <div class="tg-tourbookingdetail">
                            <div class="tg-bookinginfo">
                                <h2>{{$package->destination}} – {{$package->name}}</h2>
                                <div class="tg-durationrating">
                                    <span class="tg-php artisan servestars"><span></span></span>
                                    <em>(3 Review)</em>
                                </div>

                                <div class="tg-description">
{{--                                    <p>There’s only 5 spot left. Join 19 others at Travelu’s experience this Saturday.</p>--}}
                                    <a class="tg-btn" href="{{route('Front.Booknow',['prog_id'=>$program->id,'lang'=>App::isLocale('ar')?'ar':'en'])}}"><span>Book Now</span></a>
                                </div>
                                <ul class="tg-tripinfo" style="margin-top: 5px!important;">
                                    <li><span class="tg-tourduration">{{$package->days}} Days {{$package->days-1}} Nights</span></li>
                                    <li><span class="tg-tourduration tg-availabilty">Available From {{$package->aval_from}}</span></li>
                                    <li><span class="tg-tourduration tg-location" style="font-family: bold;">{{$package->destination}}</span></li>
                                </ul>
                                <div class="tg-refundshare">
                                    <div class="tg-refund">
                                        <figure><img style="width: 48px;height: 48px" src="{{asset('assets/images/purse.png')}}" alt="image description"></figure>
                                        <div class="tg-refundinfo">
                                            <h3>100% refundable</h3>
                                            <div class="tg-description">
                                                <p>Cancel up to 12 days before your trip and get a full refund, including service fees.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tg-sectionspace tg-haslayout">
                                <div class="tg-themetabs tg-bookingtabs">
                                    <ul class="tg-themetabnav" role="tablist">
                                        <li role="presentation" class="active">
                                            <a href="#america" aria-controls="america" role="tab" data-toggle="tab">
                                                <span>Overview</span>
                                            </a>
                                        </li>
                                        <li role="presentation">
                                            <a href="#australia" aria-controls="australia" role="tab" data-toggle="tab">
                                                <span>Itinerary</span>
                                            </a>
                                        </li>
                                        <li role="presentation">
                                            <a href="#italy" aria-controls="italy" role="tab" data-toggle="tab">
                                                <span>location</span>
                                            </a>
                                        </li>
{{--                                        <li role="presentation">--}}
{{--                                            <a href="#london" aria-controls="london" role="tab" data-toggle="tab">--}}
{{--                                                <span>Reviews</span>--}}
{{--                                            </a>--}}
{{--                                        </li>--}}
                                        <li role="presentation">
                                            <a href="#india" aria-controls="india" role="tab" data-toggle="tab">
                                                <span>Gallery</span>
                                            </a>
                                        </li>
                                    </ul>
                                    <div class="tab-content tg-themetabcontent">
                                        <div role="tabpanel" class="tab-pane active tg-overviewtab" id="america">
                                            <div class="tg-bookingdetail">
                                                <div class="tg-box">
                                                    <h2>About this Program</h2>
                                                    <div class="tg-description">
                                                       <p> {{$program->desc}}</p>
                                                    </div>
                                                </div>
                                                <div class="tg-box">
                                                    <h2>Guest access</h2>
                                                    <div class="tg-description">
                                                        <p>{{$program->guestaccessdesc}}</p>
                                                        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
                                                        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
                                                        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>

                                                        <ul class="tg-liststyle">
                                                            @foreach($guestaccess as $access)
                                                                <li><span>{{$access->information}}</span></li>
                                                            @endforeach
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="tg-bookingdetail tg-bookingdetailstyle">
                                                <div class="tg-box tg-amentities">
                                                    <h3>Amenities</h3>
                                                    <div class="tg-content">
                                                        <ul class="tg-liststyle">
                                                            @foreach($amenities as $amenitie)
                                                                @if($amenitie->id % 2 != 0)
                                                                <li><span>{{$amenitie->information}}</span></li>
                                                                @endif
                                                            @endforeach
                                                        </ul>
                                                        <ul class="tg-liststyle">
                                                            @foreach($amenities as $amenitie)
                                                                @if($amenitie->id % 2 == 0)
                                                                    <li><span>{{$amenitie->information}}</span></li>
                                                                @endif
                                                            @endforeach
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="tg-bookingdetail tg-bookingdetailstyle">
                                                <div class="tg-box tg-priceinclude">
                                                    <h3>Price Includes</h3>
                                                    <div class="tg-content">
                                                        <ul class="tg-liststyle">
                                                            @foreach($price_includes as $price_include)
                                                                <li><span>{{$price_include->information}}</span></li>
                                                            @endforeach
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="tg-bookingdetail tg-bookingdetailstyle">
                                                <div class="tg-box tg-amentities">
                                                    <h3>Tour Rules</h3>
                                                    <div class="tg-content">
                                                        <div class="tg-description">
                                                            <p>{{$program->tourrules}}</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div role="tabpanel" class="tab-pane tg-itinerary" id="australia">
                                            <div class="tg-bookingdetail">
                                                <div class="tg-box">
                                                    <div class="tg-accordion" role="tablist" aria-multiselectable="true">
                                                        @foreach($itenaries as $itenary)
                                                            @if($itenary->daynum % 2 != 0)
                                                                <div class="tg-panel">
                                                            <h4>Day {{$itenary->daynum}}</h4>
                                                            <div class="tg-panelcontent">
                                                                <div class="tg-description">
                                                                    <p>{{$itenary->information}}</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                            @endif
                                                        @endforeach
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="tg-bookingdetail">
                                                <div class="tg-box">
                                                    <div id="tg-accordion" class="tg-accordion" role="tablist" aria-multiselectable="true">
                                                        @foreach($itenaries as $itenary)
                                                            @if($itenary->daynum % 2 == 0)
                                                        <div class="tg-panel">
                                                            <h4>Day {{$itenary->daynum}}</h4>

                                                            <div class="tg-panelcontent">
                                                                <div class="tg-description">
                                                                    <p>{{$itenary->information}}</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                            @endif
                                                        @endforeach
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div role="tabpanel" class="tab-pane tg-locationtab" id="italy">
                                            <div class="tg-box tg-location">
                                                <h3>The Map</h3>
                                                <div class="tg-description">
                                                    <p>Here Location of our Program</p>
                                                </div>
                                                <div id="tg-locationmap" class="tg-locationmap tg-map">

                                                </div>
                                            </div>
                                        </div>
{{--                                        <div role="tabpanel" class="tab-pane tg-reviewtab" id="london">--}}
{{--                                            <div class="tg-reviewsarea">--}}
{{--                                                <form class="tg-formtheme tg-formreviews">--}}
{{--                                                    <fieldset class="tg-filterby">--}}
{{--                                                        <div class="tg-durationrating">--}}
{{--                                                            <em>(3 Review)</em>--}}
{{--                                                            <span class="tg-stars"><span></span></span>--}}
{{--                                                        </div>--}}
{{--                                                        <span class="tg-select">--}}
{{--																<select>--}}
{{--																	<option>Filter by</option>--}}
{{--																	<option>Rating</option>--}}
{{--																	<option>New</option>--}}
{{--																	<option>date</option>--}}
{{--																</select>--}}
{{--															</span>--}}
{{--                                                    </fieldset>--}}
{{--                                                    <fieldset class="tg-reviews">--}}
{{--                                                        <ul>--}}
{{--                                                            <li>--}}
{{--                                                                <div class="tg-review">--}}
{{--                                                                    <div class="tg-author">--}}
{{--                                                                        <figure class="tg-authorimg">--}}
{{--                                                                            <img src="images/avatars/img-01.jpg" alt="image description">--}}
{{--                                                                        </figure>--}}
{{--                                                                        <div class="tg-authorinfo">--}}
{{--                                                                            <h3>Katie</h3>--}}
{{--                                                                            <span>Family Vacation</span>--}}
{{--                                                                            <span class="tg-stars"><span></span></span>--}}
{{--                                                                        </div>--}}
{{--                                                                    </div>--}}
{{--                                                                    <div class="tg-reviewcontent">--}}
{{--                                                                        <div class="tg-reviewhead">--}}
{{--                                                                            <span class="tg-tourduration">January 25, 2017</span>--}}
{{--                                                                            <a class="tg-btnhelpfull" href="#"><i class="icon-thumb-up"></i>Helpful</a>--}}
{{--                                                                        </div>--}}
{{--                                                                        <div class="tg-description">--}}
{{--                                                                            <p>Maecenas sed diam eget risus varius blandit sit amet non magna. Vivamus sagittis lacus vel augue Sed non mauris vitae;erat consequat auctor eu in elit. Class aptent taciti sociosqu.</p>--}}
{{--                                                                        </div>--}}
{{--                                                                    </div>--}}
{{--                                                                </div>--}}
{{--                                                            </li>--}}
{{--                                                            <li>--}}
{{--                                                                <div class="tg-review">--}}
{{--                                                                    <div class="tg-author">--}}
{{--                                                                        <figure class="tg-authorimg">--}}
{{--                                                                            <img src="images/avatars/img-01.jpg" alt="image description">--}}
{{--                                                                        </figure>--}}
{{--                                                                        <div class="tg-authorinfo">--}}
{{--                                                                            <h3>Katie</h3>--}}
{{--                                                                            <span>Family Vacation</span>--}}
{{--                                                                            <span class="tg-stars"><span></span></span>--}}
{{--                                                                        </div>--}}
{{--                                                                    </div>--}}
{{--                                                                    <div class="tg-reviewcontent">--}}
{{--                                                                        <div class="tg-reviewhead">--}}
{{--                                                                            <span class="tg-tourduration">January 25, 2017</span>--}}
{{--                                                                            <a class="tg-btnhelpfull" href="#"><i class="icon-thumb-up"></i>Helpful</a>--}}
{{--                                                                        </div>--}}
{{--                                                                        <div class="tg-description">--}}
{{--                                                                            <p>Maecenas sed diam eget risus varius blandit sit amet non magna. Vivamus sagittis lacus vel augue Sed non mauris vitae;erat consequat auctor eu in elit. Class aptent taciti sociosqu.</p>--}}
{{--                                                                            <p>First, please don’t fall sick. However, if in case something does catchup with you, we will airlift you to hospital but your insurance will have to pay for this. Ulins aliquam massa nisl quis neque. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut liquam massa nisl quis neque.</p>--}}
{{--                                                                        </div>--}}
{{--                                                                    </div>--}}
{{--                                                                </div>--}}
{{--                                                            </li>--}}
{{--                                                            <li>--}}
{{--                                                                <div class="tg-review">--}}
{{--                                                                    <div class="tg-author">--}}
{{--                                                                        <figure class="tg-authorimg">--}}
{{--                                                                            <img src="images/avatars/img-01.jpg" alt="image description">--}}
{{--                                                                        </figure>--}}
{{--                                                                        <div class="tg-authorinfo">--}}
{{--                                                                            <h3>Katie</h3>--}}
{{--                                                                            <span>Family Vacation</span>--}}
{{--                                                                            <span class="tg-stars"><span></span></span>--}}
{{--                                                                        </div>--}}
{{--                                                                    </div>--}}
{{--                                                                    <div class="tg-reviewcontent">--}}
{{--                                                                        <div class="tg-reviewhead">--}}
{{--                                                                            <span class="tg-tourduration">January 25, 2017</span>--}}
{{--                                                                            <a class="tg-btnhelpfull" href="#"><i class="icon-thumb-up"></i>Helpful</a>--}}
{{--                                                                        </div>--}}
{{--                                                                        <div class="tg-description">--}}
{{--                                                                            <p>What a magical place, even better than I imagined! Teresa and Daniella were so helpful and awesome</p>--}}
{{--                                                                        </div>--}}
{{--                                                                    </div>--}}
{{--                                                                </div>--}}
{{--                                                            </li>--}}
{{--                                                            <li>--}}
{{--                                                                <div class="tg-review">--}}
{{--                                                                    <div class="tg-author">--}}
{{--                                                                        <figure class="tg-authorimg">--}}
{{--                                                                            <img src="images/avatars/img-01.jpg" alt="image description">--}}
{{--                                                                        </figure>--}}
{{--                                                                        <div class="tg-authorinfo">--}}
{{--                                                                            <h3>Katie</h3>--}}
{{--                                                                            <span>Family Vacation</span>--}}
{{--                                                                            <span class="tg-stars"><span></span></span>--}}
{{--                                                                        </div>--}}
{{--                                                                    </div>--}}
{{--                                                                    <div class="tg-reviewcontent">--}}
{{--                                                                        <div class="tg-reviewhead">--}}
{{--                                                                            <span class="tg-tourduration">January 25, 2017</span>--}}
{{--                                                                            <a class="tg-btnhelpfull" href="#"><i class="icon-thumb-up"></i>Helpful</a>--}}
{{--                                                                        </div>--}}
{{--                                                                        <div class="tg-description">--}}
{{--                                                                            <p>Very nice place</p>--}}
{{--                                                                        </div>--}}
{{--                                                                    </div>--}}
{{--                                                                </div>--}}
{{--                                                            </li>--}}
{{--                                                            <li>--}}
{{--                                                                <div class="tg-review">--}}
{{--                                                                    <div class="tg-author">--}}
{{--                                                                        <figure class="tg-authorimg">--}}
{{--                                                                            <img src="images/avatars/img-01.jpg" alt="image description">--}}
{{--                                                                        </figure>--}}
{{--                                                                        <div class="tg-authorinfo">--}}
{{--                                                                            <h3>Katie</h3>--}}
{{--                                                                            <span>Family Vacation</span>--}}
{{--                                                                            <span class="tg-stars"><span></span></span>--}}
{{--                                                                        </div>--}}
{{--                                                                    </div>--}}
{{--                                                                    <div class="tg-reviewcontent">--}}
{{--                                                                        <div class="tg-reviewhead">--}}
{{--                                                                            <span class="tg-tourduration">January 25, 2017</span>--}}
{{--                                                                            <a class="tg-btnhelpfull" href="#"><i class="icon-thumb-up"></i>Helpful</a>--}}
{{--                                                                        </div>--}}
{{--                                                                        <div class="tg-description">--}}
{{--                                                                            <p>Maecenas sed diam eget risus varius blandit sit amet non magna. Vivamus sagittis lacus vel augue Sed non mauris vitae;erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo First, please don’t fall sick. However, if in case something does catchup.</p>--}}
{{--                                                                        </div>--}}
{{--                                                                    </div>--}}
{{--                                                                </div>--}}
{{--                                                            </li>--}}
{{--                                                        </ul>--}}
{{--                                                    </fieldset>--}}
{{--                                                    <fieldset class="tg-formleavereview">--}}
{{--                                                        <div class="tg-leavereviewhead">--}}
{{--                                                            <h2>Leave your Comment</h2>--}}
{{--                                                            <div class="tg-durationrating">--}}
{{--                                                                <h3>Your Rating</h3>--}}
{{--                                                                <span class="tg-stars"><span></span></span>--}}
{{--                                                            </div>--}}
{{--                                                        </div>--}}
{{--                                                        <div class="tg-reviewformarea">--}}
{{--                                                            <div class="form-group">--}}
{{--                                                                <input type="text" name="fullname" class="form-control" placeholder="Full Name">--}}
{{--                                                            </div>--}}
{{--                                                            <div class="form-group">--}}
{{--                                                                <input type="email" name="email" class="form-control" placeholder="Email Address">--}}
{{--                                                            </div>--}}
{{--                                                            <div class="form-group">--}}
{{--                                                                <textarea placeholder="">Your Comment</textarea>--}}
{{--                                                            </div>--}}
{{--                                                            <div class="form-group">--}}
{{--                                                                <a class="tg-btn" href="#"><span>submit</span></a>--}}
{{--                                                            </div>--}}
{{--                                                        </div>--}}
{{--                                                    </fieldset>--}}
{{--                                                </form>--}}
{{--                                            </div>--}}
{{--                                        </div>--}}
                                        <div role="tabpanel" class="tab-pane tg-gallerytab" id="india">
                                            <div class="tg-gallery">
                                                <ul>
                                                    <?php $images = json_decode($program->images); ?>
                                                    @foreach($images as $image)
                                                    <li>
                                                        <figure>
                                                            <a href="#" data-rel="prettyPhoto[instagram]">
                                                                <img src="{{asset($image)}}" alt="{{$program->shortDesc}}" title=""{{$program->shortDesc}}"">
                                                            </a>
                                                        </figure>
                                                    </li>
                                                    @endforeach
                                                </ul>
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
                Our Guides Start
        *************************************-->
        @if(count($programs)>1)
        <section class="tg-sectionspace tg-toppadding tg-haslayout">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <div class="tg-sectionhead tg-sectionheadvtwo">
                            <div class="tg-sectiontitle">
                                <h2>Other Programs</h2>
                            </div>
                            <div class="tg-description">
                                <p>here another programs may you like them.</p>
                            </div>
                        </div>
                        <div id="tg-populartoursslider" class="tg-populartoursslider tg-populartours tg-populartoursvtwo owl-carousel">
                            @foreach($programs as $_program)
                                <div class="item tg-populartour">
                                    <figure>
                                        <?php $image = json_decode($_program->images)[0]?>
                                        <a href="{{route('Front.program',['lang'=>(App::isLocale('ar')?"ar":"en"),'id'=>$_program->id])}}"><img style="width:360px ;height:247px ;" src="{{asset($image)}}" alt="image destinations"></a>
                                        @if($_program->discount != 0)<span class="tg-descount">{{$_program->discount}}% Off</span> @endif
                                    </figure>
                                    <div class="tg-populartourcontent">
                                        <div class="tg-populartourtitle">
                                            <h3><a href="javascript:void(0);">{{$_program->name}}</a></h3>
                                        </div>
                                        <div class="tg-description">
                                            <p>{{$_program->desc}}</p>
                                        </div>
                                        <div class="tg-populartourfoot">
                                            <div class="tg-durationrating">
                                                <?php $package = \App\Models\Package::where('id',$_program->package_id)->first();?>
                                                <span class="tg-tourduration">{{$package->days}} Days</span>
                                                <span class="tg-stars"><span></span></span>
{{--                                                <em>(3 Review)</em>--}}
                                            </div>
                                            <div class="tg-pricearea">
                                                @if($_program->discount != 0)
                                                <del>${{$_program->price_us}}/{{$_program->price_egp}}EGP</del>
                                                <h4>${{($_program->price_us*$_program->discount)/100}}/{{($_program->price_egp*$_program->discount)/100}}EGP</h4>
                                                @else
                                                    <h4>${{$_program->price_us}}/{{$_program->price_egp}}EGP</h4>
                                                @endif
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </section>
        @endif

    <!--************************************
                Our Guides End
        *************************************-->
    </main>
    <!--************************************
            Main End
    *************************************-->
    <script>
        // Initialize and add the map
        function initMap() {
            // The location of Uluru
            const uluru = { lat: -25.344, lng: 131.036 };
            // The map, centered at Uluru
            const map = new google.maps.Map(document.getElementById("tg-locationmap"), {
                zoom: 4,
                center: uluru,
            });
            // The marker, positioned at Uluru
            const marker = new google.maps.Marker({
                position: uluru,
                map: map,
            });
        }
    </script>
    <script
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyClnOYHyQ0x6Pov39JZNkczajrCi-HtGI4&callback=initMap&libraries=&v=weekly"
        async
    ></script>
@endsection
