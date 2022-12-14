<x-app-layout>
    <div class="OCHOAcontainer py-4">
        <h1 class="text-4xl font-bold text-gray-600">{{$post->name}}</h1>
        <div class="text-lg text-gray-500 mb-2">
            {!!$post->extract!!}
        </div>
        <div class="grid grid-cols-1 lg:grid-cols-3 gap-6">
            <div class="lg:col-span-2">
                <figure>
                    <img class="w-full h-80 object-cover object-center" src="@if ($post->image) {{ Storage::url($post->image->url) }} @else https://cdn.pixabay.com/photo/2022/07/03/20/45/bee-7299967_960_720.jpg @endif" alt="">
                </figure>
                <div class="text-base text-gray-500 mt-4">
                    {!!$post->body!!}
                </div>
            </div>
            <aside>
                <h1 class="text-2xl font-bold text-gray-600 mb-4">
                    Más en {{$post->category->name}}
                </h1>
                <ul>
                    @foreach ($similares as $similar)
                        <li class="mb-4">
                            <a href="{{route('post.show', $similar)}}" class="flex">
                                <img src="@if ($similar->image) {{ Storage::url($similar->image->url) }} @else https://cdn.pixabay.com/photo/2022/07/03/20/45/bee-7299967_960_720.jpg @endif" class="w-36 h-20 object-cover object-center" alt="">
                                <span class="ml-2 text-gray-600">
                                    {{ $similar->name }}
                                </span>
                            </a>
                        </li>
                    @endforeach
                </ul>
            </aside>
        </div>
    </div>
</x-app-layout>