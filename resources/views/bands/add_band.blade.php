<!-- ESTENDE O LAYOUT FE MASTER -->
@extends('layouts.femaster')

<!-- INÍCIO DA SECÇÃO -->
@section('content')

    <h1><i class="fa-solid fa-plus fa-fade"></i>&nbsp;&nbsp;&nbsp;Add artist</h1>

    <form method="POST" action="{{ route('bands.create') }}" enctype="multipart/form-data">
        @csrf
        <div class="mb-4">
            <label for="band_name_input" class="form-label">Name</label>
            <input type="text" value="{{ old('name') }}" name="name" class="form-control" id="band_name_input" required>
            @error('name')
            <br>
            <div class='alert alert-danger'>Invalid name</div>
            @enderror
        </div>
        <div class="mb-4">
            <label for="band_photo_input" class="form-label">Photo</label>
            <input accept="image/*" type="file" name="photo" class="form-control" id="band_photo_input">
            @error('photo')
            <br>
            <div class="alert alert-danger">Invalid photo</div>
            @enderror
        </div>
        <button type="submit" class="btn btn-outline-success"><i class="fa-solid fa-circle-check"></i> Save</button>
    </form>

<!-- FINAL DA SECÇÃO -->
@endsection
