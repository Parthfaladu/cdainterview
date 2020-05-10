@extends('layout.front.base')

@section('head')
    @if($contactus->title)
        <title>{{$contactus->title}}</title>
    @else
        <title>FREE Ultimate Guide to CDA Interviews: Tips & Proven Strategies to Help You Prepare & Ace Your CDA Structured Interview.</title>
    @endif
    @if($contactus->no_index == true)
        <meta name="robots" content="noindex">
    @endif
    <meta name="description" content="{{$contactus->meta_description}}">
@endsection

@section('body')
<div class="col-12 col-sm-12 col-lg-12">
    <div class="top-img">
        <img src="{{$contactus->contact_us_image_path }}"  alt="Contact-us">
    </div>
    <div class="ml-5 mb-4 contact-detail">
        {!! $contactus->content !!}
    </div>
    <div class="text-center col-12 col-sm-10 offset-sm-1">
        <form role="form" action="{{url('/contact-us')}}" id="contactUsForm" method="post">
            @csrf
            <div class="form-group">
                <label for="">NAME: *</label>
                <input type="text" class="form-control" name="name" required>
            </div>
            <div class="form-group">
                <label for="">EMAIL ADDRESS: *</label>
                <input type="email" class="form-control" name="email" required>
            </div>
            <div class="form-group">
                <label for="">HOW CAN WE HELP YOU? *</label>
                <textarea rows="5" class="form-control" name="message" required></textarea>
            </div>
        
            <div class="row col-12 justify-content-center mt-5">
                <button type="submit" class=" btn btn-success mr-4">Submit</button>
                <button type="button" class=" btn btn-secondery" id="resetBtn">Reset</button>
            </div>

            <div class="row justify-content-center mt-5 mb-5">
                {!! $contactus->note !!}
            </div>
        </form>
    </div>
</div>
@stop

@section('script')
<script>
$(function(){
    $("#resetBtn").click(function(){
        $('#contactUsForm')[0].reset();
    });
});
</script>
@endsection
