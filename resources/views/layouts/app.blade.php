<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>{{ config('app.name', 'Laravel') }}</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Nunito:400,600,700" rel="stylesheet">

        <!-- Styles -->
        <link rel="stylesheet" href="{{ mix('css/app.css') }}">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="/assets/plugins/fontawesome-free/css/all.min.css">
        <!-- overlayScrollbars -->
        <link rel="stylesheet" href="/assets/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="/assets/dist/css/adminlte.min.css">
        @livewireStyles

        <!-- Scripts -->
        <script src="{{ mix('js/app.js') }}" defer></script>
    </head>
    <body class="font-sans antialiased bg-light">
        @include('layouts.navbar')
        <x-jet-banner />
        {{-- @livewire('navigation-menu') --}}
        @include('layouts.sidebar')
        <!-- Page Heading -->
        <header >
            <div class="container">
                {{ $header }}
            </div>
        </header>

        <!-- Page Content -->
        {{ $slot }}

        {{-- new fiture --}}
        {{-- @yield('content') --}}
        {{-- new fiture --}}

        @stack('modals')
        @include('layouts.footer')
        @include('layouts.control-sidebar')
        @include('layouts.js')
        @livewireScripts

        @stack('scripts')
    </body>
</html>
