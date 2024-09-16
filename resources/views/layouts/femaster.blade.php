<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quim Records</title>
    <!-- BOOTSTRAP -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous" defer>
    </script>
    <!-- CSS -->
    <link rel="stylesheet" href="{{ asset('css/app.css') }}" />
    <!-- FONTAWESOME ICONS -->
    <script src="https://kit.fontawesome.com/60e8c1c59b.js" crossorigin="anonymous"></script>
    <!-- GOOGLE FONTS -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Abel&display=swap" rel="stylesheet">

</head>

<body>

    <!-- AUTH AREA -->
    <div class="auth">
        @if (Route::has('login'))
            @auth
            <p class="user">You are logged in as <span class="text-red">{{ Auth::user()->name }}</span></p>
                <form action="{{ route('logout') }}" method="POST">
                    @csrf
                    <button type="submit" class="btn btn-outline-danger">
                        <i class="fa-solid fa-arrow-right-from-bracket"></i> Logout</button>
                </form>
            @else
            @if (Route::has('users.add'))
                    <a href="{{ route('users.add') }}" class="btn btn-outline-secondary btn-sm">
                        <i class="fa-solid fa-user-plus"></i> Register</a>&nbsp;
                @endif
                <a href="{{ route('login') }}" class="btn btn-outline-success">
                    <i class="fa-solid fa-arrow-right-to-bracket"></i> Login</a>

            @endauth
        @endif
    </div>

    <!-- NAVBAR -->
    <nav class="navbar navbar-expand-lg sticky-top">
        <div class="container-fluid">
            <a class="navbar-brand" href="{{ route('main.index') }}">
                <img src=" {{ asset('/images/logo.png') }}" style="height: 128px"></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0" style="text-transform: uppercase; font-size: 9pt">
                    <li class="nav-item px-2">
                        <a class="nav-link" href="{{ route('main.index') }}"><i class="fa-solid fa-house fa-lg"></i></a>
                    </li>
                    <li class="nav-item px-2">
                        <a class="nav-link" href="{{ route('bands.all') }}">Artists</a>
                    </li>
                    <li class="nav-item px-2">
                        <a class="nav-link" href="{{ route('albums.all') }}">Albums</a>
                    </li>
                    @auth
                        @if (Auth::user()->user_type == 1)
                            <li class="nav-item px-2">
                                <a class="nav-link" href="{{ route('dashboard.home') }}"><i
                                        class="fa-solid fa-gear fa-sm"></i> Backoffice</a>
                            </li>
                        @endif
                    @endauth
                </ul>
            </div>
        </div>
    </nav>

    <div class="container">
        <!-- A SECÇÃO CONTENT DEVE APARECER AQUI -->
        @yield('content')
    </div>

    <!-- FOOTER -->
    <div class="footer">
        <footer>
          <p>&copy; 2024 Quim Records</p>
        </footer>
      </div>

</body>

</html>
