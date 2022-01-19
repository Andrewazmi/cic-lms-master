@extends('layouts.app')
@section('pagetitle', $course->name)
@section('content')

<header id="header" class="ex-header">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 class="white">{{$course->name}}</h1>
                {!!$course->shortdesc!!}
                <div class="mt-2">
                    @guest
                    <a class="btn-solid-lg page-scroll" href="{{route('login')}}">Get It Now for ${{$course->price}}</a>
                    @else
                    @if($payment === 0)
                    <x-paddle-button :url="$payLink" class="btn-solid-lg page-scroll" data-theme="none">
                        Get It Now for ${{$course->price}}
                    </x-paddle-button>
                    @else
                    <a class="btn-solid-lg page-scroll" href="{{$course->id}}/materials">Start Course</a>
                    @endif
                    @endguest
                </div>
            </div>
        </div>
    </div>
</header>

<div id="description" class="basic-2">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="col-md-3 float-left mr-3 mb-3"><img src="{{ Voyager::image( $course->image ) }}" alt="" class="img-fluid"></div>
                {!!$course->desc!!}

            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">

                @guest
                <a class="btn-solid-reg btn mx-auto d-block" href="{{route('login')}}">Get It Now for ${{$course->price}}</a>
                @else
                @if($payment === 0)
                <x-paddle-button :url="$payLink" class="btn-solid-reg btn mx-auto d-block" data-theme="none">
                    Get It Now for ${{$course->price}}
                </x-paddle-button>
                @else
                <a class="btn-solid-reg btn mx-auto d-block" href="{{$course->id}}/materials">Start Course</a>
                @endif
                @endguest
            </div>
        </div>
    </div>
</div>
@endsection
