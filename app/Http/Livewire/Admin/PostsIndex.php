<?php

namespace App\Http\Livewire\Admin;

use Livewire\Component;
use Livewire\WithPagination;
use App\Models\Post;

class PostsIndex extends Component
{
	// Para usar la paginación de LW en AdminLTE con Bootstrap
	use WithPagination;
	protected $paginationTheme = "bootstrap";

	// Para buscar un Post
	public $search;
	// Actualizamos la paginacion
	public function updatingSearch(){
		$this->resetPage();
	}

    public function render()
    {
    	$posts = Post::where('user_id', auth()->user()->id)
    		->where('name', 'LIKE', '%'.$this->search.'%')
    		->latest('id')
    		->paginate();

        return view('livewire.admin.posts-index', compact('posts'));
    }
}
