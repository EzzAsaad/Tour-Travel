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
                    <h3 class="block-title @if(App::isLocale('ar'))text-right @endif " style="font-size:15px;font-weight:bold">{{__('packages.showallPackages')}}</h3>

                </div>
                <div class="block-content">
                    <table class="table table-bordered table-vcenter" @if(App::isLocale('ar')) dir="rtl" @endif>
                        <thead>
                        <tr>
                            <th class="" style="width: 50px;">#</th>
                            <th  class="text-center">{{__('packages.name')}}</th>
                            <th  class="text-center">{{__('packages.days')}}</th>
                            <th  class="text-center">{{__('packages.category')}}</th>
                            <th  class="text-center">{{__('packages.availabilityFrom')}}</th>
                            <th  class="text-center">{{__('packages.availabilityTo')}}</th>
                            <th  class="text-center">{{__('packages.destination')}}</th>
                            <th class="text-center">{{__('packages.status')}}</th>
                            <th class="text-center">{{__('packages.actions')}}</th>
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
                                   {{ $d->days }}
                                </td>
                                <td class="font-w600 font-size-sm">
                                    <a href="{{route('Admin.ShowCategory', $d->categorie_id)}}">{{ $d->category->name }}</a>
                                </td>
                                @if(isset($d->aval_from))
                                <td class="font-w600 font-size-sm">
                                   {{ $d->aval_from }}
                                </td>
                                @else
                                    <td class="font-w600 font-size-sm">
                                        Not Determined
                                    </td>
                                @endif
                                @if(isset($d->aval_to))
                                    <td class="font-w600 font-size-sm">
                                        {{ $d->aval_to }}
                                    </td>
                                @else
                                    <td class="font-w600 font-size-sm">
                                        Not Determined
                                    </td>
                                @endif
                                @if(isset($d->destination))
                                    <td class="font-w600 font-size-sm">
                                        {{ $d->destination }}
                                    </td>
                                @else
                                    <td class="font-w600 font-size-sm">
                                        Not Determined
                                    </td>
                                @endif
                                <td class="font-w600 font-size-sm">
                                    @if($d->status)
                                        <span class="badge badge-success">{{__('packages.active')}}</span>
                                    @else
                                        <span class="badge badge-danger">{{__('packages.deactive')}}</span>
                                    @endif
                                </td>
                                <td class="text-center">
                                    <div class="btn-group">
                                        <a href="{{ route('Admin.EditedPackage', $d->id) }}" class="btn btn-sm btn-light" style="background-color: #008CBA;padding:10px;" data-toggle="tooltip" title="{{__('packages.editPackage')}}">
                                            <i class="fa fa-fw fa-pencil-alt"></i>
                                        </a>
                                        <a href="{{ route('Admin.DeletePackage', $d->id) }}" class="btn btn-sm btn-light" style="background-color:#f44336;padding:10px;" data-toggle="tooltip" title="{{__('packages.deletPackage')}}">
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
        <h5 style="font-size:14px; position:relative;left:40%">لا يوجد أي بيانات لعرضها</h5>
    @endif
@endsection
