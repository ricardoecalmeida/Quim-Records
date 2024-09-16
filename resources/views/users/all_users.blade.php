<!-- ESTENDE O LAYOUT FE MASTER -->
@extends('layouts.femaster')

<!-- INÍCIO DA SECÇÃO -->
@section('content')
    <h2><i class="fa-solid fa-user-group"></i> All users</h2>

    <table class="table">
        <thead>
            <tr>
                <th scope="col">Name</th>
                <th scope="col">Email</th>
                @auth
                    @if (Auth::user()->user_type == 1)
                        <th scope="col">Delete</th>
                    @endif
                @endauth
            </tr>
        </thead>
        <tbody>
            @foreach ($users as $user)
                <tr>
                    <td>{{ $user->name }}</td>
                    <td>{{ $user->email }}</td>
                    @auth
                        @if (Auth::user()->user_type == 1)
                            <td><a href="{{ route('users.delete', $user->id) }}" class="btn btn-sm" type="button"
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
