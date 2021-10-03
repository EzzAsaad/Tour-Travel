@extends('front.layouts.app')
@section('content')
<!--************************************
            Main Start
    *************************************-->
<main id="tg-main" class="tg-main tg-sectionspace tg-haslayout">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div id="tg-content" class="tg-content">
                    <div class="tg-topdestinations">
                        <div class="row">
                            @foreach($destinations as $destination)
                            @if($destination->destination==null)
                            @else
                            <div class="col-xs-6 col-sm-6 col-md-4 col-lg-4">
                                <div class="tg-topdestination">
                                    <figure>
                                        <a href="{{route('Front.destinationProgram',['name'=>$destination->destination,'lang'=>(App::isLocale('ar')?'ar':'en')])}}" class="tg-btnviewall">View All Programs</a>
                                        <a href="{{route('Front.destinationProgram',['name'=>$destination->destination,'lang'=>(App::isLocale('ar')?'ar':'en')])}}"><img style="width: 360px;height: 473px;" src="{{asset($destination->image)}}" alt="image description"></a>
                                        <figcaption>
                                            <h2><a href="listingvone.html">{{$destination->destination}}</a></h2>
                                            <span class="tg-totaltours">{{$destination->num_tours}} Tours</span>
                                        </figcaption>
                                    </figure>
                                </div>
                            </div>
                            @endif
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
<!--************************************
        Main End
*************************************-->
@endsection
