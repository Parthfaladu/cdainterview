<nav class="navbar navbar-expand-lg navbar-light header-bar">
    <a class="navbar-brand" href="#">
        <img src="{{ url('/images/logo.png') }}" width="167" height="100" alt="Site logo">
    </a>
    <button class="navbar-toggler toggel-menu" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
        
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
        </ul>
        <ul class="navbar-nav navbar-right mr-5">
            <li class="nav-item  text-center">
            <li class="nav-item">
                <a href="{{url('/')}}" @if(\Request::route()->getName() == 'home') class="nav-link menu-link menu-hover" @else class="nav-link menu-link" @endif>Main</a>
            </li>
            <li class="nav-item">
                <a class="nav-link menu-link" href="#">How To Prepare</a>
            </li>
            <li class="nav-item">
                <a class="nav-link menu-link" href="#">CDA Interview Questions</a>
            </li>
            <li class="nav-item">
                <a href="{{url('/contact-us')}}" @if(\Request::route()->getName() == 'contact-us') class="nav-link menu-link menu-hover" @else class="nav-link menu-link" @endif>Contact Us</a>
            </li>
            </li>
        </ul>
    </div>
</nav>