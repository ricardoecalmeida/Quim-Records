<!-- ESTENDE O LAYOUT FE MASTER -->
@extends('layouts.femaster')

<!-- INÍCIO DA SECÇÃO -->
@section('content')
    <h1>&nbsp;&nbsp;&nbsp;Edit album: "{{ $album->title }}"</h1>

    <form method="POST" action="{{ route('albums.update') }}" enctype="multipart/form-data">
        @csrf
        <input type="hidden" name="id" value="{{ $album->id }}" id="">
        <div class="mb-4">
            <label for="album_title_input" class="form-label">Title</label>
            <input type="text" value="{{ $album->title }}" name="title" class="form-control" id="album_title_input"
                required>
            @error('title')
                <br>
                <div class='alert alert-danger'>Invalid title</div>
            @enderror
        </div>
        <div class="mb-4">
            <label for="album_cover_input" class="form-label">Cover</label>
            <input accept="image/*" type="file" name="cover" class="form-control" id="album_cover_input">
            @error('cover')
                <br>
                <div class='alert alert-danger'>Invalid file</div>
            @enderror
        </div>
        <div class="mb-4">
            <label for="release_date_input" class="form-label">Release date</label>
            <input type="date" value="{{ old('release') }}" name="release" class="form-control" id="release_date_input">
            @error('release')
                <br>
                <div class='alert alert-danger'>Invalid date</div>
            @enderror
        </div>
        <div class="mb-4">
            <label for="band_input" class="form-label">Artist</label>
            <select class="form-select form-select-sm" name="band_id" id="band_id">
                @foreach ($bands as $band)
                    <option value="{{ $band->id }}">
                        {{ $band->name }} </option>
                @endforeach
            </select>
        </div>
        <button type="submit" class="btn btn-outline-success"><i class="fa-solid fa-arrows-spin"></i> Update</button>
    </form>
@endsection
