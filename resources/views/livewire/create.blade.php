<div class="fixed z-10 inset-0 overflow-y-auto ease-out duration-400">
    <div class="flex items-end justify-center min-h-screen pt-4 px-4 pb-20 text-center sm:block sm:p-0">
        <div class="fixed inset-0 transition-opacity">
            <div class="absolute inset-0 bg-gray-500 opacity-75"></div>
        </div>
        <div class="inline-block align-bottom bg-white rounded-lg text-left overflow-hidden shadow-xl transform transition-all sm:my-8 sm:align-middle sm:max-w-lg sm:w-full"
            role="dialog" aria-modal="true" aria-labelledby="modal-headline">
            <form>
                <div class="bg-white px-4 pt-5 pb-4 sm:p-6 sm:pb-4">
                    <div class="">
                        <div class="col-md-6">
                            <label for="exampleFormControlInput1">Name</label>
                            <input type="text"
                                class="form-control bg-light"
                                id="exampleFormControlInput1" placeholder="Enter Name" wire:model="name">
                            @error('name') <span class="text-red-500">{{ $message }}</span>@enderror
                        </div>
                        <div class="col-md-6">
                            <label for="exampleFormControlInput2">Email:</label>
                            <input
                                class="form-control bg-light"
                                id="exampleFormControlInput2" wire:model="email"
                                placeholder="Enter Email" type="email">
                            @error('email') <span class="text-red-500">{{ $message }}</span>@enderror
                        </div>
                        <div class="col-md-6">
                            <label for="exampleFormControlInput2">Mobile:</label>
                            <input
                                class="form-control bg-light"
                                id="exampleFormControlInput2" wire:model="mobile"
                                placeholder="Enter Mobile" type="number">
                            @error('mobile') <span class="text-red-500">{{ $message }}</span>@enderror
                        </div>                        
                    </div>
                </div>
                <div class="bg-gray-50 px-4 py-3 sm:px-6 sm:flex sm:flex-row-reverse">
                    <button wire:click.prevent="store()" type="button"
                    class="btn btn-primary">
                        Store
                    </button>
                    <button wire:click="closeModalPopover()" type="button"
                    class="btn btn-danger">
                        Close
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>