@extends('layout.backend.base')

@section('body')
<div class="app-main__inner">
    <div class="app-page-title">
        <div class="page-title-wrapper">
            <div class="page-title-heading">
                <div class="page-title-icon">
                    <i class="pe-7s-call icon-gradient bg-mean-fruit">
                    </i>
                </div>
                <div>
                    Contact Us page builder
                </div>
            </div>
        </div>
    </div>  
    <div class="main-card mb-3 card">
        <div class="card-body p-5">
            <div class="row">
                <div class="col-sm-12 ml-3 mb-3">
                    @include('flash::message')
                    <form method="POST" action="{{url('/admin/contactus-content')}}" enctype="multipart/form-data">  
                        @csrf
                        <div class="form-group">
                            <div class="custom-checkbox custom-control">
                                <input type="checkbox" name="no_index" id="noIndex" class="custom-control-input" value="1" @if($contactus->no_index) checked="checked" @endif>
                                <label class="custom-control-label h6 padding-top-2" for="noIndex">Set page to no index</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="h6">Meta title</label>
                            <input name="title" placeholder="Meta title" type="text" value="{{$contactus->title}}" class="form-control">
                        </div>
                        <div class="form-group">
                            <label class="h6">Meta Description</label>
                            <input name="meta_description" placeholder="Meta description" value="{{$contactus->meta_description}}" type="text" class="form-control">
                        </div>
                        <div class="form-group">
                            <label class="h6">Receive contact us mail to</label>
                            <input name="contact_us_email" placeholder="Receive contact us mail to" value="{{$contactus->contact_us_email}}" type="email" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label class="image-heading mb-3">Contact Us Image</label>
                            <img src="{{$contactus->contact_us_image_path}}" id="contactUsPageImage" class="ml-3 d-block"> 
                            <input id="contactUsUploadImage" type="file" name="contact_us_image" class="d-none">
                        </div>
                        <button class="btn btn-info mb-4" id="changeImage">Change Image</button>
                        <div class="form-group">
                            <label class="image-heading mb-3">Contact Us Details</label>
                            <textarea name="content" id="content">{{$contactus->content}}</textarea>
                        </div>
                        <div class="form-group">
                            <label class="image-heading mb-3">Contact Us Note</label>
                            <textarea name="note" id="note">{{$contactus->note}}</textarea>
                        </div>
                        <div class="row justify-content-center">
                            <button type="submit" class="btn btn-success btn-lg mt-4 mb-5">Update</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('script')
<script>
$(function(){
    tinymce.init({
        selector:"textarea",
        height: "400"
    });

    $("#changeImage").on("click",function(e){
		 e.preventDefault();
		$("#contactUsUploadImage").click();
    });
    $("#contactUsUploadImage").change(function(){
		$("#contactUsPageImage").attr("src",null);
        readURL(this, '#contactUsPageImage');
	});
});
function readURL(input, previewId) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function(e) {
            $(previewId).attr("src", e.target.result);
        }
        reader.readAsDataURL(input.files[0]);
    }
}
</script>
@endsection