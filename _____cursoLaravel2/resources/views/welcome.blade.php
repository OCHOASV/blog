<x-app-layout>

</x-app-layout>

{{-- <!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">

        <!-- Styles -->
        <script src="https://cdn.tailwindcss.com"></script>
        @livewireStyles

        <!-- Scripts -->
        @vite(['resources/css/app.css', 'resources/js/app.js'])

        <style>
            body {
                font-family: 'Nunito', sans-serif;
            }
        </style>
    </head>

    @php
        // Esto viene de la DB
        $color = "red";
        $alert = "alert2";
    @endphp

    <body>
        <div class="container mx-auto">
            <x-alert :color="$color" class="mb-4">
                <x-slot name="title">
                    Titulo 1
                </x-slot>
                Lorem ipsum dolor, sit, amet consectetur adipisicing elit. Dolores aliquid dolor error autem, ullam. Doloribus, repellendus quisquam animi maiores repudiandae id dolor ipsa expedita, neque, fuga eum, et! Modi, eum.
            </x-alert>

            <x-alert2 color="green" class="mb-4">
                <x-slot name="title">
                    Alert Anónima
                </x-slot>
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Rerum non, unde, enim dolorem libero repudiandae odio qui modi animi totam id dolore magnam sint aliquam nostrum dolores nam cum est. Con Slot
            </x-alert2>

            <x-dynamic-component :component="$alert">
                <x-slot name="title">
                    Alert Dinamica
                </x-slot>
                Alert Dinamica desde Base de Datos
            </x-dynamic-component>
        </div>
    </body>
</html> --}}
