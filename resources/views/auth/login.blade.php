@extends('layouts.app')
@section('pagetitle', 'Login')
@section('content')

<header id="header" class="ex-header">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 class="white">Login</h1>
            </div>
        </div>
    </div>
</header>

<div id="contact" class="form-3">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="text-container">
                    <h2>Login To Your Account</h2>
                    <p>Please login to your account to be able to proceed with our services.</p>
                </div>
                <div class="text-container">
                    <p>Or <a href="{{route('register')}}">Create a new Account</a></p>
                </div>
            </div>
            <div class="col-lg-6">

                <form data-toggle="validator" data-focus="false" method="POST" action="{{ route('login') }}">
                    @csrf
                    <div class="form-group">
                        <input type="email" class="form-control-input" id="cname" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>
                        <label class="label-control" for="cname">Email</label>
                        <div class="help-block with-errors"></div>
                        @error('email')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control-input" id="cemail" name="password" required autocomplete="current-password">
                        <label class="label-control" for="cemail">Password</label>
                        <div class="help-block with-errors"></div>
                        @error('password')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                    </div>
                    <div class="form-group checkbox">
                        <input type="checkbox" id="cterms" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>Remember Me
                        <div class="help-block with-errors"></div>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="form-control-submit-button">SUBMIT</button>
                    </div>
                    <div class="form-message">
                        <div id="cmsgSubmit" class="h3 text-center hidden"></div>
                    </div>
                </form>

            </div>
        </div>
    </div>
</div>

@endsection
