@extends('admin.layouts.app')
@section('content')
    <!-- Validation Wizards -->
    @if(session()->has('success'))
        <div class="alert alert-success text-right" style="width:100%">
            {{session()->get('success')}}
        </div>
    @endif
    <div class="js-wizard-validation block block @if(App::isLocale('ar')) text-right @endif " style="width:100%;" >
        <!-- Step Tabs -->
        <ul class="nav nav-tabs nav-tabs-block nav-justified" role="tablist">
            <li class="nav-item">
                <span style="background-color: #272E38;color: white;" class="nav-link active"  data-toggle="tab" style="font-size:17px;margin-top:">{{__('category.addnewcategory')}}</span>
            </li>
        </ul>
        <form class="js-wizard-validation-form" @if(App::isLocale('ar')) dir="rtl"@endif action="{{ route('Admin.StoreCategory') }}" method="POST" enctype="multipart/form-data">
            @csrf
            @if($errors->any())
                <div class="alert alert-danger">
                    @foreach($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </div>
            @endif
            <div class="block-content block-content-full tab-content px-md-5" style="min-height: 300px;">
                <div class="tab-pane active" id="wizard-validation-step1" role="tabpanel">
                    <div class="row">
                        <div class="form-group col-6">
                            <label for="wizard-validation-firstname">Category Name</label>
                            <input required class="form-control @if($errors->has('nameEn')) is-invalid @endif " type="text" id="wizard-validation-firstname" name="nameEn">
                        </div>
                        <div class="form-group col-6">
                            <label for="wizard-validation-lastname">{{__('category.status')}}</label>
                            <select  class="form-control   @if($errors->has('status')) is-invalid @endif "  @if(App::isLocale('ar'))dir="rtl" @endif id="wizard-validation-lastname" name="status">
                                <option value="1">{{__('category.active')}}</option>
                                <option value="0">{{__('category.deactive')}}</option>
                            </select>
                        </div>

                    </div>

                    <div class="row">
                        <div class="form-group pl-3 pr-3">
                            <label class="d-block" for="categoryKeywords">{{ __('category.keywords') }}</label>
                            <textarea name="CategoryKeywords" id="categoryKeywords" cols="110" rows="10" class="form-control @if($errors->has('CategoryKeywords')) is-invalid @endif"></textarea>
                        </div>


                    </div>

                    <div class="row">
                        <div class="col">
                            <div class="form-group">
                                <label class="d-block" for="image">{{__('category.addphoto')}}</label>
                                <input type="file" id="image" name="image" >
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <label class="d-block" for="icon">{{__('category.addIcon')}}</label>
                                <input type="file" id="icon" name="icon" >
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Steps Navigation -->
                <div class="block-content block-content-sm block-content-full bg-body-light rounded-bottom">
                    <div class="row">
                        <div class="col">
                            <button type="submit" class="btn btn-alt-primary @if(App::isLocale('ar'))text-right @endif mx-auto d-block" data-wizard="next">
                                {{__('category.send')}} <i class="fa fa-angle-right ml-1"></i>
                            </button>
                        </div>
                    </div>
                </div>
                <!-- END Steps Navigation -->
        </form>
    </div>
{{--    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>--}}
    <script src="{{asset('assets/js/core/jquery.min.js')}}"></script>

@endsection

