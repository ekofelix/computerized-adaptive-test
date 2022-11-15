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
        @include('layouts.navbar')
        <x-jet-banner />
        {{-- @livewire('navigation-menu') --}}
        @include('layouts.sidebar')
        <!-- Page Heading -->
        <header >
            <div class="container">
                @include('layouts.header')
            </div>
        </header>

        <!-- Page Content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="container-fluid">
                  <div class="row mb-2">
                    <div class="col-sm-6">
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                      <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="/dashboard">Dashboard</a></li>
                        <li class="breadcrumb-item"><a href="/result">Results</a></li>
                        <li class="breadcrumb-item active">Detail</li>
                      </ol>
                    </div><!-- /.col -->
                  </div><!-- /.row -->
                </div><!-- /.container-fluid -->
            </div>
              <!-- /.content-header -->
            <div class="card">
                <div class="card-header">
                    <h3 class="fw-bold">Results</h3> 
                </div>
                <div class="card-body">
                    <table id="example1" class="table table-bordered table-striped">
                        <tr>
                            <th>Created at</th>
                            <td>{{ $test->created_at}}</td>
                        </tr>
                        <tr>
                            <th>Result</th>
                            <td>{{ $test->result }}</td>
                        </tr>
                    </table>
                    <?php $i = 1 ?>
                        @foreach($results as $result)
                            <table class="table table-bordered table-striped">
                                <tr class="test-option{{ $result->correct ? '-true' : '-false' }}">
                                    <th>Question #{{ $i }} <br> {{ $result->question->question_text}}</th>
                                    <th></th>
                                </tr>
                                {{-- @if ($result->question->code_snippet != '')
                                    <tr>
                                        <td>Code snippet</td>
                                        <td><div class="code_snippet">{!! $result->question->code_snippet !!}</div></td>
                                    </tr>
                                @endif --}}
                                <tr>
                                    <td>Options</td>
                                    <td>
                                        <ul>
                                        @foreach($result->question->option as $option)
                                            <li style="@if ($option->correct == 1) font-weight: bold; @endif
                                                @if ($result->option_id == $option->id) text-decoration: underline @endif">{{ $option->option }}
                                                @if ($option->correct == 1) <em>(correct answer)</em> @endif
                                                @if ($result->option_id == $option->id) <em>(your answer)</em> @endif
                                            </li>
                                        @endforeach
                                        </ul>
                                    </td>
                                </tr>
                                {{-- <tr>
                                    <td>Answer Explanation</td>
                                    <td>
                                    {!! $result->question->answer_explanation  !!}
                                        @if ($result->question->more_info_link != '')
                                            <br>
                                            <br>
                                            Read more:
                                            <a href="{{ $result->question->more_info_link }}" target="_blank">{{ $result->question->more_info_link }}</a>
                                        @endif
                                    </td>
                                </tr> --}}
                            </table>
                        <?php $i++ ?>
                        @endforeach
                    {{-- {!!$results->links()!!} --}}
                </div>
            </div>
        </div>
        

        @include('layouts.footer')
        @include('layouts.control-sidebar')
        @include('layouts.js')

        @stack('scripts')
    </body>
</html>
