@extends('layout.master')

@section('content')
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>edit Todo</title>

        <!-- Bootstrap 5 CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>

    <body class="bg-light">

        <div class="container mt-5">
            <div class="card shadow-sm">

                <!-- Card Header -->
                <div class="card-header d-flex justify-content-between align-items-center">
                    <h5 class="mb-0">Create Todo</h5>
                    <a href="{{ Route('todo.index') }}" class="btn btn-dark btn-sm">Back</a>
                </div>

                <!-- Card Body -->
                <div class="card-body">

                    <form action="{{ Route('todo.update', ['Todo' => $Todo->id]) }}" method="POST"
                        enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        <!-- Image -->
                        <div class="mb-3">
                            <label class="form-label">Image</label>
                            <input type="file" name="image" class="form-control">
                            <!-- Error Message -->
                            <div class="form-text text-danger">
                                @error('imag')
                                    {{ $message }};
                                @enderror
                            </div>
                        </div>

                        <!-- Title -->
                        <div class="mb-3">
                            <label class="form-label">Title</label>
                            <input type="text" name="title" value="{{ $Todo->title }}" class="form-control">
                            <div class="form-text text-danger">
                                <!-- Error Message -->
                                @error('title')
                                    {{ $message }};
                                @enderror
                            </div>
                        </div>

                        <!-- Category -->
                        <div class="mb-3">
                            <label class="form-label rounded bg-primary text-white p-2">Category</label>
                            <select class="form-select" name="category_id">
                                @foreach ($categories as $category)
                                    <option {{ $Todo->category_id == $category ? 'selected' : '' }}
                                        value="{{ $category->id }}">{{ $category->name }}</option>
                                @endforeach
                            </select>
                            <!-- Error Message -->
                            @error('category_id')
                                {{ $message }};
                            @enderror
                        </div>

                        <!-- Description -->
                        <div class="mb-3">
                            <label class="form-label">Description</label>
                            <textarea class="form-control" name="Description" rows="4">{{ $Todo->description }}</textarea>
                            <!-- Error Message -->
                            @error('Description')
                                {{ $message }};
                            @enderror
                        </div>

                        <!-- Submit Button -->
                        <button type="submit" class="btn btn-secondary">
                            Submit
                        </button>

                    </form>

                </div>
            </div>
        </div>

    </body>

    </html>
@endsection
