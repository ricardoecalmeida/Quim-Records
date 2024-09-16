<!-- ESTENDE O LAYOUT FE MASTER -->
@extends('layouts.femaster')


<!-- INÍCIO DA SECÇÃO -->
@section('content')

@auth
@if (Auth::user()->user_type == 1)
<div class="add-btn">
    <a href="{{ route('bands.add') }}" class="btn btn-outline-secondary"><i class="fa-solid fa-plus"></i> Add Artist</a>
</div>
@endif
@endauth

    <h1><i class="fa-solid fa-compact-disc fa-spin"></i>&nbsp;&nbsp;&nbsp;Artists</h1>

    <table class="table">
        <thead>
            <tr class="table">
                <th scope="col"></th>
                <th scope="col">Artist</th>
                <th scope="col">Albums</th>
                @auth
                @if (Auth::check())
                <th scope="col">Edit</th>
                @endif
                @if (Auth::user()->user_type == 1)
                <th scope="col">Delete</th>
                @endif
                @endauth
            </tr>
        </thead>
        <tbody>
            @foreach ($bands as $band)
                <tr>
                    <td><img class="images" src="{{ $band->photo ? asset('storage/' . $band->photo) : asset('images/unavailable.png') }}"></td>
                    <td><a href="{{ route('albums.byband', $band->id) }}">{{ $band->name }}</a></td>
                    <td><a href="{{ route('albums.byband', $band->id) }}">{{ $band->nAlbums }}</a></td>
                    @auth
                    @if (Auth::check())
                    <td><a href="{{ route('bands.view', $band->id) }}" class="btn btn-sm" type="button"
                            style="color: var(--blue)">
                            <i class="fa-solid fa-pen-to-square"></i></a></td>
                            @endif
                            @if (Auth::user()->user_type == 1)
                    <td><a href="{{ route('bands.delete', $band->id) }}" class="btn btn-sm" type="button"
                            style="color: var(--red)">
                            <i class="fa-solid fa-trash"></i></a></td>
                    @endif
                    @endauth
            @endforeach
            </tr>
        </tbody>
    </table>

    <!-- FINAL DA SECÇÃO -->
@endsection
