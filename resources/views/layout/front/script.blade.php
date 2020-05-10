<script src="{{url('/js/jquery.min.js')}}"></script>
<script src="{{url('/js/popper.min.js')}}"></script>
<script src="{{url('/js/bootstrap.min.js')}}"></script>
<script>
$(window).scroll(function(){
  var headerbar = $('.header-bar'),
      scroll = $(window).scrollTop();

  if (scroll >= 100) headerbar.addClass('fixed-header');
  else headerbar.removeClass('fixed-header');
});
</script>