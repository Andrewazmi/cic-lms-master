@extends('layouts.app')
@section('pagetitle', $course->name)
@section('content')

<header id="header" class="ex-header">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 class="white">{{$course->name}}</h1>
                {!!$course->shortdesc!!}

            </div>
        </div>
    </div>
</header>

<div id="description" class="basic-2">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <ul>
                    @foreach($materials as $material)
                    <li><a href="material/{{$material->id}}">{{$material->title}}</a></li>
                    @endforeach
                </ul>

            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
            </div>
        </div>
    </div>
</div>
@endsection
