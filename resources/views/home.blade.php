@extends('layout.front.base')

@section('head')
    @if($home->title)
        <title>{{$home->title}}</title>
    @else
        <title>FREE Ultimate Guide to CDA Interviews: Tips & Proven Strategies to Help You Prepare & Ace Your CDA Structured Interview.</title>
    @endif
    @if($home->no_index == true)
        <meta name="robots" content="noindex">
    @endif
    <meta name="description" content="{{$home->meta_description}}">
@endsection

@section('body')
<div class="container-wd justify-content-center align-self-center text-center">
    <img src="{{$home->hero_section_image_path}}" class="hero-section mt-4" width="100%" height="300px">
    <div class="font-weight-light text-light centered banner-text">CDA Interview Guide</div>
</div>
<div class="row home-content mr-0">
{!! $home->content !!}
</div>
@stop
