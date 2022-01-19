@extends('layouts.app')
@section('pagetitle', 'Buy Course')
@section('content')

<header id="header" class="ex-header">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 class="white">Buy The Course</h1>
            </div>
        </div>
    </div>
</header>

<div id="contact" class="form-3">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="text-container">
                    <h2>Payment Details</h2>
                    <p>Please select your payment method using Refrence Numbers</p>
                    <ul class="list-unstyled li-space-lg">
                        <li class="media">
                            <div class="col-md-3"><img class="img-fluid" src="{{asset('images/fawry.png')}}" alt=""></div>
                            <div class="pt-2"><strong>
                                @php
                                    echo(rand(32745698,92342589));
                                @endphp
                            </strong></div>
                        </li>
                        <li class="media">
                            <div class="col-md-3"><img class="img-fluid" src="{{asset('images/aman.png')}}" alt=""></div>
                            <div class="pt-2"><strong>
                                @php
                                    echo(rand(32745698,92342589));
                                @endphp
                            </strong></div>
                        </li>
                        <li class="media">
                            <div class="col-md-3"><img class="img-fluid" src="{{asset('images/masary.png')}}" alt=""></div>
                            <div class="pt-2"><strong>
                                @php
                                    echo(rand(32745698,92342589));
                                @endphp
                            </strong></div>
                        </li>

                    </ul>
                </div>
            </div>
            <div class="col-lg-6">

                <h2>Confirm Payment</h2>

                <form id="contactForm" data-toggle="validator" data-focus="false">
                    <div class="form-group">
                        <input type="text" class="form-control-input" id="cname" required>
                        <label class="label-control" for="cname">Digital Ref. Number</label>
                        <div class="help-block with-errors"></div>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control-input" id="cemail" required>
                        <label class="label-control" for="cemail">Recipt Number</label>
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
