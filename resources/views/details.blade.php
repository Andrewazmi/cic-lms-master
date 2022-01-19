@extends('layouts.app')
@section('pagetitle', 'Courses Catalog')
@section('content')

<header id="header" class="ex-header">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 class="white">Courses Catalog</h1>
{{--                 <div>
                    @guest
                    <a class="btn-solid-lg page-scroll" href="{{route('register')}}">Register Now</a>
                    @else
                    <a class="btn-solid-lg page-scroll" href="{{route('buy')}}">Get The Course</a>
                    @endguest
                </div> --}}
            </div>
        </div>
    </div>
</header>


<div id="description" class="basic-2">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h2 class="mt-5">Browse Our Courses</h2>
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

                {{-- @guest
                <a class="btn-solid-reg popup-with-move-anim btn mx-auto d-block" href="{{route('register')}}">Register Now</a>
                @else
                <a class="btn-solid-reg popup-with-move-anim btn mx-auto d-block" href="{{route('buy')}}">Get The Course</a>
                @endguest --}}
            </div>
        </div>
    </div>
</div>

@endsection
