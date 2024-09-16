<!-- ESTENDE O LAYOUT FE MASTER -->
@extends('layouts.femaster')

<!-- INÍCIO DA SECÇÃO -->
@section('content')

<h2><i class="fa-solid fa-key"></i> Reset password</h2>

<form method="POST" action="{{ route('password.update') }}">
    @csrf
    <div class="mb-4">
      <label for="input_email" class="form-label">Email</label>
      <input type="email" name="email" class="form-control" id="input_email">
    </div>
    <div class="mb-4">
      <label for="input_password" class="form-label">Password</label>
      <input type="password" name="password" class="form-control" id="input_password">
    </div>
    <div class="mb-4">
      <label for="input_password" class="form-label">Password confirmation</label>
      <input type="password" name="password_confirmation" class="form-control" id="input_password">
      <input type="hidden" name="token" value="{{ request()->route('token') }}">
    </div>
    <input type="hidden" name="token" value="{{ request()->route('token') }}">
    <button type="submit" class="btn btn-primary">Recover password</button>
  </form>
  <br>
  <a class="btn btn-outline-secondary btn-sm" href="{{ route('login') }}"><i class="fa-solid fa-chevron-left"></i> Go back</a>

    <!-- FINAL DA SECÇÃO -->
    @endsection
