@extends('admin.layouts.app')
@section('content')
@if(isset($settings) && $settings->count() > 0)

<div class="text-right" dir="{{ App::isLocale('ar')? 'rtl': '' }}">
    <!-- Sign In Block -->
        <div class="block block-rounded block-themed mb-0" >
            <div class="block-header bg-primary-dark">
                <h3 class="block-title {{ App::isLocale('ar')? 'text-right' : 'text-left' }}" >{{trans('sidebar.SiteSettings')}} / {{trans('sidebar.AboutSetting')}}   </h3>
            </div>
                @if(session()->has('success'))
                <div class="alert alert-primary text-right" >
                    {{ session()->get('success') }}
                    </div>
                @endif


            <div class="block-content">
                <div class="p-sm-3 px-lg-4 py-lg-5 {{ App::isLocale('ar')? 'text-right' : 'text-left'  }}">
                    <h1 class="h2 mb-1">{{trans('sidebar.AboutSetting')}} </h1>
                    <p class="text-muted" >
                    {{trans('sidebar.AboutSettingsInfo')}}

                    </p>
                    <form class="js-validation-signin" action="{{ route('Admin.UpdateAboutus') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                        <div class="py-3">
                            <div class="row">
                                <div class="col">
                                    <label for="">  {{ trans('aboutus.arDesc') }}</label>
                                    <textarea type="text" class="form-control form-control-alt form-control-lg" id="login-username" name="aboutDescAr"  >{{ $settings->aboutDescAr }}</textarea> <br>
                                </div>
                                <div class="col">
                                    <label for=""> {{ trans('aboutus.arDesc') }}</label>
                                    <textarea type="text" class="form-control form-control-alt form-control-lg" id="login-username" name="aboutDescEn" >{{ $settings->aboutDescEn }}</textarea> <br>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <label for="">{{ trans('aboutus.featureoneAr') }}</label>
                                    <input type="text" class="form-control form-control-alt form-control-lg" id="login-username" name="featureoneAr" value="{{  $settings->featureoneAr}}"><br>
                                </div>
                                <div class="col">
                                    <label for="">{{ trans('aboutus.featureoneEn') }}</label>
                                    <input type="text" class="form-control form-control-alt form-control-lg" id="login-username" name="featureoneEn" value="{{  $settings->featureoneEn}}"> <br>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <label for="">{{ trans('aboutus.featuretwoAr') }}</label>
                                    <input type="text" class="form-control form-control-alt form-control-lg" id="login-username" name="featuretwoAr" value="{{  $settings->featuretwoAr}}"><br>
                                </div>
                                <div class="col">
                                    <label for="">{{ trans('aboutus.featuretwoEn') }}</label>
                                    <input type="text" class="form-control form-control-alt form-control-lg" id="login-username" name="featuretwoEn" value="{{  $settings->featuretwoEn}}"> <br>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <label for="">{{ trans('aboutus.featurethreeAr') }}</label>
                                    <input type="text" class="form-control form-control-alt form-control-lg" id="login-username" name="featurethreeAr" value="{{  $settings->featurethreeAr}}"><br>
                                </div>
                                <div class="col">
                                    <label for="">{{ trans('aboutus.featurethreeEn') }}</label>
                                    <input type="text" class="form-control form-control-alt form-control-lg" id="login-username" name="featurethreeEn" value="{{  $settings->featurethreeEn}}"> <br>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="">{{ trans('aboutus.phoneabout') }}</label>
                                <input type="text" class="form-control form-control-alt form-control-lg" id="login-username" name="phoneabout" value="{{  $settings->phoneabout}}" >
                            </div>
                            <div class="form-group">
                                <label for="">{{ trans('aboutus.Photoone') }}</label><br>
                                @if(isset($settings->Photoone) && $settings->Photoone != '')
                                    <img src="{{ asset($settings->Photoone) }}" style="width:150px;height:150px;" />
                                @endif
                                <input type="file" class="form-control form-control-alt form-control-lg" id="login-username" name="Photoone" >
                            </div>
                            <div class="form-group">
                                <label for="">{{ trans('aboutus.Phototwo') }}</label><br>
                                @if(isset($settings->Phototwo) && $settings->Phototwo != '')
                                    <img src="{{ asset($settings->Phototwo) }}" style="width:150px;height:150px;" />
                                @endif
                                <input type="file" class="form-control form-control-alt form-control-lg" id="login-username" name="Phototwo" >
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

@endif
@endsection
