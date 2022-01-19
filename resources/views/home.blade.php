@extends('layouts.app')
@section('pagetitle', 'Dashboard')
@section('content')

<header id="header" class="ex-header">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 class="white">Dashboard</h1>
                <strong class="text-white">welcome {{Auth::user()->name}}!</strong>
            </div>
        </div>
    </div>
</header>
<div id="description" class="basic-2">
    <div class="container">
        <div class="row">
            <div class="col-3">
                <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                    <a class="nav-link active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">My Courses</a>
                    {{-- <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false">My Profile</a> --}}
                    <a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#" role="tab" onclick="event.preventDefault();
                    document.getElementById('logout-form2').submit();">logout</a>
                    <form id="logout-form2" action="{{ route('logout') }}" method="POST" class="d-none">
                        @csrf
                    </form>
                </div>
            </div>
            <div class="col-9">
                <div class="tab-content" id="v-pills-tabContent">
                    <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                        <ul class="list-unstyled li-space-lg first">
                            @if($coursesList->count()>0)
                            @foreach($coursesList as $course)
                            <li class="media">
                                <div class="col-xs-12 col-md-3">
                                    <a href="{{route('getcourse', $course->id)}}">
                                        <img src="{{ Voyager::image( $course->image ) }}" alt="" class="img-fluid">
                                    </a>
                                </div>
                                <div class="col-xs-12 col-md-9 media-body">
                                    <a href="{{route('getcourse', $course->id)}}"><h4>{{$course->name}}</h4></a>
                                    <p>{{$course->shortdesc}}</p>
                                </div>
                            </li>
                            @endforeach
                            @else
                            <h3>You Don't have any courses</h3>
                            <a class="btn-solid-lg page-scroll" href="{{route('coursedetails')}}">Browse our Courses</a>
                            @endif
                        </ul>
                    </div>
                    <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">profile</div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
