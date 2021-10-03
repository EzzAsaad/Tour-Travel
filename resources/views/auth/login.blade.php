<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{config('app.name')}}</title>
    <link rel="icon" href="{{asset('login_assets/images/fav_icon.png')}}">
    <link rel="apple-touch-icon-precomposed" href="{{asset('login_assets/images/fav_icon.png')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('login_assets/css/bootstrap.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('login_assets/css/fontawesome-all.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('login_assets/css/iofrm-style.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('login_assets/css/iofrm-theme9.css')}}">
</head>
<body>
<div class="form-body" class="container-fluid"">
    <div class="row">
        <div class="img-holder">
            <div class="bg"></div>
            <div class="info-holder">
                <h3>Welcome in Egypt Majestic Tours Dashboard.</h3>
                <p>You Have to login!</p>
                <img src="{{asset('login_assets/images/2922096-ai.png')}}" alt="">
            </div>
        </div>
        <div class="form-holder">
            <div class="form-content">
                <div class="form-items">
                    <div class="website-logo-inside">
                        <a href="#">
                            <div class="">
{{--                                <img class="" src="{{asset('login_assets/images/logo.png')}}" alt="">--}}
                            </div>
                        </a>
                    </div>
                    <div class="page-links">
                        <a href="#" class="active">Login</a>
                    </div>
                    <form  action="{{ route('login') }}" method="POST">
                        @csrf
                        <input class="form-control @error('email') is-invalid @enderror" type="text" name="email" placeholder="E-mail Address" required>
                        @error('email')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                        <input class="form-control @error('email') is-invalid @enderror" type="password" name="password" placeholder="Password" required>
                        @error('password')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                        <div class="form-button">
                            <button id="submit" type="submit" class="ibtn">Login</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="{{asset('login_assets/js/jquery.min.js')}}"></script>
<script type="text/javascript" src="{{asset('login_assets/js/popper.min.js')}}"></script>
<script type="text/javascript" src="{{asset('login_assets/js/bootstrap.min.js')}}"></script>
<script type="text/javascript" src="{{asset('login_assets/js/main.js')}}"></script>
</body>
</html>
