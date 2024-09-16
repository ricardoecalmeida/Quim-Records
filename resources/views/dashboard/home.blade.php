<!-- ESTENDE O LAYOUT FE MASTER -->
@extends('layouts.femaster')

<!-- INÍCIO DA SECÇÃO -->
@section('content')
    @auth
        <div>
            @if (Auth::user()->user_type == 1)
                <div class="alert alert-light">
                    <i class="fa-solid fa-gears fa-lg"></i>&nbsp;&nbsp;&nbsp;Admin account
                </div>
            @endif
            <div>
                <h5>Hello, {{ Auth::user()->name }}!<h5>
            </div>
            <br>
            <div>
                <a href="{{ route('users.all') }}" class="btn btn-outline-secondary"><i class="fa-solid fa-user-group"></i> Users</a>&nbsp;
                <a href="{{ route('bands.add') }}" class="btn btn-outline-secondary"><i class="fa-solid fa-plus"></i> Add Artist</a>&nbsp;
                <a href="{{ route('albums.add') }}" class="btn btn-outline-secondary"><i class="fa-solid fa-plus"></i> Add Album</a>
            </div>
        @endauth
    @endsection
