<!-- ESTENDE O LAYOUT FE MASTER -->
@extends('layouts.femaster')

<!-- INÍCIO DA SECÇÃO -->
@section('content')

    <h1>You're lost!</h1>
    <p>Click <a href="{{route('main.index')}}" class="link-success">here</a> to go home.</p>

<!-- FINAL DA SECÇÃO -->
@endsection
