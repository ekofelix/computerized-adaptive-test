<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>{{ config('app.name') }}</title>

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <!-- End Bootstrap CSS -->

        {{-- font aweswom --}}
        <link rel="stylesheet" href="/assets/plugins/fontawesome-free/css/all.min.css">
        {{-- end font aweswom --}}
    </head>
    <body>
        <div class="container p-4" style="height: 100vh">
            <div class="row" style="height: 20%;width: 100%">
                <div class="col-6">
                    <h3>Nomor Tes : {{ $count_number }}/{{ $data->qty_question }}</h3>

                </div>
                <div class="col-6" style="text-align: right">
                    <h3 id="timer"></h3>
                    <script>
                        var x = "<?php echo"$status->end_time"?>";
                        var id_status = "<?php echo"$status->id"?>";
                        var countDownDate = new Date(x).getTime();
                        // Update the count down every 1 second
                        var x = setInterval(function() {
                            // Get todays date and time
                            var now = new Date().getTime();
                            // Find the distance between now an the count down date
                            var distance = countDownDate - now;
                            // Time calculations for days, hours, minutes and seconds
                            var days = Math.floor(distance / (1000 * 60 * 60 * 24));
                            var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
                            var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
                            var seconds = Math.floor((distance % (1000 * 60)) / 1000);
                            // Output the result in an element with id="demo"
                            document.getElementById("timer").innerHTML = hours + ":"
                            + minutes + ":" + seconds;
                            // If the count down is over, write some text
                            if (distance < 0) {
                                clearInterval(x);
                                document.getElementById("timer").innerHTML = "Time Out";
                                window.location='/test/time-out/'+id_status;
                            }
                        }, 1000);
                    </script>
                </div>
                <hr>
            </div>
            @php
                if($count_number == $data->qty_question ){
                    $route =  route('finish',['id'=>$Test->id,'id_question'=>$question->id,'id_status'=>$status->id]);
                }else{
                    $route =  route('next_test',['id'=>$Test->id,'id_question'=>$question->id,'count_number'=> $count_number,'id_status'=>$status->id]);
                }
            @endphp
            <form class="row" action="{{ $route }}" method="post">
                @csrf
                <div class="col-12" style="height: 400px">
                    <h3 class="mb-5">
                        {{ $question->question_text }}
                    </h3>
                    @php
                        $question_option = \App\Models\QuestionOption::where('question_id',$question->id)->get();
                    @endphp
                    <div class="row">
                        @foreach ($question_option as $x)
                            <div class="col-6">
                                <div class="form-check my-3">
                                    <input class="form-check-input" type="radio" value="{{ $x->id }}" name="options">
                                    <label class="form-check-label">
                                        {{ $x->option }}
                                    </label>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
                <div class="col-12">
                    @if ($count_number == $data->qty_question )
                        <button class="btn btn-success pb-2" style="float:right" type="submit">
                            Selesai<i class="nav-icon fas fa-check" style="font-size: 13px;margin-left:10px"></i>
                        </button>
                    @else
                        <button class="btn btn-primary pb-2" style="float:right" type="submit">
                            Selanjutnya <i class="nav-icon fas fa-arrow-right" style="font-size: 13px;margin-left:10px"></i>
                        </button>
                    @endif
                </div>
            </form>
        </div>

        {{-- Js --}}
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
        {{-- End js --}}
    </body>
</html>
