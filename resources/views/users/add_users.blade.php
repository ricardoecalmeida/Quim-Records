<!-- ESTENDE O LAYOUT FE MASTER -->
@extends('layouts.femaster')

<!-- INÍCIO DA SECÇÃO -->
@section('content')

<h2><i class="fa-solid fa-user-plus"></i> New user account</h2>
<br>

<form method="POST" action="{{ route('users.create') }}" enctype="multipart/form-data">
    @csrf
    <div class="mb-4">
        <label for="user_name_input" class="form-label">Name</label>
        <input type="text" value="{{ old('name') }}" name="name" class="form-control" id="resources/views/users/add_users.blade.php" required>
        @error('name')
        <br>
        <div class="alert alert-danger">Invalid name</div>
        @enderror
    </div>

    <div class="mb-4">
        <label for="user_email_input" class="form-label">Email</label>
        <input value="{{ old('email') }}" type="email" name="email" class="form-control" id="user_email_input" required>
        @error('email')
        <br>
        <div class="alert alert-danger">Invalid email</div>
        @enderror
    </div>
    <div class="mb-4">
        <label for="user_password_input" class="form-label">Password</label>
        <input value="" type="password" name="password" class="form-control" id="user_password_input" required>
        @error('password')
        <br>
        <div class="alert alert-danger">Invalid password</div>
        @enderror
    </div>
    <button type="submit" class="btn btn-outline-success"><i class="fa-solid fa-circle-check"></i> Register</button>
</form>

    <!-- FINAL DA SECÇÃO -->
    @endsection
