@extends('layout.backend.base')

@section('body')
<div class="app-main__inner">
    <div class="app-page-title">
        <div class="page-title-wrapper">
            <div class="page-title-heading">
                <div class="page-title-icon">
                    <i class="pe-7s-settings icon-gradient bg-mean-fruit">
                    </i>
                </div>
                <div>
                    Configurations
                </div>
            </div>
        </div>
    </div>  
    <div class="main-card mb-3 card">
        <div class="card-body p-5">
            <div class="row">
                <div class="col-sm-12 ml-3 mb-3">
                    @include('flash::message')
                    <form method="POST" action="{{url('/admin/configuration')}}">  
                        @csrf
                        <div class="form-group">
                            <label class="image-heading h6">Facebook pixel details</label>
                            <textarea class="form-control" name="facebook_pixel" rows="8">@if($config){{$config->facebook_pixel}}@endif</textarea>
                        </div>
                        <div class="form-group mt-4">
                            <label class="image-heading h6">Google analytics tag details</label>
                            <textarea class="form-control" name="google_analytics_tag" rows="8">@if($config){{$config->google_analytics_tag}}@endif</textarea>
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