<?php

namespace App\Http\Livewire\Admin;

use Livewire\Component;
use App\Models\User;
use Livewire\WithPagination;

class UsersIndex extends Component
{
	// Para usar la paginación de LW en AdminLTE con Bootstrap
	use WithPagination;
	protected $paginationTheme = "bootstrap";

	// Para buscar un Usuario
	public $search;
	// Actualizamos la paginacion
	public function updatingSearch(){
		$this->resetPage();
	}

    public function render()
    {
    	$users = User::where('name', 'LIKE', '%'.$this->search.'%')
    		->orWhere('email', 'LIKE', '%'.$this->search.'%')
    		->paginate();

        return view('livewire.admin.users-index', compact('users'));
    }
}
