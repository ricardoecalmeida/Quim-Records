<!-- ESTENDE O LAYOUT FE MASTER -->
@extends('layouts.femaster')

<!-- INÍCIO DA SECÇÃO -->
@section('content')

<h2><i class="fa-solid fa-key"></i> Reset password</h2>

<form method="POST" action="{{ route('password.email') }}">
    @csrf
    <div class="mb-4">
      <label for="input_email" class="form-label">Email</label>
      <input type="email" name="email" class="form-control" id="input_email">
    </div>
    <button type="submit" class="btn btn-outline-success" disabled aria-disabled="true"><i class="fa-solid fa-circle-check"></i> Reset</button>&nbsp;
    <!-- DESABILITEI PORQUE NÃO DESENVOLVI ESTA FUNCIONALIDADE E DÁ ERRO -->
  </form>
  <br>
  <a class="btn btn-outline-secondary btn-sm" href="{{ route('login') }}"><i class="fa-solid fa-chevron-left"></i> Go back</a>

    <!-- FINAL DA SECÇÃO -->
    @endsection
