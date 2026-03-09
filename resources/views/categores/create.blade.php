@extends('layout.master')

@section('content')
    <div class="container mt-5">
        <div class="card shadow-sm">

            <!-- Card Header -->
            <div class="card-header d-flex justify-content-between align-items-center">
                <h5 class="mb-0">Create Category</h5>
                <a href="{{ Route('category.index') }}" class="btn btn-dark btn-sm">Back</a>
            </div>

            <!-- Card Body -->
            <div class="card-body">
                <form action="{{ Route('category.store') }}" method="post">
                    @csrf

                    <div class="mb-3">
                        <label class="form-label">Title</label>
                        <input type="text" name="title" class="form-control">

                        <!-- Error Message -->
                        <div class="form-text text-danger">
                            @error('title')
                                {{$message}};
                            @enderror
                        </div>
                    </div>

                    <button type="submit" class="btn btn-secondary">
                        Submit
                    </button>

                </form>
            </div>

        </div>
    </div>
@endsection
