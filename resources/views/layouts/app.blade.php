<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


    <meta name="description" content="Landing page template built with HTML and Bootstrap 4 for presenting training courses, classes, workshops and for convincing visitors to register using the form.">
    <meta name="author" content="Inovatik">


    <meta property="og:site_name" content="" />
    <meta property="og:site" content="" />
    <meta property="og:title" content=""/>
    <meta property="og:description" content="" />
    <meta property="og:image" content="" />
    <meta property="og:url" content="" />
    <meta property="og:type" content="article" />


    <title>CIC LMS | @yield('pagetitle')</title>


    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,400i,600,700,700i&display=swap" rel="stylesheet">
    <link href="{{asset('css/bootstrap.css')}}" rel="stylesheet">
    <link href="{{asset('css/fontawesome-all.css')}}" rel="stylesheet">
    <link href="{{asset('css/swiper.css')}}" rel="stylesheet">
    <link href="{{asset('css/magnific-popup.css')}}" rel="stylesheet">
    <link href="{{asset('css/styles.css')}}" rel="stylesheet">


    <link rel="icon" href="{{asset('images/favicon.png')}}">
    @paddleJS
</head>
<body data-spy="scroll" data-target=".fixed-top">


    <div class="spinner-wrapper">
        <div class="spinner">
            <div class="bounce1"></div>
            <div class="bounce2"></div>
            <div class="bounce3"></div>
        </div>
    </div>


    <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">




        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-awesome fas fa-bars"></span>
            <span class="navbar-toggler-awesome fas fa-times"></span>
        </button>


        <div class="collapse navbar-collapse" id="navbarsExampleDefault">
            <a class="mr-auto" href="{{route('frontpage')}}">
                <img src="{{asset('images/logo.png')}}" alt="">
            </a>
            <ul class="navbar-nav ml-auto">
                @guest
                <li class="nav-item">
                    <a class="nav-link page-scroll" href="{{route('login')}}">Login <span class="sr-only">(current)</span></a>
                </li>

                <li class="nav-item">
                    <a class="nav-link page-scroll" href="{{route('register')}}">Register <span class="sr-only">(current)</span></a>
                </li>
                @endguest

                <li class="nav-item">
                    <a class="nav-link page-scroll" href="{{route('coursedetails')}}">Courses Catalog</a>
                </li>


                <li class="nav-item">
                    <a class="nav-link page-scroll" href="{{route('contact')}}">Contact</a>
                </li>

                @auth
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle page-scroll" href="#" id="navbarDropdown" role="button" aria-haspopup="true" aria-expanded="false">Dashboard</a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="{{route('home')}}"><span class="item-text">Dashboard</span></a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="{{route('logout')}}"><span class="item-text" onclick="event.preventDefault();
                        document.getElementById('logout-form').submit();">Logout</span></a>
                        <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                            @csrf
                        </form>
                    </div>
                </li>
                @endauth
            </ul>

        </div>
    </nav>



    @yield('content')



    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="footer-col first">
                        <h5>About LMS</h5>
                        <p class="p-small">We're passionate about teaching people how to do better for their online presence</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="footer-col third">
                        <h5>Links</h5>
                        <ul class="list-unstyled li-space-lg p-small">
                            <li class="media">
                                <i class="fas fa-square"></i>
                                <div class="media-body"><a href="{{route('terms')}}">Terms & Conditions</a></div>
                            </li>
                            <li class="media">
                                <i class="fas fa-square"></i>
                                <div class="media-body"><a href="{{(route('privacy'))}}">Privacy Policy</a></div>
                            </li>
                        </ul>
                    </div>
                </div>

                <script src="{{asset('js/jquery.min.js')}}"></script>
                <script src="{{asset('js/popper.min.js')}}"></script>
                <script src="{{asset('js/bootstrap.min.js')}}"></script>
                <script src="{{asset('js/jquery.easing.min.js')}}"></script>
                <script src="{{asset('js/jquery.countdown.min.js')}}"></script>
                <script src="{{asset('js/swiper.min.js')}}"></script>
                <script src="{{asset('js/jquery.magnific-popup.js')}}"></script>
                <script src="{{asset('js/validator.min.js')}}"></script>
                <script src="{{asset('js/scripts.js')}}"></script>
            </body>
            </html>
