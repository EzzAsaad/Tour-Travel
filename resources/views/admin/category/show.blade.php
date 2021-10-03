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
                <span style="background-color: #272E38;color: white;" class="nav-link active"  data-toggle="tab" style="font-size:17px;margin-top:">{{__('category.showcategory')}}</span>
            </li>
        </ul>
        <div class="js-wizard-validation-form" @if(App::isLocale('ar')) dir="rtl"@endif enctype="multipart/form-data">

            <div class="block-content block-content-full tab-content px-md-5" style="min-height: 300px;">
                <div class="tab-pane active" id="wizard-validation-step1" role="tabpanel">

                    <div class="row">
                        <div class="form-group col-6">
                            <label for="wizard-validation-firstname">{{__('category.name')}}</label>
                            <input required class="form-control" disabled value="{{ isset($category)? $category->name : ''}} @if($errors->has('nameAr')) is-invalid @endif " type="text" id="wizard-validation-firstname" name="nameAr">
                        </div>
                        <div class="form-group col-6">
                            <label for="wizard-validation-lastname">{{__('category.status')}}</label>
                            @if($category->status == 1)
                                <h2><span class="badge badge-success">{{__('category.active')}}</span></h2>
                            @else
                                <h2><span class="badge badge-danger">{{__('category.deactive')}}</span></h2>
                            @endif
                        </div>
                    </div>

                </div>
                <div class="row">
                        <div class="form-group pl-3 pr-3">
                            <label for="keywords">{{__('category.keywordsa') }}</label>
                            <textarea name="CategoryKeywords" id="CategoryKeywords" cols="110" rows="5" disabled>
                                {{ isset($category)? $category->keywords : ''}}
                            </textarea>
                        </div>
                    </div>
                <div class="row">
                    @if($category->image)
                    <div class="form-group col-6" >
                        <label for="image">{{__('category.photo')}} </label> <br>
                        <img class="img-fluid w-50 h-50 d-block mx-auto" style="float:left" src="{{isset($category)?asset($category->image) : ''}}">
                    </div>
                    @endif

                    @if($category->icon)
                    <div class="form-group col-6">
                        <label for="icon">{{__('category.icon')}} </label> <br>
                        <img class="img-fluid w-25 h-25 d-block mx-auto" style="float:left" src="{{isset($category)?asset($category->icon) : ''}}">
                    </div>
                    @endif
                </div>

                <!-- Steps Navigation -->
                <div class="block-content block-content-sm block-content-full bg-body-light rounded-bottom">
                    <div class="row">
                        <div class="col">
                            <a href="{{route('Admin.ViewAllCategories')}}"><button type="submit" class="btn btn-alt-primary @if(App::isLocale('ar'))text-right @endif mx-auto d-block" data-wizard="next">
                                {{__('category.back')}} <i class="fa fa-angle-right ml-1"></i>
                            </button></a>
                        </div>
                    </div>
                </div>
                <!-- END Steps Navigation -->
        </div>
    </div>
    {{--    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>--}}
    <script src="{{asset('assets/js/core/jquery.min.js')}}"></script>
    <script type="text/javascript">
        var i = 0;
        $("#dynamic-ar").click(function () {
            ++i;
            $("#dynamicAddRemove").append('<tr><td><input type="text" name="subcode['+i+']"  class="form-control" /><td><input type="text" name="subnamear['+i+']"  class="form-control" /> </td> <td><input type="text" name="subnameen['+i+']" placeholder="" class="form-control" /></td> <td><select class="form-control @if($errors->has('status')) is-invalid @endif "  id="wizard-validation-lastname" name="substatus['+i+']"> <option value="1">{{__('category.active')}}</option> <option value="0">{{__('category.deactive')}}</option> </select></td> <td><button type="button" class="btn btn-outline-danger remove-input-field">Delete</button></td></td></tr>');
        });
        $(document).on('click', '.remove-input-field', function () {
            $(this).parents('tr').remove();
        });
    </script>
@endsection

