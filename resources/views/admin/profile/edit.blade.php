@extends('admin.layouts.app')

@section('content')
@if(session()->has('success'))
    <div class="alert alert-success">
        {{ session()->get('success')}}
    </div>
@endif
    <!-- Hero -->
    <div class="bg-image" style="background-image: url('assets/media/photos/photo8@2x.jpg');">
        <div class="bg-black-75">
            <div class="content content-full text-center">
                <div class="my-3">
                    <img class="img-avatar img-avatar-thumb" src="{{ asset(auth()->user()->image) }}" alt="">
                </div>
                <h1 class="h2 text-white mb-0">Edit Account</h1>
                <h2 class="h4 font-w400 text-white-75">
                    {{auth()->user()->name}}
                </h2>
                <a class="btn btn-light" href="#">
                    <i class="fa fa-fw fa-arrow-left text-danger"></i> Back to Dashboard
                </a>
            </div>
        </div>
    </div>
    <!-- END Hero -->

<div class="block block-rounded">
        <div class="block-header">
            <h3 class="block-title">User Profile</h3>
        </div>
        <div class="block-content">
            <form action="be_pages_projects_edit.html" method="POST" enctype="multipart/form-data" onsubmit="return false;">
                <div class="row push">
                    <div class="col-lg-4">
                        <p class="font-size-sm text-muted">
                            Your account’s vital info.
                        </p>
                    </div>
                    <div class="col-lg-8 col-xl-5">
                        <div class="form-group">
                            <label for="one-profile-edit-name">Name</label>
                            <input type="text" class="form-control" id="one-profile-edit-name" name="name" placeholder="Enter your name.." value="{{ auth()->user()->name }}" required>
                        </div>
                        <div class="form-group">
                            <label for="one-profile-edit-email">Email Address</label>
                            <input type="email" class="form-control" id="one-profile-edit-email" name="email" placeholder="Enter your email.." value="{{ auth()->user()->email }}" required>
                        </div>
                        <div class="form-group">
                            <label>Your Avatar</label>
                            <div class="push">
                                <img class="img-avatar" src="{{ asset(auth()->user()->image) }}" alt="{{auth()->user()->name}}" >
                            </div>
                            <div class="custom-file">
                                <!-- Populating custom file input label with the selected filename (data-toggle="custom-file-input" is initialized in Helpers.coreBootstrapCustomFileInput()) -->
                                <input type="file" class="custom-file-input" data-toggle="custom-file-input" id="one-profile-edit-avatar" name="image">
                                <label class="custom-file-label" for="one-profile-edit-avatar">Choose a new avatar</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-alt-primary">
                                Update
                            </button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!-- END User Profile -->

    <!-- Change Password -->
    <div class="block block-rounded">
        <div class="block-header">
            <h3 class="block-title">Change Password</h3>
        </div>
        <div class="block-content">
            <form action="be_pages_projects_edit.html" method="POST" onsubmit="return false;">
                <div class="row push">
                    <div class="col-lg-4">
                        <p class="font-size-sm text-muted">
                            Changing your sign in password is an easy way to keep your account secure.
                        </p>
                    </div>
                    <div class="col-lg-8 col-xl-5">
                        <div class="form-group">
                            <label for="one-profile-edit-password">Current Password</label>
                            <input type="password" class="form-control" id="one-profile-edit-password" name="one-profile-edit-password">
                        </div>
                        <div class="form-group row">
                            <div class="col-12">
                                <label for="one-profile-edit-password-new">New Password</label>
                                <input type="password" class="form-control" id="one-profile-edit-password-new" name="one-profile-edit-password-new">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-12">
                                <label for="one-profile-edit-password-new-confirm">Confirm New Password</label>
                                <input type="password" class="form-control" id="one-profile-edit-password-new-confirm" name="one-profile-edit-password-new-confirm">
                            </div>
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-alt-primary">
                                Update
                            </button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!-- END Change Password -->

<!-- Billing Information -->
<div class="block block-rounded">
    <div class="block-header">
        <h3 class="block-title">Address Information</h3>
    </div>
    <div class="block-content">
        <form action="be_pages_projects_edit.html" method="POST" onsubmit="return false;">
            <div class="row push">
                <div class="col-lg-4">
                    <p class="font-size-sm text-muted">
                        Your Address information is never shown to other users and only used for creating your invoices.
                    </p>
                </div>
                <div class="col-lg-8 col-xl-5">
                    <div class="form-group">
                        <label for="one-profile-edit-street-1">Street Address </label>
                        <textarea type="text" class="form-control" id="one-profile-edit-street-1" name="one-profile-edit-street-1"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="one-profile-edit-city">Area</label>
                        <select name="" id="" class="form-control">
                            @if(isset($areas))
                                @foreach($areas as $a)
                                    <option value="{{$a->id}}"> {{ $a->name_en }}</option>
                                @endforeach
                            @endif
                        </select>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-alt-primary">
                            Update
                        </button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<!-- END Billing Information -->

@endsection
