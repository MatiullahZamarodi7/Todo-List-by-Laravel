@extends('layout.master')

@section('content')
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>Todo Show</title>

        <!-- Bootstrap 5 CDN -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>

    <body style="background-color:#f8f9fa;">

        <div class="container mt-5">
            <div class="card shadow-sm">

                <!-- Card Header -->
                <div class="card-header d-flex justify-content-between align-items-center">
                    <h5 class="mb-0 text-primary">Todo</h5>
                    <a href="{{ Route('todo.index') }}" class="btn btn-dark btn-sm">Back</a>
                </div>

                <!-- Card Body -->
                <div class="card-body">

                    <img width="100" class=" rounded" src="{{ asset('images/' . $Todo->image) }}" alt="image">

                    <!-- Row 1 -->
                    <div class="row mb-4">
                        <div class="col-md-4">
                            <label class="form-label">Title</label>
                            <input type="text" class="form-control bg-light" value="{{ $Todo->title }}" readonly>
                        </div>

                        <div class="col-md-4">
                            <label class="form-label">Category</label>
                            <input type="text" class="form-control bg-light" value="{{ $Todo->category?->name }}"
                                readonly>
                        </div>

                        <div class="col-md-4">
                            <label class="form-label">Status</label>
                            <input type="text" class="form-control bg-light"
                                value="{{ $Todo->status ? 'complited' : 'doing...' }}" readonly>
                        </div>
                    </div>

                    <!-- Description -->
                    <div class="mb-4">
                        <label class="form-label ">Description</label>
                        <textarea class="form-control bg-light" rows="4" readonly>
                                {{ $Todo->description }}
                </textarea>
                    </div>

                    <!-- Buttons -->
                    <div class="d-flex gap-2">
                        <a href="{{ Route('todo.edit', ['Todo' => $Todo->id]) }}" class="btn btn-secondary">Edit</a>
                        <form action="{{ Route('todo.destroy', ['Todo' => $Todo->id]) }}" method="post">
                            @csrf
                            @method('delete')
                            <button type="submit" class="btn btn-danger">Delete</button>
                        </form>
                    </div>

                </div>
            </div>
        </div>

    </body>

    </html>
@endsection
