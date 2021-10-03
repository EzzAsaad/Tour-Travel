@extends('front.layouts.app')
@section('content')

    <main id="tg-main" class="tg-main  tg-haslayout tg-bglight">
        <div id="tg-content" class="tg-content">
            <div class="tg-listing tg-tourcatagory tg-sectionspace">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <div class="tg-head">
                                <div class="tg-sectiontitle">
                                    <h2>Gallery Tours</h2>
                                    <div class="tg-description"><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam consectetuer. </p></div>
                                </div>
                            </div>
                            <div class="">
                                <ul>
                                    @foreach($tours as $tour)

                                        <div class="col-xs-6 col-sm-6 col-md-4 col-lg-4">
                                            <div class="tg-topdestination">
                                                <figure>
                                                    <a href="{{route('Front.galleryPrograms',['lang'=>(App::isLocale('ar')?"ar":"en"),'id'=>$tour->id])}}" class="tg-btnviewall">View All Programs</a>
                                                    <a href="{{route('Front.galleryPrograms',['lang'=>(App::isLocale('ar')?"ar":"en"),'id'=>$tour->id])}}"><img style="width: 360px;height: 473px;" src="{{asset($tour->image)}}" alt="image description"></a>
                                                    <figcaption>
                                                        <h2><a href="listingvone.html">{{$tour->name}}</a></h2>
{{--                                                        <span class="tg-totaltours">{{$tour->num_tours}} Tours</span>--}}
                                                    </figcaption>
                                                </figure>
                                            </div>
                                        </div>
                                    @endforeach
                                </ul>
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

@endsection
