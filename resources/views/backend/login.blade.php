<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>FREE Ultimate Guide to CDA Interviews: Tips & Proven Strategies to Help You Prepare & Ace Your CDA Structured Interview.</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
    <meta name="description" content="This is an example dashboard created using build-in elements and components.">
    <meta name="msapplication-tap-highlight" content="no">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link href="{{url('/css/theme.css')}}" rel="stylesheet">
    <!-- js files -->
    <script src="{{url('/js/theme.js')}}"></script>
    <!-- end js -->
    <style>
        .sign-in-text{
            color: rgb(63, 106, 216);
            font-size: 1.3rem;
        }
        .login-background{
            background-color:#9e9e9e30;
        }
    </style>
</head>
<body>
<div class="login-background">
	<div class="container h-100 login-container">
    	<div class="row align-items-center h-100">
      		<div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
        		<div class="card card-signin my-5">
          			<div class="card-body">
						<div class="text-center mb-5">
							<img src="{{url('/images/logo.png')}}" width="100px"/>
						</div>
            			<h5 class="card-title text-center h2 mb-4 sign-in-text">Sign In</h5>
                        @include('flash::message')
			            <form class="form-signin" action="{{url('/admin/login')}}" method="post">
                            @csrf
			              	<div class="form-label-group mb-4">
			                	<input type="email" name="email"  class="form-control" placeholder="Email address" required>
			              	</div>

			              	<div class="form-label-group">
			                	<input type="password" name="password"  class="form-control mt-3" placeholder="Password" required>
			              	</div>
			              	<button class="btn btn-lg btn-primary btn-block text-uppercase mt-5" type="submit">Login</button>
			            </form>
          			</div>
        		</div>
      		</div>
    	</div>
  	</div>
</div>
</body>
</html>