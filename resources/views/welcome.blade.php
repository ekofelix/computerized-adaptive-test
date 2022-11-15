<x-guest-layout>
    <x-jet-authentication-card>
        <x-slot name="logo">
            <x-jet-authentication-card-logo />
        </x-slot>

        <div class="card-body">

            <div class="card card-outline card-primary">
                <div class="card-header text-center">
                    <h1><b>Computerized</b> </h1>
                    <h3>Adaptive Test</h3>
                </div>
                <div class ="card-body">
                    <div class="social-auth-links text-center mt-2 mb-3">
                        <a href="{{ route('login') }}" class="btn btn-block btn-primary">
                          Masuk
                        </a>
                        {{-- <a href="{{ route('register') }}" class="btn btn-block btn-danger">
                          Register
                        </a> --}}
                    </div>
                </div>
                
            </div>

        </div>
    </x-jet-authentication-card>
</x-guest-layout>