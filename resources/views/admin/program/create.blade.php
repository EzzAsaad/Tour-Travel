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
                <span style="background-color: #272E38;color: white;" class="nav-link active"  data-toggle="tab" style="font-size:17px;margin-top:">{{__('program.addNewProgram')}}</span>
            </li>
        </ul>
        <form class="js-wizard-validation-form" @if(App::isLocale('ar')) dir="rtl"@endif action="{{ route('Admin.saveNewProgram') }}" method="POST" enctype="multipart/form-data">
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
                            <label for="wizard-validation-firstname">{{__('program.addname')}}</label>
                            <input required class="form-control @if($errors->has('name')) is-invalid @endif " type="text" id="wizard-validation-firstname" name="name">
                        </div>
                        <div class="form-group col-6">
                            <label for="wizard-validation-firstname">{{__('program.addShortName')}}</label>
                            <input required class="form-control @if($errors->has('shortName')) is-invalid @endif " type="text" id="wizard-validation-firstname" name="shortName">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="form-group">
                                <label class="d-block" for="image">{{__('program.addCategory')}}</label>
                                    <select  class="form-control   @if($errors->has('category')) is-invalid @endif "  @if(App::isLocale('ar'))dir="rtl" @endif id="category" name="category">
                                        @foreach($categories as $c)
                                            <option value="{{ $c->id }}">{{ $c->name }}</option>
                                        @endforeach
                                    </select>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <label class="d-block" for="image">{{__('program.addPackage')}}</label>
                                    <select onchange="changePackageID()" class="form-control   @if($errors->has('package')) is-invalid @endif "  @if(App::isLocale('ar'))dir="rtl" @endif id="package" name="package">
                                        @foreach($packages as $p)
                                            <option value="{{ $p->id }}">{{ $p->name }}</option>
                                        @endforeach
                                    </select>
                            </div>
                        </div>
                    </div>
{{--                    <div class="row">--}}
{{--                        <div class="form-group col-6">--}}
{{--                            <label for="wizard-validation-firstname">{{__('program.addPriceLE')}}</label>--}}
{{--                            <input required class="form-control @if($errors->has('price_EGP')) is-invalid @endif " type="text" id="wizard-validation-firstname" name="price_EGP">--}}
{{--                        </div>--}}
{{--                        <div class="form-group col-6">--}}
{{--                            <label for="wizard-validation-firstname">{{__('program.addPriceUS')}}</label>--}}
{{--                            <input required class="form-control @if($errors->has('price_US')) is-invalid @endif " type="text" id="wizard-validation-firstname" name="price_US">--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                    <div class="row">--}}
{{--                        <div class="form-group text-center offset-3 col-6">--}}
{{--                            <label for="wizard-validation-firstname">{{__('program.discount')}}</label>--}}
{{--                            <input required class="form-control @if($errors->has('price_EGP')) is-invalid @endif " type="text" id="wizard-validation-firstname" name="discount">--}}
{{--                        </div>--}}
{{--                    </div>--}}
                    <div class="row">
                        <div class="col">
                            <div class="form-group">
                                <label class="d-block" for="image">{{__('program.adddesc')}}</label>
                                <textarea class="form-control" name="shortDesc" id="" cols="40" rows="5"></textarea>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <label class="d-block" for="image">{{__('program.addShortDesc')}}</label>
                                <textarea class="form-control" name="desc" id="" cols="40" rows="5"></textarea>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                            <div class="form-group">
                                <label class="d-block" for="image">{{__('program.addImage')}}</label>
                                <input type="file" id="image" name="images[]" multiple>
                            </div>
                    </div>
                    <div class="col">
                            <div class="form-group">
                                <label class="d-block" for="video">{{__('program.addVideo')}}</label>
                                <input type="file" id="video" name="video" >
                            </div>

                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col">
                            <label class="d-block" for="categoryKeywords">Guest Access Description</label>
                            <textarea name="guestaccessdesc" id="guestaccessdesc" cols="5" rows="5" class="form-control @if($errors->has('guestaccessdesv')) is-invalid @endif"></textarea>
                        </div>
                        <div class="col">
                            <label class="d-block" for="categoryKeywords">Tour Rules</label>
                            <textarea name="tourrules" id="tourrules" cols="5" rows="5" class="form-control @if($errors->has('tourrules')) is-invalid @endif"></textarea>
                        </div>
                    </div>
                </div>
{{--                // Start Ternary--}}
                <div class="form-group">
                    <div class="row">
                        <h3 class="col pb-3"><hr>Ternary</h3>
                    </div>
                </div>

                <div class="form-group" id="days">


                </div>
{{--                End Ternary--}}

{{--                Amenities--}}
                <div class="form-group">
                    <div class="row">
                        <div class="col">
                            <table @if(App::isLocale('ar'))dir="rtl" @endif class="table table-bordered" id="dynamicAddRemoveAmenity">
                                <tr>
                                    <th>#</th>
                                    <th>Amenity</th>
                                    <th></th>

                                </tr>
                                <tr>
                                    <td>   1
                                    </td>
                                    <td>
                                        <input required maxlength="21" type="text" name="amenity[0][desc]" class="form-control" />
                                    </td>
                                    <td><button type="button" name="add" id="dynamic_amenity_btn" class="btn btn-outline-primary">Add Amenity</button></td>

                                </tr>
                            </table>
                        </div>
                        <div class="col">
                            <table @if(App::isLocale('ar'))dir="rtl" @endif class="table table-bordered" id="dynamicAddRemovePriceIncludes">
                                <tr>
                                    <th>#</th>
                                    <th>Price Includes</th>
                                    <th></th>

                                </tr>
                                <tr>
                                    <td>   1
                                    </td>
                                    <td>
                                        <input required maxlength="21" type="text" name="price_includes[0][desc]" class="form-control" />
                                    </td>
                                    <td><button type="button" name="add" id="dynamic_price_includes_btn" class="btn btn-outline-primary">Add Feature</button></td>

                                </tr>
                            </table>
                        </div>
                    </div>

                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-6">
                            <table @if(App::isLocale('ar'))dir="rtl" @endif class="table table-bordered" id="dynamicAddRemoveGuestAccess">
                                <tr>
                                    <th>#</th>
                                    <th>Guest Access</th>
                                    <th></th>

                                </tr>
                                <tr>
                                    <td>   1
                                    </td>
                                    <td>
                                        <input required maxlength="21" type="text" name="guest_access[0][desc]" class="form-control" />
                                    </td>
                                    <td><button type="button" name="add" id="dynamic_guest_access_btn" class="btn btn-outline-primary">Add Feature</button></td>

                                </tr>
                            </table>

                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="wizard-validation-lastname">{{__('packages.status')}}</label>
                    <select  class="form-control   @if($errors->has('status')) is-invalid @endif "  @if(App::isLocale('ar'))dir="rtl" @endif id="wizard-validation-lastname" name="status">
                        <option value="1">{{__('category.active')}}</option>
                        <option value="0">{{__('category.deactive')}}</option>
                    </select>
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
    <script src="{{asset('assets/js/core/jquery.min.js')}}"></script>
<script type=text/javascript>
  $('#category').change(function(){
  var countryID = $(this).val();
  if(countryID){
    $.ajax({
      type:"GET",
      url:"{{route('Admin.getPackages')}}?categorie_id="+countryID,
      success:function(res){
      if(res){
        $("#package").empty();
        $("#package").append('<option>Select</option>');
        $.each(res,function(key,value){
          $("#package").append('<option value="'+key+'">'+value+'</option>');
        });

      }else{
        $("#package").empty();
      }
      }
    });
  }else{
    $("#package").empty();
  }
  });

  let packageID = document.getElementById('package').value
  $.ajax({
      type:"GET",
      url:`/admin/packages/${packageID}/getnumberDays`,
      success:function(res){
          if(res){
              console.log('Res Data:')
              console.log(res)
              //$("#days").empty()
              for(let i = 0 ; i < res ;i++) {
                  console.log(i)
                  $("#days").append(`<div class="row"><div class="col-7"><label class="d-block" for="categoryKeywords">Day ${i+1}</label><textarea name="daysinfo[][desc]" id="categoryKeywords" cols="5" rows="5" class="form-control @if($errors->has('daysinfo[]')) is-invalid @endif"></textarea></div> </div>`)
              }
          }else{
              $("#days").empty();
          }
      }
  });

  let changePackageID = ()=>{
      let packageID = document.getElementById('package').value
      $.ajax({
          type:"GET",
          url:`/admin/packages/${packageID}/getnumberDays`,
          success:function(res){
              if(res){
                  console.log('Res Data:')
                  console.log(res)
                  $("#days").empty()
                  for(let i = 0 ; i < res ;i++) {
                      console.log(i)
                      $("#days").append(`<div class="row"><div class="col-7"><label class="d-block" for="categoryKeywords">Day ${i+1}</label><textarea name="daysinfo[${i}][desc]" id="categoryKeywords" cols="5" rows="5" class="form-control @if($errors->has('days[]')) is-invalid @endif"></textarea></div> </div>`)
                  }
              }else{
                  $("#days").empty();
              }
          }
      });
  }
  // Ame -- price include

  let i = 1;
  $("#dynamic_amenity_btn").click(function () {
      i++
      $("#dynamicAddRemoveAmenity").append(`<tr>
                                    <td>   ${i}
                                    </td>
                                    <td>
                                        <input required maxlength="21" type="text" name="amenity[${i}][desc]" class="form-control" />
                                    </td>
                                    <td><button type="button" class="btn btn-outline-danger remove-input-field-amenity">remove</button></td>

                                </tr>`)
  })
  $(document).on('click', '.remove-input-field-amenity', function () {
      $(this).parents('tr').remove();
  });

  let j = 1;
  $("#dynamic_price_includes_btn").click(function () {
      j++
      $("#dynamicAddRemovePriceIncludes").append(`<tr>
                                    <td>   ${j}
                                    </td>
                                    <td>
                                        <input required maxlength="21" type="text" name="price_includes[${j}][desc]" class="form-control" />
                                    </td>
                                    <td><button type="button" class="btn btn-outline-danger remove-input-field-price_includes">remove</button></td>

                                </tr>`)
  })
  $(document).on('click', '.remove-input-field-price_includes', function () {
      $(this).parents('tr').remove();
  });

  let q = 1;
  $("#dynamic_guest_access_btn").click(function () {
      q++
      $("#dynamicAddRemoveGuestAccess").append(`<tr>
                                    <td>   ${q}
                                    </td>
                                    <td>
                                        <input required maxlength="21" type="text" name="guest_access[${q}][desc]" class="form-control" />
                                    </td>
                                    <td><button type="button" class="btn btn-outline-danger remove-input-field-guest_access">remove</button></td>

                                </tr>`)
  })
  $(document).on('click', '.remove-input-field-guest_access', function () {
      $(this).parents('tr').remove();
  });
</script>

@endsection

