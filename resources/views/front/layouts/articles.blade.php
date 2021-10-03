@extends('front.layouts.app')
@section('article_content')
    <!--************************************
                Article Start
        *************************************-->
    <section class="tg-sectionspace tg-zerotoppadding tg-haslayout">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <div class="tg-sectionhead tg-sectionheadvtwo">
                        <div class="tg-sectiontitle">
                            <h2>Latest News</h2>
                        </div>
                        <div class="tg-description">
                            <p>Let's see last knews in Majestic Egypt Tours!</p>
                        </div>
                    </div>
                </div>
                <div class="tg-posts">
                    <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3">
                        <article class="tg-post">
                            <figure>
                                <a href="javascript:void(0);">
                                    <img src="{{asset('assets/images/blog/img-01.jpg')}}" alt="image description">
                                    <div class="tg-hover">
                                        <h3>Bungee Jumping Trip</h3>
                                        <time datetime="2021-06-08">Feb 22, 2021</time>
                                    </div>
                                </a>
                            </figure>
                        </article>
                    </div>
                    <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3">
                        <article class="tg-post">
                            <figure>
                                <a href="javascript:void(0);">
                                    <img src="{{asset('assets/images/blog/img-02.jpg')}}" alt="image description">
                                    <div class="tg-hover">
                                        <h3>Bungee Jumping Trip</h3>
                                        <time datetime="2021-06-08">Feb 22, 2021</time>
                                    </div>
                                </a>
                            </figure>
                        </article>
                    </div>
                    <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3">
                        <article class="tg-post">
                            <figure>
                                <a href="javascript:void(0);">
                                    <img src="{{asset('assets/images/blog/img-03.jpg')}}" alt="image description">
                                    <div class="tg-hover">
                                        <h3>Bungee Jumping Trip</h3>
                                        <time datetime="2021-06-08">Feb 22, 2021</time>
                                    </div>
                                </a>
                            </figure>
                        </article>
                    </div>
                    <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3">
                        <article class="tg-post">
                            <figure>
                                <a href="javascript:void(0);">
                                    <img src="{{asset('assets/images/blog/img-04.jpg')}}" alt="image description">
                                    <div class="tg-hover">
                                        <h3>Bungee Jumping Trip</h3>
                                        <time datetime="2021-06-08">Feb 22, 2021</time>
                                    </div>
                                </a>
                            </figure>
                        </article>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--************************************
            Article End
    *************************************-->
@endsection
