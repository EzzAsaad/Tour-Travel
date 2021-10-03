@extends('admin.layouts.app')
@section('content')
    <!-- Validation Wizards -->
    @if(session()->has('success'))
        <div class="alert alert-success text-right" style="width:100%">
            {{session()->get('success')}}
        </div>
    @endif
@if(isset($data))

    <div class="js-wizard-validation block block @if(App::isLocale('ar')) text-right @endif " style="width:100%;" >
        <!-- Step Tabs -->
        <ul class="nav nav-tabs nav-tabs-block nav-justified" role="tablist">
            <li class="nav-item">
                <span style="background-color: #272E38;color: white;" class="nav-link active"  data-toggle="tab" style="font-size:17px;margin-top:">{{__('program.EditProgram')}}</span>
            </li>
        </ul>
        <form class="js-wizard-validation-form" @if(App::isLocale('ar')) dir="rtl"@endif action="{{ route('Admin.updateProgram', $data->id) }}" method="POST" enctype="multipart/form-data">
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
                            <label for="wizard-validation-firstname">{{__('program.name')}}</label>
                            <input required class="form-control @if($errors->has('name')) is-invalid @endif " type="text" id="wizard-validation-firstname" name="name" value="{{ $data->name }}">
                        </div>
                        <div class="form-group col-6">
                            <label for="wizard-validation-firstname">{{__('program.ShortName')}}</label>
                            <input required class="form-control @if($errors->has('shortName')) is-invalid @endif " type="text" id="wizard-validation-firstname" name="shortName" value="{{ $data->shortName }}">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="form-group">
                                <label class="d-block" for="image">{{__('program.category')}}</label>
                                    <select disabled class="form-control   @if($errors->has('category')) is-invalid @endif "  @if(App::isLocale('ar'))dir="rtl" @endif id="category" name="">
                                        @foreach($categories as $c)
                                            <option value="{{ $c->id }}" {{($c->id == $data->categorie_id)? 'selected' : '' }}>{{ $c->name }}</option>
                                        @endforeach
                                    </select>
                                <input type="hidden" name="category" value="{{$data->categorie_id}}">

                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <label class="d-block" for="image">{{__('program.Package')}}</label>
                                    <select  disabled class="form-control   @if($errors->has('package')) is-invalid @endif "  onchange="changePackageID()" @if(App::isLocale('ar'))dir="rtl" @endif id="package" name="">
                                        @foreach($packages as $p)
                                            <option value="{{ $p->id }}" {{ ($p->id == $data->package_id)? 'selected' : ''  }}>{{ $p->name }}</option>
                                        @endforeach
                                    </select>
                                    <input type="hidden" name="package" value="{{$data->package_id}}">
                            </div>
                        </div>
                    </div>
{{--                    <div class="row">--}}
{{--                        <div class="form-group col-6">--}}
{{--                            <label for="wizard-validation-firstname">{{__('program.addPriceLE')}}</label>--}}
{{--                            <input required class="form-control @if($errors->has('price_EGP')) is-invalid @endif "  @if(isset($data->price_egp)) value="{{$data->price_egp}}" @else value="0" @endif  type="text" id="wizard-validation-firstname" name="price_EGP">--}}
{{--                        </div>--}}
{{--                        <div class="form-group col-6">--}}
{{--                            <label for="wizard-validation-firstname">{{__('program.addPriceUS')}}</label>--}}
{{--                            <input required class="form-control @if($errors->has('price_US')) is-invalid @endif " @if(isset($data->price_us)) value="{{$data->price_us}}" @else value="0" @endif type="text" id="wizard-validation-firstname" name="price_US">--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                    <div class="row">--}}
{{--                        <div class="form-group text-center offset-3 col-6">--}}
{{--                            <label for="wizard-validation-firstname">{{__('program.discount')}}</label>--}}
{{--                            <input required class="form-control @if($errors->has('discount')) is-invalid @endif " @if(isset($data->discount)) value="{{$data->discount}}" @else value="0" @endif type="text" id="wizard-validation-firstname" name="discount">--}}
{{--                        </div>--}}
{{--                    </div>--}}
                    <div class="row">
                        <div class="col">
                            <div class="form-group">
                                <label class="d-block" for="image">{{__('program.desc')}}</label>
                                <textarea class="form-control" name="shortDesc" id="" cols="40" rows="5">{{$data->desc}}</textarea>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <label class="d-block" for="image">{{__('program.ShortDesc')}}</label>
                                <textarea class="form-control" name="desc" id="" cols="40" rows="5">{{$data->shortDesc}}</textarea>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                            <div class="form-group">
                                <label class="d-block" for="image">{{__('program.images')}}</label>
                                <input type="file" id="image" name="images[]" multiple>
                            </div>
                            @if($data->images)
                                <?php
                                    $images = json_decode($data->images);
                                ?>
                            @endif
                            @foreach($images as $i)
                                <img src="{{ asset($i) }}" style="max-width:100px;max-height:100px" />
                            @endforeach
                    </div>
                    <div class="col">
                            <div class="form-group">
                                <label class="d-block" for="video">{{__('program.video')}}</label>
                                <input type="file" id="video" name="video" >
                            </div>
                        @if($data->videos)
                            <video width="400" controls>
                                <source src="{{asset($data->videos)}}" type="video/mp4">
                            </video>
                        @endif
                    </div>
                </div>

                <div class="form-group">
                    <div class="row">
                        <div class="col">
                            <label class="d-block" for="categoryKeywords">Guest Access Description</label>
                            <textarea name="guestaccessdesc" id="guestaccessdesc" cols="5" rows="5" class="form-control @if($errors->has('guestaccessdesc')) is-invalid @endif">{{$data->guestaccessdesc}}</textarea>
                        </div>
                        <div class="col">
                            <label class="d-block" for="categoryKeywords">Tour Rules</label>
                            <textarea name="tourrules" id="tourrules" cols="5" rows="5" class="form-control @if($errors->has('tourrules')) is-invalid @endif">{{$data->tourrules}}</textarea>
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
                    <?php $counterI = 1;?>
                    @foreach($ternary as $tern)
                    <div class="row">
                        <div class="col-7"><label class="d-block" for="categoryKeywords">Day {{$counterI}}</label>
                            <input type="hidden" value="{{$tern->id}}" name="daysinfo[{{$counterI}}][id]">
                            <textarea name="daysinfo[{{$counterI}}][desc]" value="{{$tern->information}}" id="categoryKeywords" cols="5" rows="5" class="form-control @if($errors->has('daysinfo[]')) is-invalid @endif">{{$tern->information}}</textarea>
                        </div>
                    </div>
                            <?php $counterI += 1;?>
                    @endforeach
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
                                <?php $counterA = 1 ?>
                                @foreach($ames as $ame)
                                <tr>
                                    <td>   {{$counterA}}
                                    </td>
                                    <td>
                                        <input type="hidden" value="{{$ame->id}}" name="amenity[{{$counterA}}][id]">
                                        <input required maxlength="21" type="text"  value="{{$ame->information}}" name="amenity[{{$counterA}}][desc]" class="form-control" />
                                    </td>
                                    @if($counterA == 1)
                                        <td><button type="button" name="add" id="dynamic_amenity_btn" class="btn btn-outline-primary">Add Amenity</button></td>
                                    @else
                                        <td><button type="button" onclick="deleteAme({{$ame->id}})" class="btn btn-outline-danger remove-input-field-amenity">remove</button></td>
                                    @endif
                                    <?php $counterA += 1 ?>

                                </tr>
                                @endforeach
                            </table>
                        </div>
                        <div class="col">
                            <table @if(App::isLocale('ar'))dir="rtl" @endif class="table table-bordered" id="dynamicAddRemovePriceIncludes">
                                <tr>
                                    <th>#</th>
                                    <th>Price Includes</th>
                                    <th></th>

                                </tr>
                                <?php $counterP = 1; ?>
                                @foreach($price_includes as $price_include)
                                <tr>
                                    <td>   {{$counterP}}
                                    </td>

                                    <td>
                                        <input type="hidden" value="{{$price_include->id}}" name="price_includes[{{$counterP}}][id]">
                                        <input required maxlength="21" type="text" name="price_includes[{{$counterP}}][desc]" class="form-control" />
                                    </td>
                                    @if($counterP == 1)
                                        <td><button type="button" name="add" id="dynamic_price_includes_btn" class="btn btn-outline-primary">Add Feature</button></td>
                                    @else
                                        <td><button type="button" onclick="deletepriceincludes({{$price_include->id}})" class="btn btn-outline-danger remove-input-field-price_includes">remove</button></td>
                                    @endif
                                    <?php $counterP+=1; ?>
                                </tr>
                                @endforeach
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
                                <?php $counterG = 1; ?>
                                @foreach($guest_access as $guest_acces)
                                <tr>
                                    <td>   {{$counterG}}
                                    </td>
                                    <td>
                                        <input type="hidden" value="{{$guest_acces->id}}" name="guest_access[{{$counterG}}][id]">
                                        <input required maxlength="21" type="text" value="{{$guest_acces->information}}" name="guest_access[{{$counterG}}][desc]" class="form-control" />
                                    </td>
                                @if($counterG == 1)
                                        <td><button type="button" name="add" id="dynamic_guest_access_btn" class="btn btn-outline-primary">Add Feature</button></td>
                                    @else
                                        <td><button type="button" onclick="deleteguest_acces({{$guest_acces->id}})" class="btn btn-outline-danger remove-input-field-guest_access">remove</button></td>
                                    @endif
                                    <?php $counterG += 1; ?>

                                </tr>
                                @endforeach
                            </table>

                        </div>
                    </div>
                </div>



                <div class="form-group">
                                    <label for="wizard-validation-lastname">{{__('program.status')}}</label>
                                    <select  class="form-control   @if($errors->has('status')) is-invalid @endif "  @if(App::isLocale('ar'))dir="rtl" @endif id="wizard-validation-lastname" name="status">
                                        <option value="1" {{($data->status == 1)? 'selected' : ''}}>{{__('program.active')}}</option>
                                        <option value="0" {{($data->status == 0)? 'selected' : '' }} >{{__('program.deactive')}}</option>
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

