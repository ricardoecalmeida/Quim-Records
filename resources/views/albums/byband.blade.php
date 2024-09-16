<!-- ESTENDE O LAYOUT FE MASTER -->
@extends('layouts.femaster')

<!-- INÍCIO DA SECÇÃO -->
@section('content')
    <h1><i class="fa-solid fa-compact-disc fa-spin"></i>&nbsp;&nbsp;&nbsp;All albums by: {{ $band->name }}</h1>

    <table class="table">
        <thead>
            <tr class="table">
                <th scope="col"></th>
                <th scope="col">Title</th>
                <th scope="col">Release Date</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($albums as $album)
                <tr>
                    <td><img class="images"
                            src="{{ $album->cover ? asset('storage/' . $album->cover) : asset('images/unavailable.png') }}">
                    </td>
                    <td>{{ $album->title }}</td>
                    <td>{{ $album->release }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
    <br>
    <a class="btn btn-outline-secondary btn-sm" href="{{ route('bands.all') }}"><i class="fa-solid fa-chevron-left"></i> Go back</a>

    <!-- FINAL DA SECÇÃO -->
@endsection
