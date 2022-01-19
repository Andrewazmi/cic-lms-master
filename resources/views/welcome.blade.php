@extends('layouts.app')
@section('pagetitle', 'Homepage')
@section('content')

<header id="header" class="header">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="text-container">

                    <h1>Learning Management Systems (LMS)</h1>
                    <p class="p-large">Advance the education experience with an LMS that inspires a love of learning, drives excellence, and empowers continuous improvement with deep insights in teaching and learning.</p>
                    @auth
                    <a class="btn-solid-lg page-scroll" href="{{route('home')}}">Dashboard</a>
                    @else
                    <a class="btn-solid-lg page-scroll" href="{{route('register')}}">REGISTER</a>
                    @endauth
                    <a class="btn-outline-lg page-scroll" href="{{route('coursedetails')}}">DISCOVER</a>
                </div>
            </div>
        </div>
    </div>
    <br>
    <br>
    <br>

    <div class="outer-container">
        <div class="slider-container">
            <div class="swiper-container image-slider-1">
                <div class="swiper-wrapper">


                    <div class="swiper-slide" >
                        <img class="img-fluid" src="{{asset('images/1.jpg')}}" alt="alternative">
                    </div>



                    <div class="swiper-slide">
                        <img class="img-fluid" src="{{asset('images/2.jpg')}}" alt="alternative" width="800">
                    </div>



                    <div class="swiper-slide">
                        <img class="img-fluid" src="{{asset('images/details-slide-3.jpg')}}" alt="alternative">
                    </div>


                </div>


                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>


            </div>
        </div>
    </div>

</header>

@guest
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
@endguest


<div id="description" class="basic-2">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h2 @auth class="mt-5" @endauth>What Will You Learn In Our LMS Focused Training Course</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <ul class="list-unstyled li-space-lg first">
                    <li class="media">
                        <i class="bullet">1</i>
                        <div class="media-body">
                            <a href="category/1"><h4>Finance</h4></a>
                            <p>Understanding money management and how needed funds are acquired.</p>
                        </div>
                    </li>
                    <li class="media">
                        <i class="bullet">2</i>
                        <div class="media-body">
                            <a href="category/2"><h4>Psychology</h4></a>
                            <p>Psychology is really a very new science, with most advances happening over the past 150 years or so.</p>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="col-lg-6">
                <ul class="list-unstyled li-space-lg second">
                    <li class="media">
                        <i class="bullet">3</i>
                        <div class="media-body">
                            <a href="category/3"><h4>Statistics</h4></a>
                            <p>Statistics is the science concerned with developing and studying methods for collecting, analyzing, interpreting and presenting empirical data.</p>
                        </div>
                    </li>

                    <li class="media">
                        <i class="bullet">4</i>
                        <div class="media-body">
                            <a href="category/4"><h4>Management Infrormation System</h4></a>
                            <p>study of people, technology, organizations, and the relationships among them.</p>
                        </div>
                    </li>

                </ul>
            </div>
        </div>
    </div>
</div>


<div id="details-lightbox" class="lightbox-basic zoom-anim-dialog mfp-hide">
    <div class="container">
        <div class="row">
            <button title="Close (Esc)" type="button" class="mfp-close x-button">×</button>
            <div class="col-lg-8">
                <div class="image-container">
                    <img class="img-fluid" src="{{asset('images/3.jpg')}}" alt="alternative">
                </div>
            </div>
            <div class="col-lg-4">
                <h3>Training Course</h3>
                <hr>
                <h5>For everybody</h5>
                <p>The training course is dedicates to anyone passionate about the web and in need of improving their current online presence.</p>
                <ul class="list-unstyled li-space-lg">
                    <li class="media">
                        <i class="fas fa-square"></i><div class="media-body">Link building framework</div>
                    </li>
                    <li class="media">
                        <i class="fas fa-square"></i><div class="media-body">Know your current position</div>
                    </li>
                    <li class="media">
                        <i class="fas fa-square"></i><div class="media-body">Partnering with blogs</div>
                    </li>
                    <li class="media">
                        <i class="fas fa-square"></i><div class="media-body">Naming your images</div>
                    </li>
                    <li class="media">
                        <i class="fas fa-square"></i><div class="media-body">Creating good sitemaps</div>
                    </li>
                    <li class="media">
                        <i class="fas fa-square"></i><div class="media-body">Writing for humans</div>
                    </li>
                </ul>
                @guest
                <a class="btn-solid-reg mfp-close page-scroll" href="#register">SIGN UP</a>
                @endguest
                <a class="btn-outline-reg mfp-close as-button" href="#screenshots">BACK</a>
            </div>
        </div>
    </div>
</div>

<div class="cards">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h2>Key Takeaways</h2>
                <p class="p-heading">Here are the main topics that will be covered in the training course. They cover all the basics and even some advanced techniques that will help you along the way</p>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">


                <div class="card">
                    <div class="card-image">
                        <i class="fas fa-atom"></i>
                    </div>
                    <div class="card-body">
                        <h4 class="card-title">Position Analysis</h4>
                        <p>Understand where your website is currently positioned in search engine queries</p>
                    </div>
                </div>



                <div class="card">
                    <div class="card-image">
                        <i class="fas fa-key"></i>
                    </div>
                    <div class="card-body">
                        <h4 class="card-title">Keyword Planning</h4>
                        <p>Find the best relevant keywords that fit your website SEO strategy in the long run</p>
                    </div>
                </div>




                <div class="card">
                    <div class="card-image">
                        <i class="fas fa-newspaper"></i>
                    </div>
                    <div class="card-body">
                        <h4 class="card-title">Writing Articles</h4>
                        <p>How to plan your content strategy and write articles that are optimized for SEO</p>
                    </div>
                </div>



                <div class="card">
                    <div class="card-image">
                        <i class="fas fa-link"></i>
                    </div>
                    <div class="card-body">
                        <h4 class="card-title">Gathering Backlinks</h4>
                        <p>Backlinks are vital for SEO and we'll teach you everything there is to know about them</p>
                    </div>
                </div>



                <div class="card">
                    <div class="card-image">
                        <i class="far fa-handshake"></i>
                    </div>
                    <div class="card-body">
                        <h4 class="card-title">Build Partnerships</h4>
                        <p>Partnerships will help you establish your website or blog as an authority in your field</p>
                    </div>
                </div>




                <div class="card">
                    <div class="card-image">
                        <i class="fas fa-chart-bar"></i>
                    </div>
                    <div class="card-body">
                        <h4 class="card-title">Evaluate Actions</h4>
                        <p>Learn how to use the right analytics tools to evaluate your SEO actions and improve them</p>
                    </div>
                </div>


            </div>
        </div>
    </div>
</div>

<div id="date" class="basic-5 pb-5">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="text-container">
                    <h2>December 22nd 2022 at Innovation Hub Space</h2>
                    <p>Our mission is to help people do better courses. The team is excited to invite you to the next  Training Courses session which undoubtedly will provide you with the necessary skills to improve your online presence. Fill out the form to register and we'll contact you in less than 24h</p>
                    @guest
                    <a class="btn-solid-lg page-scroll" href="#register">REGISTER</a>
                    @endguest
                </div>
            </div>
        </div>
    </div>
</div>

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
