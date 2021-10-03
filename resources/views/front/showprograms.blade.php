@extends('front.layouts.app')
@section('content')
    <!--************************************
				Main Start
		*************************************-->
    <main id="tg-main" class="tg-main  tg-haslayout tg-bglight">
        <div id="tg-content" class="tg-content">
            <div class="tg-listing tg-tourcatagory tg-sectionspace">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <div class="tg-head">
                                <div class="tg-sectiontitle">
                                    <h2>Tours in Egypt</h2>
                                    <div class="tg-description"><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam consectetuer. </p></div>
                                </div>
                            </div>
                            @foreach($programs as $program)
                            <div class="tg-populartour tg-populartourvtwo">
                                <figure>
                                    <?php $image = json_decode($program->images)[0]?>
                                    <a href="javascript:void(0);"><img style="width:401px ;height:285px ;" src="{{asset($image)}}" alt="image destinations"></a>
                                </figure>
                                <div class="tg-populartourcontent">
                                    <div class="tg-populartourtitle">
                                        <h3><a href="javascript:void(0);">{{$program->name}}</a></h3>
                                    </div>
                                    <div class="tg-description">
                                        <p>{{$program->desc}}</p>
                                    </div>
                                    <div class="tg-populartourfoot" style="width: 270px;height: 258px;">
                                        <div class="tg-durationrating">
                                            <?php $package = \App\Models\Package::where('id',$program->package_id)->first();?>
                                            <span class="tg-tourduration">{{$package->days}} Days</span>
                                            <span class="tg-stars"><span></span></span>
                                        </div>

                                    </div>
                                    <div class="tg-priceavailability ">
                                        <div class="tg-availhead">
                                            <time><span style="font-family: bold; font-size: medium;color: green">Start :</span>  {{$package->aval_from}} &nbsp;<span style="font-family: bold; font-size: medium;color: red"> To:</span> {{$package->aval_to}}</time>
                                        </div>
                                        <div class="tg-pricearea">
                                            <span>From</span>
                                            <h4>${{$program->price_us}}/{{$program->price_egp}}EGP</h4>
                                        </div>
                                        <a class="tg-btn" href="{{route('Front.program',['lang'=>(App::isLocale('ar')?"ar":"en"),'id'=>$program->id])}}"><span>Explore Tour</span></a>
                                    </div>
                                </div>
                            </div>
                            @endforeach
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
    <!--************************************
            Main End
    *************************************-->
@endsection
