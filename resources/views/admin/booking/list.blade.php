@extends('admin.layouts.app')
@section('content')
    @if(isset($data) && $data->count() > 0 )
        @if(session()->has('success'))
            <div class="alert alert-primary text-right" style="width:100%">
                {{ session()->get('success') }}
            </div>
        @endif

        <div>
            <!-- Bordered Table -->
            <div class="block block-rounded">
                <div class="block-header">
                    <h3 class="block-title @if(App::isLocale('ar'))text-right @endif " style="font-size:15px;font-weight:bold">{{__('booking.viewAll')}}</h3>

                </div>
                <div class="block-content">
                    <table class="table table-bordered table-vcenter" @if(App::isLocale('ar')) dir="rtl" @endif>
                        <thead>
                        <tr>
                            <th class="" style="width: 50px;">#</th>
                            <th  class="text-center">{{__('booking.name')}}</th>
                            <th  class="text-center">{{__('booking.age')}}</th>
                            <th  class="text-center">{{__('booking.program')}}</th>
                            <th  class="text-center">{{__('booking.id')}}</th>
                            <th class="text-center">{{__('booking.status')}}</th>
                            <th class="text-center">{{__('booking.actions')}}</th>
                        </tr>
                        </thead>
                        <tbody class="text-center">
                        @foreach($data as $d)
                            <tr>
                                <th class="text-center" scope="row">{{ $d->id }}</th>
                                <td class="font-w600 font-size-sm">
                                    {{ $d->name }}
                                </td>
                                <td class="font-w600 font-size-sm">
                                   {{ $d->age }}
                                </td>
                                <td class="font-w600 font-size-sm">
                                    {{ $d->program->name }}
                                </td>
                                <td class="font-w600 font-size-sm">
                                   {{ $d->IdNum }}
                                </td>
                                <td class="font-w600 font-size-sm">
                                    @if($d->status)
                                        <span class="badge badge-success">{{__('booking.active')}}</span>
                                    @else
                                        <span class="badge badge-danger">{{__('booking.deactive')}}</span>
                                    @endif
                                </td>
                                <td class="text-center">
                                    <div class="btn-group">
                                        <a href="{{ route('Admin.EditBooking', $d->id) }}" class="btn btn-sm btn-light" style="background-color: #008CBA;padding:10px;" data-toggle="tooltip" title="{{__('booking.edit')}}">
                                            <i class="fa fa-fw fa-pencil-alt"></i>
                                        </a>
                                        <a href="{{ route('Admin.DeleteBooking', $d->id) }}" class="btn btn-sm btn-light" style="background-color:#f44336;padding:10px;" data-toggle="tooltip" title="{{__('booking.Delete')}}">
                                            <i class="fa fa-fw fa-times"></i>
                                        </a>
                                    </div>
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>

                </div>
            </div>
            <!-- END Bordered Table -->
        </div>

        <div class="d-flex justify-content-center">
            {{$data->links('pagination::bootstrap-4')}}

        </div>




        <!-- END All Orders Table -->


    @else
        <h5 style="font-size:14px; position:relative;left:40%">???? ???????? ???? ???????????? ????????????</h5>
    @endif
@endsection
