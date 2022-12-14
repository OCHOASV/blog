<?php

namespace App\View\Components;

use Illuminate\View\Component;

class Alert extends Component
{
    public $color;
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public function __construct($color = 'blue')
    {
        $this->color = $color;
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        return view('components.alert');
    }

    public function prueba(){
        if ($this->color == 'red') {
            return "Alerta de Peligro, desde método de la Clase";
        }
    }
}
