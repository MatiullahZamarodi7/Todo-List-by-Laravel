@extends('layout.master')

@section('content')
    <table class="table table-striped table-hover align-middle">
        <div class="d-flex justify-content-between align-items-center mb-4 flex-wrap gap-2">
            <h4 class="mb-0">Todos</h4>
            <a class="btn btn-dark" href="{{ Route('todo.create') }}">Create the new todo list</a>
        </div>
        <thead class="table-light">
            <tr>
                <th>Image</th>
                <th>Title</th>
                <th>Category</th>
                <th class="text-center">Action</th>
            </tr>
        </thead>
        @foreach ($todos as $todo)
            {
            <tr>
                <td data-label="Image">
                    <img width="90" class=" rounded" src="{{ asset('images/' . $todo->image) }}" alt="image">
                </td>

                <td data-label="Title">
                    {{ $todo->title }}
                </td>

                <td data-label="Category">
                    {{ $todo->category?->name }}
                </td>

                <td data-label="Action" class="text-center">
                    <div class="action-buttons justify-content-center">
                        <a class="btn btn-secondary btn-sm" href="{{ Route('todo.show', ['Todo' => $todo->id]) }}">show</a>
                        @if ($todo->status)
                            <button class=" btn btn-outline-danger btn-sm">Completed</button>
                        @else
                            <a href="{{ Route('todo.status', ['Todo' => $todo->id]) }}"
                                class="btn btn-info btn-sm">doni?</a>
                        @endif

                    </div>
                </td>

            </tr>
        @endforeach
        }

    </table>
    {{ $todos->links('layout.paginate') }}
@endsection
