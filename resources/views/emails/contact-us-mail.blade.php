@component('mail::message')
<center> <img src="{{ url('/images/logo.png') }}" width="100px"> </center>

# <center>CONTACT US MAIL</center>

Name - {{$name}} <br>
Email address - {{$email}} <br>
Message - {{$message}}<br>

Kind regards,<br>
CDA Interviews Guide.
@endcomponent

<style type="text/css">
.wrapper .body {
	background-color: #f7f9fa;
}
</style>