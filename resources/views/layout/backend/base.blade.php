<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
  
  <meta http-equiv="content-type" content="text/html; charset=UTF-8"> 

  <title>FREE Ultimate Guide to CDA Interviews: Tips & Proven Strategies to Help You Prepare & Ace Your CDA Structured Interview.</title>

  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="keywords" content="">
  <meta name="author" content="">
  <meta name="csrf-token" content="{{ csrf_token() }}">

  @include('layout.backend.stylesheet')
  @yield('stylesheet')
</head>
<body>
  <div class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
  @include('layout.backend.header')
  <div class="app-main">
    @include('layout.backend.sidebar')
    <div class="app-main__outer">
      @yield('body')
    </div>

    
  
  
  @include('layout.backend.script')
  @yield('script')
  </div>
  </div>
  </body>
</html>