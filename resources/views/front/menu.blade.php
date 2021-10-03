@extends('front.layouts.app')
@section('content')
    <!-- DISHES start -->
    <section class="section menu">
        <div class="container" @if(App::isLocale('ar')) dir="rtl" @endif>
            <div class="row  justify-content-center mb-5">
                <div class="col-lg-8 text-center">
                    <span class="text-primary font-extra font-md">{{__('front.menumaka')}}</span>
                    <h2 class="mt-3 mb-4">{{__('front.menuinfo')}} </h2>
                </div>
            </div>

            <div class="col-12 text-center mb-5">
                <div class="btn-group btn-group-toggle" data-toggle="buttons">
                    {{--                    <label class="btn active">--}}
                    {{--                        <input type="radio" name="shuffle-filter" value="all" checked="checked"/>All--}}
                    {{--                    </label>--}}
                    <label class="btn cat active">
                        <input type="radio" name="shuffle-filter" value="categories" checked="checked"/>{{__('front.categories')}}
                    </label>
                    <label class="btn">
                        <input type="radio" name="shuffle-filter" value="products"/>{{__('front.products')}}
                    </label>
                    <label class="btn">
                        <input type="radio" name="shuffle-filter" value="addons"/>{{__('front.addons')}}
                    </label>
                </div>
            </div>

            <div class="row shuffle-wrapper food-gallery">
                <?php
                $categories = \App\Models\Categorie::where('main_category',0)->where('status',1)->paginate(6);
                $products = \Illuminate\Support\Facades\DB::table('products')->where('status',1)->paginate(6);
                $addons = \Illuminate\Support\Facades\DB::table('addones')->where('status',1)->paginate(6);
                ?>
                @foreach($categories as $cat)
                    <div class="col-lg-6 col-md-6 mb-4 shuffle-item" data-groups='["categories"]'>
                        <div class="menu-item position-relative ">
                            <div class="d-flex align-items-center">
                                <img style="width: 150px;height: 100px" src="{{asset($cat->image)}}" alt="" class="img-fluid mb-3 mb-lg-0">
                                <div>
                                    <?php  $name = json_decode($cat->name); $name = App::isLocale('ar')?$name->ar:$name->en; ?>
                                    <h4>{{$name}}</h4>
                                        <a href="{{route('Front.category',['lang'=>(App::isLocale('ar'))? 'ar' : 'en','id'=>$cat->id])}}" class="mt-2"><i class="fa fa-search mr-2 text-primary"></i>{{__('front.showproducts')}}</a>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
                {{--                <span id="addon" hidden>--}}
                @foreach($addons as $addon)
                    <div class="col-lg-6 col-md-6 mb-4 shuffle-item" data-groups='["addons"]'>
                        <div class="menu-item position-relative ">
                            <div class="d-flex align-items-center">
                                <img style="width: 150px;height: 100px"  src="{{asset($addon->image)}}" alt="" class="img-fluid mb-3 mb-lg-0">
                                <div>
                                    <?php  $name = json_decode($addon->name); $name = App::isLocale('ar')?$name->ar:$name->en; ?>
                                    <h4>{{$name}}</h4>
{{--                                    <a href="#" class="mt-2"><i class="ti-shopping-cart mr-2 text-primary"></i>{{__('front.booknow')}}</a>--}}
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
                {{--                </span>--}}
                {{--                <span id="prod" hidden>--}}
                @foreach($products as $product)
                    <div class="col-lg-6 col-md-6 mb-4 shuffle-item" data-groups='["products"]'>
                        <div class="menu-item position-relative ">
                            <div class="d-flex align-items-center">
                                <img style="width: 150px;height: 100px"  src="{{asset($product->image)}}" alt="" class="img-fluid mb-3 mb-lg-0">
                                <div>
                                    <?php  $name = json_decode($product->name); $name = App::isLocale('ar')?$name->ar:$name->en; ?>
                                    <h4>{{$name}}</h4>
                                    <a href="{{route('Front.Booknow',['lang'=>(App::isLocale('ar'))? 'ar' : 'en','prod_id'=>$product->id])}}" class="mt-2"><i class="ti-shopping-cart mr-2 text-primary"></i>{{__('front.booknow')}}</a>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
                {{--                </span>--}}
                {{--                <div class="col-lg-6 col-md-6 mb-4 shuffle-item" data-groups="[&quot;design&quot;,&quot;illustration&quot;]">--}}
                {{--                    <div class="menu-item position-relative ">--}}
                {{--                        <div class="d-flex align-items-center">--}}
                {{--                            <img src="images/menu/menu-1.jpg" alt="" class="img-fluid mb-3 mb-lg-0">--}}
                {{--                            <div>--}}
                {{--                                <h4>Vitello Tonato - <span>23$</span></h4>--}}
                {{--                                <p>Chinese mustard/Chipotle aiol</p>--}}
                {{--                            </div>--}}
                {{--                        </div>--}}
                {{--                    </div>--}}
                {{--                </div>--}}

                {{--                <div class="col-lg-6 col-md-6 mb-4 shuffle-item" data-groups="[&quot;branding&quot;]">--}}
                {{--                    <div class="menu-item position-relative ">--}}
                {{--                        <div class="d-flex align-items-center">--}}
                {{--                            <img src="images/menu/menu-2.jpg" alt="" class="img-fluid mb-3 mb-lg-0">--}}
                {{--                            <div>--}}
                {{--                                <h4>Crema di Pomodoro - <span>34$</span></h4>--}}
                {{--                                <p>Chinese mustard/Chipotle aiol</p>--}}
                {{--                            </div>--}}
                {{--                        </div>--}}
                {{--                    </div>--}}
                {{--                </div>--}}

                {{--                <div class="col-lg-6 col-md-6 mb-4 shuffle-item" data-groups="[&quot;illustration&quot;]">--}}
                {{--                    <div class="menu-item position-relative ">--}}
                {{--                        <div class="d-flex align-items-center">--}}
                {{--                            <img src="images/menu/menu-3.jpg" alt="" class="img-fluid mb-3 mb-lg-0">--}}
                {{--                            <div>--}}
                {{--                                <h4>Oatmeal Cookie - <span>13$</span></h4>--}}
                {{--                                <p>Chinese mustard/Chipotle aiol</p>--}}
                {{--                            </div>--}}
                {{--                        </div>--}}
                {{--                    </div>--}}
                {{--                </div>--}}

                {{--                <div class="col-lg-6 col-md-6 mb-4 shuffle-item" data-groups="[&quot;design&quot;,&quot;branding&quot;]">--}}
                {{--                    <div class="menu-item position-relative ">--}}
                {{--                        <div class="d-flex  align-items-center">--}}
                {{--                            <img src="images/menu/menu-4.jpg" alt="" class="img-fluid mb-3 mb-lg-0">--}}
                {{--                            <div>--}}
                {{--                                <h4>Seasonal Soup - <span>10$</span></h4>--}}
                {{--                                <p>Chinese mustard/Chipotle aiol</p>--}}
                {{--                            </div>--}}
                {{--                        </div>--}}
                {{--                    </div>--}}
                {{--                </div>--}}

                {{--                <div class="col-lg-6 col-md-6 mb-4 shuffle-item" data-groups="[&quot;illustration&quot;]">--}}
                {{--                    <div class="menu-item position-relative ">--}}
                {{--                        <div class="d-flex align-items-center">--}}
                {{--                            <img src="images/menu/menu-5.jpg" alt="" class="img-fluid mb-3 mb-lg-0">--}}
                {{--                            <div>--}}
                {{--                                <h4>Pizza Pane - <span>28$</span></h4>--}}
                {{--                                <p>Chinese mustard/Chipotle aiol</p>--}}
                {{--                            </div>--}}
                {{--                        </div>--}}
                {{--                    </div>--}}
                {{--                </div>--}}

                {{--                <div class="col-lg-6 col-md-6 mb-4 shuffle-item" data-groups="[&quot;design&quot;]">--}}
                {{--                    <div class="menu-item position-relative ">--}}
                {{--                        <div class="d-flex align-items-center">--}}
                {{--                            <img src="images/menu/menu-6.jpg" alt="" class="img-fluid mb-3 mb-lg-0">--}}
                {{--                            <div>--}}
                {{--                                <h4>Carpacio - <span>20$</span></h4>--}}
                {{--                                <p>Chinese mustard/Chipotle aiol</p>--}}
                {{--                            </div>--}}

                {{--                        </div>--}}
                {{--                    </div>--}}
                {{--                </div>--}}

                {{--                <div class="col-lg-6 col-md-6 mb-4 shuffle-item" data-groups="[&quot;branding&quot;]">--}}
                {{--                    <div class="menu-item position-relative ">--}}
                {{--                        <div class="d-flex align-items-center">--}}
                {{--                            <img src="images/menu/menu-7.jpg" alt="" class="img-fluid mb-3 mb-lg-0">--}}
                {{--                            <div>--}}
                {{--                                <h4>Insalata Rucola - <span>15$</span></h4>--}}
                {{--                                <p>Chinese mustard/Chipotle aiol</p>--}}
                {{--                            </div>--}}
                {{--                        </div>--}}
                {{--                    </div>--}}
                {{--                </div>--}}

                {{--                <div class="col-lg-6 col-md-6 mb-4 shuffle-item"--}}
                {{--                     data-groups="[&quot;design&quot;,&quot;illustration&quot;,&quot;branding&quot;]">--}}
                {{--                    <div class="menu-item position-relative ">--}}
                {{--                        <div class="d-flex align-items-center">--}}
                {{--                            <img src="images/menu/menu-8.jpg" alt="" class="img-fluid mb-3 mb-lg-0">--}}
                {{--                            <div>--}}
                {{--                                <h4>Carpacio - <span>13$</span></h4>--}}
                {{--                                <p>Chinese mustard/Chipotle aiol</p>--}}
                {{--                            </div>--}}
                {{--                        </div>--}}
                {{--                    </div>--}}
                {{--                </div>--}}
            </div>

        </div>
    </section>
    <!-- DISHES  End -->
@endsection
