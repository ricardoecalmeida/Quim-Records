<!-- ESTENDE O LAYOUT FE MASTER -->
@extends('layouts.femaster')

<!-- INÍCIO DA SECÇÃO -->
@section('content')

    <h1><i class="fa-solid fa-plus fa-fade"></i>&nbsp;&nbsp;&nbsp;Add Album</h1>

    <form method="POST" action="{{ route('albums.create') }}" enctype="multipart/form-data">
        @csrf
        <div class="mb-4">
            <label for="album_title_input" class="form-label">Title</label>
            <input type="text" value="{{ old('title') }}" name="title" class="form-control" id="album_title_input"
                required>
            @error('title')
                <br>
                <div class='alert alert-danger'>Invalid title</div>
            @enderror
        </div>
        <div class="mb-4">
            <label for="album_cover_input" class="form-label">Album cover</label>
            <input accept="image/*" type="file" name="cover" class="form-control" id="album_cover_input">
            @error('cover')
                <br>
                <div class="alert alert-danger">Invalid cover</div>
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
            <select class="form-select form-select-sm" name="band_id" id="band_input">
                @foreach ($bands as $band)
                    <option value="{{ $band->id }}">
                        {{ $band->name }} </option>
                @endforeach
            </select>
            @error('band_id')
                <br>
                <div class='alert alert-danger'>Invalid artist</div>
            @enderror
        </div>
        <button type="submit" class="btn btn-outline-success"><i class="fa-solid fa-circle-check"></i> Save</button>
    </form>

    <!-- FINAL DA SECÇÃO -->
@endsection