{{--  let packageID = document.getElementById('package').value--}}
{{--  $.ajax({--}}
{{--      type:"GET",--}}
{{--      url:`/admin/packages/${packageID}/getnumberDays`,--}}
{{--      success:function(res){--}}
{{--          if(res){--}}
{{--              console.log('Res Data:')--}}
{{--              console.log(res)--}}
{{--              //$("#days").empty()--}}
{{--              <?php $i = 0;?>--}}
{{--              {{dd($ternary)}}--}}
{{--              for(let i = 0 ; i < res ;i++) {--}}
{{--                  console.log(i)--}}
{{--                  $("#days").append(`<div class="row"><div class="col-7"><label class="d-block" for="categoryKeywords">Day ${i+1}</label><textarea name="daysinfo[][desc]" value="{{$ternary[$i]}}" id="categoryKeywords" cols="5" rows="5" class="form-control @if($errors->has('daysinfo[]')) is-invalid @endif"></textarea></div> </div>`)--}}
{{--                  <?php $i += 1;?>--}}
{{--              }--}}
{{--          }else{--}}
{{--              $("#days").empty();--}}
{{--          }--}}
{{--      }--}}
{{--  });--}}

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
      $.ajax({
          type:"GET",
          url:`/admin/program/deleteiten/{{$data->id}}`,
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
  let deleteAme = (id)=>{
      $.ajax({
          type:"GET",
          url:`/admin/program/deleteame/${id}`,
          success:function(res){
              if(res){
                  console.log('Res Data:')
                  console.log(res)
              }
          }
      });
  }

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
  let deletepriceincludes = (id)=>{
      $.ajax({
          type:"GET",
          url:`/admin/program/deleteprice_include/${id}`,
          success:function(res){
              if(res){
                  console.log('Res Data:')
                  console.log(res)
              }
          }
      });
  }
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
  let deleteguest_acces = (id)=>{
      $.ajax({
          type:"GET",
          url:`/admin/program/deletedeleteguest_access/${id}`,
          success:function(res){
              if(res){
                  console.log('Res Data:')
                  console.log(res)
              }
          }
      });
  }

</script>
@else
<span class="d-flex justify-content-center">
    There's No data.
</span>
@endif
@endsection

