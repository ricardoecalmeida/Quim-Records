<!-- ESTENDE O LAYOUT FE MASTER -->
@extends('layouts.femaster')

<!-- INÍCIO DA SECÇÃO -->
@section('content')

@auth
@if (Auth::user()->user_type == 1)
<div class="add-btn">
    <a href="{{ route('albums.add') }}" class="btn btn-outline-secondary"><i class="fa-solid fa-plus"></i> Add Album</a>
</div>
@endif
@endauth

    <h1><i class="fa-solid fa-compact-disc fa-spin"></i>&nbsp;&nbsp;&nbsp;Albums</h1>

    <table class="table">
        <thead>
            <tr>
                <th scope="col"></th>
                <th scope="col">Title</th>
                <th scope="col">Release date</th>
                <th scope="col">Artist</th>
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
            @foreach ($albums as $album)
                <tr>
                    <td><img class="images" src="{{ $album->cover ? asset('storage/' . $album->cover) : asset('images/unavailable.png') }}"></td>
                    <td><i>{{ $album->title }}</i></td>
                    <td>{{ $album->release }}</td>
                    <td>{{ $album->band->name }}</td>
                    @auth
                    @if (Auth::check())
                    <td><a href="{{ route('albums.view', $album->id) }}" class="btn btn-sm" type="button"
                            style="color: #4f93d9">
                            <i class="fa-solid fa-pen-to-square"></i></a></td>
                            @endif
                            @if (Auth::user()->user_type == 1)
                    <td><a href="{{ route('albums.delete', $album->id) }}" class="btn btn-sm" type="button"
                            style="color: #d9694f">
                            <i class="fa-solid fa-trash"></i></a></td>
                    @endif
                    @endauth
            @endforeach
            </tr>
        </tbody>
    </table>

    <!-- FINAL DA SECÇÃO -->
@endsection
