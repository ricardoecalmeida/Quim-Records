<!-- ESTENDE O LAYOUT FE MASTER -->
@extends('layouts.femaster')

<!-- INÍCIO DA SECÇÃO -->
@section('content')

<h2><i class="fa-solid fa-arrow-right-to-bracket"></i> Login</h2>

<form method="POST" action="{{ route('login') }}">
    @csrf
    <div class="mb-4">
      <label for="input_email" class="form-label">Email</label>
      <input type="email" name="email" class="form-control" id="input_email">
    </div>
    <div class="mb-4">
      <label for="input_password" class="form-label">Password</label>
      <input type="password" name="password" class="form-control" id="input_password">
    </div>
    <button type="submit" class="btn btn-outline-success"><i class="fa-solid fa-circle-check"></i> Login</button>&nbsp;
    <a href="{{ route('password.request') }}" class="btn btn-outline-danger"><i class="fa-solid fa-circle-question"></i> Forgot password?</a>
  </form>

    <!-- FINAL DA SECÇÃO -->
    @endsection
