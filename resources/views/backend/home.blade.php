@extends('layout.backend.base')

@section('body')
<div class="app-main__inner">
    <div class="app-page-title">
        <div class="page-title-wrapper">
            <div class="page-title-heading">
                <div class="page-title-icon">
                    <i class="pe-7s-home icon-gradient bg-mean-fruit">
                    </i>
                </div>
                <div>
                    Home page builder
                </div>
            </div>
        </div>
    </div>  
    <div class="main-card mb-3 card">
        <div class="card-body p-5">
            <div class="row">
                <div class="col-sm-12 ml-3 mb-3">
                    @include('flash::message')
                    <form method="POST" action="{{url('/admin/homepage-content')}}" id="homePageForm" enctype="multipart/form-data">  
                        @csrf
                        <div class="form-group">
                            <div class="custom-checkbox custom-control">
                                <input type="checkbox" name="no_index" id="noIndex" class="custom-control-input" value="1" @if($home->no_index) checked="checked" @endif>
                                <label class="custom-control-label h6 padding-top-2" for="noIndex">Set page to no index</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="h6">Meta title</label>
                            <input name="title" placeholder="Meta title" type="text" value="{{$home->title}}" class="form-control">
                        </div>
                        <div class="form-group">
                            <label class="h6">Meta Description</label>
                            <input name="meta_description" placeholder="Meta description" value="{{$home->meta_description}}" type="text" class="form-control">
                        </div>
                        <div class="form-group mt-4">
                            <label class="image-heading mb-3">Home Page Image</label>
                            <img src="{{$home->hero_section_image_path}}" id="homePageImage" class="d-block"> 
                            <input id="homeUploadImage" type="file" name="hero_section_image" class="d-none">
                        </div>
                        <button class="btn btn-info" id="changeImage">Change Image</button>
                        <div class="form-group mt-4">
                            <label class="image-heading mb-3">Home Page Content</label>
                            <textarea name="content" id="content">{{$home->content}}</textarea>
                            <div class="text-danger mt-3" id="contentError" style="display:none;">Content field is required.</div>
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
        height : "900",
        init_instance_callback: function(editor) {
            editor.on('input', function(e) {
                $("#contentError").hide();        
            });
        }
    });

    $("#changeImage").on("click",function(e){
		 e.preventDefault();
		$("#homeUploadImage").click();
    });

    $("#homeUploadImage").change(function(){
		$("#homePageImage").attr("src",null);
        readURL(this, '#homePageImage');
	});

    $("#homePageForm").on("submit", function(e){
        $("#contentError").hide();
        var editorContent = tinyMCE.get('content').getContent();
        if (editorContent == ''){
            e.preventDefault();
            $("#contentError").show();
            return false;
        }
        this.submit();
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