@extends('admin.layouts.app')
@section('content')
    <!-- Validation Wizards -->
    <link rel="stylesheet" href="{{asset('assets/js/plugins/flatpickr/flatpickr.min.css')}}">
    @if(session()->has('success'))
        <div class="alert alert-success text-right" style="width:100%">
            {{session()->get('success')}}
        </div>
    @endif
    <div class="js-wizard-validation block block @if(App::isLocale('ar')) text-right @endif " style="width:100%;" >
        <!-- Step Tabs -->
        <ul class="nav nav-tabs nav-tabs-block nav-justified" role="tablist">
            <li class="nav-item">
                <span style="background-color: #272E38;color: white;" class="nav-link active"  data-toggle="tab" style="font-size:17px;margin-top:">{{__('packages.addnewPackage')}}</span>
            </li>
        </ul>
        <form class="js-wizard-validation-form" @if(App::isLocale('ar')) dir="rtl"@endif action="{{ route('Admin.saveNewPackage') }}" method="POST" enctype="multipart/form-data">
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
                            <label for="wizard-validation-firstname">{{__('packages.addName')}}</label>
                            <input required class="form-control @if($errors->has('name')) is-invalid @endif " type="text" id="wizard-validation-firstname" name="name">
                        </div>
                        <div class="form-group col-6">
                            <label for="wizard-validation-lastname">{{__('packages.addDays')}}</label>
                            <input type="number" name="days" id="days" class="form-control" required min="0">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="form-group">
                                <label class="d-block" for="image">{{__('packages.addCategory')}}</label>
                                    <select  class="form-control   @if($errors->has('category')) is-invalid @endif "  @if(App::isLocale('ar'))dir="rtl" @endif id="wizard-validation-lastname" name="category">
                                        @foreach($categories as $c)
                                            <option value="{{ $c->id }}">{{ $c->name }}</option>
                                        @endforeach
                                    </select>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">
                            <label for="wizard-validation-lastname">{{__('packages.status')}}</label>
                            <select  class="form-control   @if($errors->has('status')) is-invalid @endif "  @if(App::isLocale('ar'))dir="rtl" @endif id="wizard-validation-lastname" name="status">
                                <option value="1">{{__('category.active')}}</option>
                                <option value="0">{{__('category.deactive')}}</option>
                            </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-6">
                        <label for="wizard-validation-firstname">{{__('packages.availabilityFrom')}}</label>
                        <input required class="js-flatpickr form-control bg-white" placeholder="Y-m-d" class="form-control @if($errors->has('from')) is-invalid @endif " type="text" id="wizard-validation-firstname" name="from">
                    </div>
                    <div class="form-group col-6">
                        <label for="wizard-validation-lastname">{{__('packages.availabilityTo')}}</label>
                        <input required class="js-flatpickr form-control bg-white" placeholder="Y-m-d" class="form-control @if($errors->has('to')) is-invalid @endif " type="text" id="wizard-validation-firstname" name="to">
                    </div>
                </div>

                <div class="row">
                    <div class="form-group col-6">
                        <label for="wizard-validation-firstname">{{__('packages.destination')}}</label>
                        <input required class="form-control @if($errors->has('destination')) is-invalid @endif " type="text" id="wizard-validation-firstname" name="destination">
                    </div>
                </div>

                <div class="form-group">
                                <label class="d-block" for="image">{{__('packages.addImage')}}</label>
                                <input type="file" id="image" name="image" >
                            </div>

                <!-- Steps Navigation -->
                <div class="block-content block-content-sm block-content-full bg-body-light rounded-bottom">
                    <div class="row">
                        <div class="col">
                            <button type="submit" class="btn btn-alt-primary @if(App::isLocale('ar'))text-right @endif mx-auto d-block" data-wizard="next">
                                {{__('packages.send')}} <i class="fa fa-angle-right ml-1"></i>
                            </button>
                        </div>
                    </div>
                </div>
                <!-- END Steps Navigation -->
        </form>
    </div>
{{--    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>--}}
    <script src="{{asset('assets/js/plugins/flatpickr/flatpickr.min.js')}}"></script>
    <script src="{{asset('assets/js/oneui.core.min.js')}}"></script>
    <script src="{{asset('assets/js/oneui.app.min.js')}}"></script>
    <script src="{{asset('assets/js/core/jquery.min.js')}}"></script>
    <script>jQuery(function () {
            One.helpers(['flatpickr', 'datepicker', 'colorpicker', 'maxlength', 'select2', 'masked-inputs', 'rangeslider']);
        });</script>
@endsection

