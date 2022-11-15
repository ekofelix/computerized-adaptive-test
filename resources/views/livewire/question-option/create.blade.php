<div class="fixed z-10 inset-0 overflow-y-auto ease-out duration-400">
    <div class="flex items-end justify-center min-h-screen pt-4 px-4 pb-20 text-center sm:block sm:p-0">
        <div class="fixed inset-0 transition-opacity">
            <div class="absolute inset-0 bg-gray-500 opacity-75"></div>
        </div>
        <div class="inline-block align-bottom bg-white rounded-lg text-left overflow-hidden shadow-xl transform transition-all sm:my-8 sm:align-middle sm:max-w-lg sm:w-full"
            role="dialog" aria-modal="true" aria-labelledby="modal-headline">
            <form>
                <div class="bg-white px-4 pt-5 pb-4 sm:p-6 sm:pb-4">
                    <div class="row">
                        <div class="col-md-12">
                            <label for="exampleFormControlInput1">Soal</label>
                            <select required name="question_id"
                                    class="form-control bg-light @error('question_id') is-invalid @enderror"
                                    id="exampleFormControlSelect1" wire:model="question_id">
                                    <option value="">Soal</option>
                                    @foreach($question as $item)
                                    <option value="{{ $item->id }}">{{ $item->question_text}}</option>
                                    @endforeach
                            </select>
                            @error('question_id') <span class="text-red-500">{{ $message }}</span>@enderror
                        </div>    
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <label for="exampleFormControlInput1">Pilihan Soal</label>
                            <input type="text"
                                class="form-control bg-light"
                                id="exampleFormControlInput1" placeholder="Masukkan Pilihan Soal" wire:model="option">
                            @error('option') <span class="text-red-500">{{ $message }}</span>@enderror
                        </div>
                        <div class="col-md-6">
                            <label for="exampleFormControlInput1">Jawaban Benar</label>
                            <input type="text"
                                class="form-control bg-light"
                                id="exampleFormControlInput1" placeholder="Masukkan Jawaban Benar" wire:model="correct">
                            @error('correct') <span class="text-red-500">{{ $message }}</span>@enderror
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