@extends('layouts.app')
@section('pagetitle', $course->name)
@section('content')

<header id="header" class="ex-header">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 class="white">{{$material->title}}</h1>

            </div>
        </div>
    </div>
</header>

<div id="description" class="basic-2">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                @php
                if (strpos($material->video, 'youtube.com')>0)
                {
                    if (strpos($material->video, '&') > 0) {
                        $_vid = substr($material->video, (strpos($material->video, '?v=')+3), ((strpos($material->video, '&')) - (strpos($material->video, '?v=')+3)));
                    }
                    else {
                        $_vid = substr($material->video, (strpos($material->video, '?v=')+3));
                    }
                    @endphp
                    <iframe src="https://www.youtube.com/embed/{{$_vid}}?autoplay=1" width="100%" height="600" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                    @php
                }
                @endphp

            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <h3>{{$material->title}}</h3>
                {!!$material->desc!!}
                @if($previous != null)
                <a class="btn-solid-lg page-scroll float-left" href="{{$previous}}">Previous</a>
                @endif
                @if($next != null)
                <a class="btn-solid-lg page-scroll float-right" href="{{$next}}">Next</a>
                @endif
            </div>
        </div>
    </div>
</div>
@endsection
