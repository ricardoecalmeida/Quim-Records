<!-- ESTENDE O LAYOUT FE MASTER -->
@extends('layouts.femaster')

<!-- INÍCIO DA SECÇÃO -->
@section('content')
    @auth
        <div class="hello">
            <h5>Hello, {{ Auth::user()->name }} <i class="fa-regular fa-face-smile-wink"></i>
                <h5>
        </div>
    @endauth

    <div class="text-home">
        <p>Step into the world of <span class="text-red">Quim Records</span>, where the essence of musical greatness
            transcends time and genre. Founded in
            2024 in the vibrant city of Porto, Portugal, Quim Records stands as a beacon of musical heritage, proudly
            bringing together an illustrious collection of iconic works from some of the most revered bands in the annals of
            music history.</p>
        <p>Behind the scenes, our website — a labor of love developed with the help of <span class="text-red">Sara
                Monteiro</span>'s expertise, a (on her own words: <i>"meh..."</i> ) fan of <span class="text-red">Star Wars</span>, and the
            cutting-edge capabilities of the <span class="text-red">Laravel</span>
            framework — serves as a digital sanctuary for music enthusiasts worldwide. Here, visitors can immerse themselves
            in our carefully curated
            album covers, and connect with fellow aficionados who share their passion for the art form.</p>
        <p>Quim Records is more than just a record label — it's a vibrant community of artists, fans, and collaborators
            who come together to celebrate the magic of music in all its forms. Join us as we continue to push the
            boundaries of creativity, champion innovation, and pave the way for a future where music remains the universal
            language of the soul.</p>
        <p><span class="text-red"><b>Welcome to Quim Records—Where Music Comes to Life.</b></span></p>
        <hr>
        <div class="info">
            <div class="item">
                <span class="icon"><i class="fa-solid fa-user-graduate"></i></span>
                <p><span class="text-title">Formando</span><br>Ricardo Almeida</p>
            </div>
            <div class="item">
                <span class="icon"><i class="fa-solid fa-person-chalkboard"></i></span>
                <p><span class="text-title">Formadora</span><br>Sara Monteiro</p>
            </div>
            <div class="item">
                <span class="icon"><i class="fa-regular fa-folder-open"></i></span>
                <p><span class="text-title">Módulo</span><br>Web: Server Side</p>
            </div>
            <div class="item">
                <span class="icon"><i class="fa-solid fa-code"></i></span>
                <p><span class="text-title">Curso</span><br>Software Developer</p>
            </div>
            <div class="item">
                <span class="icon"><i class="fa-solid fa-school"></i></span>
                <p><span class="text-title">CESAE Digital</span><br>2024</p>
            </div>
        </div>

        <!-- FINAL DA SECÇÃO -->
    @endsection
