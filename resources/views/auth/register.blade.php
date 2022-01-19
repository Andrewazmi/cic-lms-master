@extends('layouts.app')
@section('pagetitle', 'Create New Account')
@section('content')
<header id="header" class="ex-header">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 class="white">Register New Account</h1>
            </div>
        </div>
    </div>
</header>

<div id="register" class="form-1">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="text-container">
                    <h2>Register Using The Form</h2>
                    <p>It's easy to register for the course, just fill out the form and click submit. Then you will be registered for one of the best SEO training courses in the industry</p>
                    <ul class="list-unstyled li-space-lg">
                        <li class="media">
                            <i class="fas fa-square"></i>
                            <div class="media-body"><strong>Your information</strong> is required to complete the registration</div>
                        </li>
                        <li class="media">
                            <i class="fas fa-square"></i>
                            <div class="media-body"><strong>It's safe with us</strong> and will not be used for marketing</div>
                        </li>

                    </ul>
                </div>
            </div>
            <div class="col-lg-6">


                <div class="form-container">
                    <form id="registrationForm" data-toggle="validator" data-focus="false" action="{{ route('register') }}" method="POST">
                        @csrf
                        <div class="form-group">
                            <input type="text" class="form-control-input @error('name') is-invalid @enderror" id="rname" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>
                            <label class="label-control" for="rname">Complete name</label>
                            <div class="help-block with-errors"></div>
                            @error('name')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                            @enderror
                        </div>

                        <div class="form-group">
                            <input type="email" class="form-control-input @error('email') is-invalid @enderror" id="remail" name="email" value="{{ old('email') }}" required autocomplete="email">
                            <label class="label-control" for="remail">Email address</label>
                            <div class="help-block with-errors"></div>
                            @error('email')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                            @enderror
                        </div>

                        <div class="form-group">
                            <input type="password" class="form-control-input @error('email') is-invalid @enderror" id="rphone" name="password" required autocomplete="new-password">
                            <label class="label-control" for="rphone">Password</label>
                            <div class="help-block with-errors"></div>
                            @error('password')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                            @enderror
                        </div>

                        <div class="form-group">
                            <input type="password" class="form-control-input @error('email') is-invalid @enderror" id="rphone" name="password_confirmation" required autocomplete="new-password">
                            <label class="label-control" for="rphone">Confirm Password</label>
                        </div>



                        <div class="form-group">
                            <button type="submit" class="form-control-submit-button">REGISTER</button>
                        </div>
                        <div class="form-message">
                            <div id="rmsgSubmit" class="h3 text-center hidden"></div>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>
</div>
@endsection
