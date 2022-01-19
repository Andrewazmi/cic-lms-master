@extends('layouts.app')
@section('pagetitle', $category->name)
@section('content')

<header id="header" class="ex-header">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 class="white">{{$category->name}}</h1>
                {!!$category->desc!!}
            </div>
        </div>
    </div>
</header>

<div id="description" class="basic-2">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h2 class="mt-5">{{$category->name}} Courses</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <ul class="list-unstyled li-space-lg first">
                    @foreach($courses as $course)
                    <li class="media">
                        <div class="col-xs-12 col-md-3">
                            <a href="{{route('getcourse', $course->id)}}">
                                <img src="{{ Voyager::image( $course->image ) }}" alt="" class="img-fluid">
                            </a>
                        </div>
                        <div class="col-xs-12 col-md-9 pt-3 media-body">
                            <a href="{{route('getcourse', $course->id)}}"><h4>{{$course->name}}</h4></a>
                            <p>{{$course->shortdesc}}</p>
                        </div>
                    </li>
                    @endforeach
                </ul>
            </div>
        </div>
    </div>
</div>
@endsection
