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
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="exampleFormControlInput1">Kelas</label>
                                <select wire:model="kelas_id" required name="kelas_id"
                                    class="form-control bg-light @error('kelas_id') is-invalid @enderror"
                                    id="exampleFormControlSelect1">
                                    <option value="">Kelas</option>
                                    @foreach($kelases as $kelas)
                                        <option value="{{ $kelas->id }}">{{ $kelas->title }}</option>
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
                            @if (!is_null($kelas_id))
                                <div class="form-group" id="topic">
                                    <label for="exampleFormControlInput1">Topik</label>
                                    <select wire:model="topic_id"
                                        class="form-control bg-light @error('topic_id') is-invalid @enderror"
                                        id="exampleFormControlSelect1">
                                        <option value="">Topik</option>
                                        @foreach($topics as $item)
                                            <option value="{{ $item->id }}">{{ $item->title }}</option>
                                        @endforeach
                                    </select>
                                    @error('topic_id')
                                    <div class="invalid-feedback">
                                        {{$message}}
                                    </div>
                                    @enderror
                                </div>
                            @endif
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-md-6">
                            @if (!is_null($topic_id))
                                <div class="form-group" id="competency">
                                    <label for="exampleFormControlInput1">Kompetensi</label>
                                    <select wire:model="competency_id"
                                        class="form-control bg-light @error('competency_id') is-invalid @enderror"
                                        id="exampleFormControlSelect1">
                                        <option value="">Kompetensi</option>
                                        @foreach($competencies as $item)
                                            <option value="{{ $item->id }}">{{ $item->title }}</option>
                                        @endforeach
                                    </select>
                                    @error('competency_id')
                                    <div class="invalid-feedback">
                                        {{$message}}
                                    </div>
                                    @enderror
                                </div>
                            @endif
                        </div>
                        <div class="col-md-6">
                            @if (!is_null($competency_id))
                                <div class="form-group" id="sub_competency">
                                    <label for="exampleFormControlInput1">Sub Kompetensi</label>
                                    <select wire:model="sub_competency_id"
                                        class="form-control bg-light @error('sub_competency_id') is-invalid @enderror"
                                        id="exampleFormControlSelect1">
                                        <option value="">Sub Kompetensi</option>
                                        @foreach($subCompetencies as $item)
                                            <option value="{{ $item->id }}">{{ $item->title }}</option>
                                        @endforeach
                                    </select>
                                    @error('sub_competency_id')
                                    <div class="invalid-feedback">
                                        {{$message}}
                                    </div>
                                    @enderror
                                </div>
                            @endif
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-md-12">
                            <label for="exampleFormControlInput1">Soal</label>
                            <textarea type="text"
                                class="form-control bg-light"
                                id="exampleFormControlInput1" placeholder="Masukkan Soal" wire:model="question_text" 
                                rows="5">
                            </textarea>
                            @error('question_text') <span class="text-red-500">{{ $message }}</span>@enderror
                        </div>    
                    </div>
                    <br>
                    {{-- <div class="row">
                        <div class="col-md-6">
                            <label for="exampleFormControlInput1">Answer Explanation</label>
                            <input type="text"
                                class="form-control bg-light"
                                id="exampleFormControlInput1" placeholder="Enter Answer Explanation" wire:model="answer_explanation">
                            @error('answer_explanation') <span class="text-red-500">{{ $message }}</span>@enderror
                        </div>
                        <div class="col-md-6">
                            <label for="exampleFormControlInput1">More Info Link</label>
                            <input type="text"
                                class="form-control bg-light"
                                id="exampleFormControlInput1" placeholder="Enter More Info Link" wire:model="more_info_link">
                            @error('more_info_link') <span class="text-red-500">{{ $message }}</span>@enderror
                        </div>
                    </div>
                    <br> --}}
                    <div class="row">
                        <div class="col-md-4">
                            <label for="exampleFormControlInput1">Tingkat Kesulitan</label>
                            <input type="text"
                                class="form-control bg-light"
                                id="exampleFormControlInput1" placeholder="Masukkan Tingkat Kesulitan" wire:model="tingkat_kesulitan">
                            @error('tingkat_kesulitan') <span class="text-red-500">{{ $message }}</span>@enderror
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