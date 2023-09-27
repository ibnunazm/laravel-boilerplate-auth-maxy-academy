@extends('auth.layouts.auth')

@section('body_class', 'login')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Set Up Google Authenticator</div>
                <div class="panel-body" style="text-align: center;">
                    <p>Set up your two factor authentication by scanning the barcode below. Alternatively, you can use the code {{ $secret }}</p>
                    <div>
                        {!! $QR_Image !!}
                    </div>
                    <p>You must set up your google authenticator app before continuing. You will be unable to login otherwise</p>
                    <div>
                        <a href="tes/2fa"><button class="btn-primary">Complete Registration</button></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('styles')
    @parent
    {{ Html::style(mix('assets/auth/css/login.css'))}}
@endsection