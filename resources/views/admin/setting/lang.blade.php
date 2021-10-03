@extends('admin.layouts.app')
@section('content')

        <div class="text-right" dir="{{ App::isLocale('ar')? 'rtl': '' }}">
            <!-- Sign In Block -->
            <div class="block block-rounded block-themed mb-0" >
                <div class="block-header bg-primary-dark">
                    <h3 class="block-title {{ App::isLocale('ar')? 'text-right' : 'text-left' }}" >{{trans('sidebar.SiteSettings')}} / {{trans('settings.language')}}   </h3>
                </div>
                @if(session()->has('success'))
                    <div class="alert alert-primary text-right" >
                        {{ session()->get('success') }}
                    </div>
                @endif


                <div class="block-content">
                    <div class="p-sm-3 px-lg-4 py-lg-5 {{ App::isLocale('ar')? 'text-right' : 'text-left'  }}">
                        <form class="js-validation-signin" action="{{ route('Admin.setWords',$fileName) }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            <div class="py-3">
                                <div class="row">
                                    <div class="col-6">
                                        <h3>{{__('settings.arabicFields')}}</h3>
                                        @foreach($arr_ar as $key => $value)
                                            <div class="row">
                                                <div class="col">
                                                    <label for="">{{$key}}</label>
                                                    <input type="text" class="form-control form-control-alt form-control-lg" id="login-username" name="arWords[{{$key}}]" value="{{  $value}}"><br>
                                                </div>
                                            </div>
                                        @endforeach
                                    </div>
                                    <div class="col-6">
                                        <h3>{{__('settings.englishFields')}}</h3>
                                    @foreach($arr_en as $key => $value)
                                            <div class="row">
                                                <div class="col">
                                                    <label for="">{{$key}}</label>
                                                    <input type="text" class="form-control form-control-alt form-control-lg" id="login-username" name="enWords[{{$key}}]" value="{{ $value }}"><br>
                                                </div>
                                            </div>
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                            <div class="form-group row justify-content-center" >
                                <div class="col-md-6 col-xl-5">
                                    <button type="submit" class="btn mx-auto btn-block btn-alt-primary">
                                        <i class="fa fa-fw fa-sign-in-alt mr-1"></i> {{__('settings.save')}}
                                    </button>
                                </div>
                            </div>
                        </form>
                        <!-- END Sign In Form -->
                    </div>
                </div>
            </div>
            <!-- END Sign In Block -->
        </div>
@endsection
