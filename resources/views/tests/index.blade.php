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

        <!-- Scripts -->
        <script src="{{ mix('js/app.js') }}" defer></script>
    </head>
    <body class="font-sans antialiased bg-light">

        <!-- Page Content -->
        <div class="content-wrapper">
            <div class="container-fluid pb-10" style="padding-bottom: 50px">
                <div class="">
                    <h3 class="fw-bold">Test</h3> 
                    {{-- {!! Form::open(['method' => 'POST', 'route' => ['tests.store']]) !!} --}}
                </div>
                <div class="">
                    <form action="{{route('tests.store')}}" method="POST">
                        @csrf
                        @if(count($questions) > 0)
                        <?php $i = 1; ?>
                        @foreach($questions as $question)
                            @if ($i > 1) <hr /> @endif
                            <div class="row">
                                <div class="col-md-12 form-group">
                                    <div class="form-group">
                                        <strong>{{ $i }}.  {!! nl2br($question->question_text) !!}</strong>
                                        <input
                                            type="hidden"
                                            name="questions[{{ $i }}]"
                                            value="{{ $question->id }}">
                                            @foreach($question->option as $option)
                                            <br>
                                            <label class="radio-inline">
                                                <input
                                                    type="radio"
                                                    name="answers[{{ $question->id }}]"
                                                    value="{{ $option->id }}">
                                                {{ $option->option }}
                                            </label>
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                            <?php $i++; ?>
                        {{-- {!!$questions->links()!!} --}}
                        @endforeach
                        @endif
                        <button wire:click.prevent="store()" class="btn btn-primary btn-sm float-right text-white mr-md-1" type="submit">Save</button>
                    </form>
                </div>
            </div>
        </div>
        

        @include('layouts.footer')
        @include('layouts.control-sidebar')
        @include('layouts.js')

        @stack('scripts')
    </body>
</html>
