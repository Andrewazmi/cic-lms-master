@extends('layouts.app')
@section('pagetitle', 'Contact Us')
@section('content')

<header id="header" class="ex-header">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 class="white">Contact Us</h1>
            </div>
        </div>
    </div>
</header>

<div id="contact" class="form-3">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="text-container">
                    <h2>Contact Details</h2>
                    <p>For registration questions please get in touch using the contact details below. For any questions use the form.</p>
                    <h3>Main Office Location</h3>
                    <ul class="list-unstyled li-space-lg">
                        <li class="media">
                            <i class="fas fa-map-marker-alt"></i>
                            <div class="media-body">EL Sheikh Zayed</div>
                        </li>
                        <li class="media">
                            <i class="fas fa-mobile-alt"></i>
                            <div class="media-body">123123</div>
                        </li>
                        <li class="media">
                            <i class="fas fa-envelope"></i>
                            <div class="media-body"><a class="light-gray" href="mailto:info@ciclms.test">info@ciclms.test</a></div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-6">

                <form id="contactForm" data-toggle="validator" data-focus="false">
                    <div class="form-group">
                        <input type="text" class="form-control-input" id="cname" required>
                        <label class="label-control" for="cname">Name</label>
                        <div class="help-block with-errors"></div>
                    </div>
                    <div class="form-group">
                        <input type="email" class="form-control-input" id="cemail" required>
                        <label class="label-control" for="cemail">Email</label>
                        <div class="help-block with-errors"></div>
                    </div>
                    <div class="form-group">
                        <textarea class="form-control-textarea" id="cmessage" required></textarea>
                        <label class="label-control" for="cmessage">Your message</label>
                        <div class="help-block with-errors"></div>
                    </div>
                    <div class="form-group checkbox">
                        <input type="checkbox" id="cterms" value="Agreed-to-Terms" required>I have read and agree to Corso's stated <a href="privacy-policy.html">Privacy Policy</a> and <a href="terms-conditions.html">Terms Conditions</a>
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
