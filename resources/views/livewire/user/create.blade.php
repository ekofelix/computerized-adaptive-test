<div class="fixed z-10 inset-0 overflow-y-auto ease-out duration-400">
    <div class="flex items-end justify-center min-h-screen pt-4 px-4 pb-20 text-center sm:block sm:p-0">
        <div class="fixed inset-0 transition-opacity">
            <div class="absolute inset-0 bg-gray-500 opacity-75"></div>
        </div>
        <div class="inline-block align-bottom bg-white rounded-lg text-left overflow-hidden shadow-xl transform transition-all sm:my-8 sm:align-middle sm:max-w-lg sm:w-full"
            role="dialog" aria-modal="true" aria-labelledby="modal-headline">
            <form>
                <div class="col-md-12">
                    <div class="col-md-6">
                        <div class="form-group" id="kelas">
                            <label for="exampleFormControlInput1">Kelas</label>
                            <select required name="kelas_id"
                                class="form-control bg-light @error('kelas_id') is-invalid @enderror"
                                id="exampleFormControlSelect1" placeholder="Kelas" wire:model="kelas_id">
                                <option value="">Kelas</option>
                                @foreach($kelas as $item)
                                    <option value="{{ $item->id }}">{{ $item->title }}</option>
                                @endforeach
                            </select>
                            @error('kelas_id')
                            <div class="invalid-feedback">
                                {{$message}}
                            </div>
                            @enderror
                        </div>
                    </div>
                    <div class="col-md-6">
                        <label for="exampleFormControlInput1">NISN</label>
                        <input type="number"
                            class="form-control bg-light"
                            id="exampleFormControlInput1" placeholder="Masukkan NISN" wire:model="nisn">
                        @error('nisn') <span class="text-red-500">{{ $message }}</span>@enderror
                    </div>                 
                </div>
                <div class="col-md-12">
                    <div class="col-md-6">
                        <label for="exampleFormControlInput1">Nama</label>
                        <input type="text"
                            class="form-control bg-light"
                            id="exampleFormControlInput1" placeholder="Masukkan Nama" wire:model="name">
                        @error('name') <span class="text-red-500">{{ $message }}</span>@enderror
                    </div>
                    <div class="col-md-6">
                        <label for="exampleFormControlInput1">Password</label>
                        <input type="text"
                            class="form-control bg-light"
                            id="exampleFormControlInput1" placeholder="Masukkan Password" wire:model="password">
                        @error('password') <span class="text-red-500">{{ $message }}</span>@enderror
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="col-md-6">
                        <label for="exampleFormControlInput1">Sekolah</label>
                        <input type="text"
                            class="form-control bg-light"
                            id="exampleFormControlInput1" placeholder="Masukkan Sekolah" wire:model="school">
                        @error('school') <span class="text-red-500">{{ $message }}</span>@enderror
                    </div>
                    <div class="col-md-6">
                        <label for="exampleFormControlInput1">Umur</label>
                        <input type="text"
                            class="form-control bg-light"
                            id="exampleFormControlInput1" placeholder="Masukkan Umur" wire:model="age">
                        @error('age') <span class="text-red-500">{{ $message }}</span>@enderror
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="col-md-12">
                        <label for="exampleFormControlInput1">Jenis Kelamin</label>
                        <div class="col-md-12">
                            <select class="col-md-6 form-select " value="{{ old('gender') }}" 
                            required autocomplete="user_type" autofocus wire:model="gender">
                                <option selected>Jenis Kelamin</option>
                                <option value="L">Laki - Laki</option>
                                <option value="P">Perempuan</option>
                            </select>
                            @error('gender') <span class="text-red-500">{{ $message }}</span>@enderror
                        </div>
                    </div>
                </div>
                <div class="bg-gray-50 px-4 py-3 sm:px-6 sm:flex sm:flex-row-reverse">
                    <button wire:click.prevent="store()" type="button"
                    class="btn btn-primary">
                        Simpan
                    </button>
                    <button wire:click="closeModalPopover()" type="button"
                    class="btn btn-danger">
                        Tutup
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>