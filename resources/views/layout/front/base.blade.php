<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
  @if($configuration)
    {!! $configuration->google_analytics_tag !!}
  @endif
  <meta http-equiv="content-type" content="text/html; charset=UTF-8"> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  @yield('head')
  <meta name="csrf-token" content="{{ csrf_token() }}">

  @include('layout.front.stylesheet')
  @yield('stylesheet')
  @if($configuration)
    {!! $configuration->facebook_pixel !!}
  @endif
</head>
<body>
  @include('layout.front.header')
  @include('flash::message')
  @yield('body')

    
  @include('layout.front.footer')
  
  @include('layout.front.script')
  @yield('script')


  </body>
</html>