@extends('admin.layouts.app')
@section('content')
@if(isset($groups) && $groups->count() > 0)
    @if(session()->has('success'))
    <div class="alert alert-primary text-right" style="width:100%">
           {{ session()->get('success') }}
        </div>
    @endif

     <div style="width:90%">
    <!-- Bordered Table -->
    <div class="block block-rounded">
        <div class="block-header">
            <h3 class="block-title @if(App::isLocale('ar')) text-right @endif" style="font-size:15px;font-weight:bold">Show All Permissions</h3>

        </div>
        <div class="block-content">
            <table class="table table-bordered table-vcenter" @if(App::isLocale('ar')) dir="rtl" @endif>
                <thead>
                    <tr>
                        <th class="" style="width: 50px;">#</th>
                        <th class="text-center">Group</th>
                        <th  class="text-center">Group Description</th>
                        <th class="text-center">Status</th>

                        <th class="text-center">Actions</th>
                    </tr>
                </thead>
                <tbody class="text-center">
                    @foreach($groups as $g)
                    <tr>
                        <th class="text-center" scope="row">{{ $g->id }}</th>
                        <td class="font-w600 font-size-sm">
                            <a href="{{route('viewPermissionForSpecificGroup', $g->id)}}" >{{ $g->name }}</a>
                        </td>
                        <td class="font-w600 font-size-sm">
                            {{ $g->description }}
                        </td>
                        <td class="d-none d-sm-table-cell">
                            <span class="badge badge-primary">{{($g->status == 0) ? 'De-active' : 'Active'}}</a></span>
                        </td>
                        <td class="text-center">
                            <div class="btn-group">
                                <a href="{{ route('Admin.EditGroup', $g->id) }}" class="btn btn-sm btn-light" style="background-color: #008CBA;padding:10px;" data-toggle="tooltip" title="Edit Group">
                                    <i class="fa fa-fw fa-pencil-alt"></i>
                                </a>
                                <a href="#" class="btn btn-sm btn-light" style="background-color:#f44336;padding:10px;" data-toggle="tooltip" title="Delete Group">
                                    <i class="fa fa-fw fa-times"></i>
                                </a>
                                <a href="{{ route('EditGrouPermissions', $g->id) }}" class="btn btn-sm btn-light" style="background-color:rgba(0,0,0,0.5);padding:10px;" data-toggle="tooltip" title="Edit Permission">
                                    Permission
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



<!-- END All Orders Table -->


@else
<h5 style="font-size:14px; position:relative;left:40%">???? ???????? ???? ???????????? ????????????</h5>
@endif
@endsection