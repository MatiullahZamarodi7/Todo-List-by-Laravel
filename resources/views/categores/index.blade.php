@extends('layout.master')

@section('content')
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Categories Table</title>

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>

    <body class="bg-light">

        <div class="container py-5">



            <div class="card-body">

                <!-- Responsive Table -->
                <div class="table-responsive">
                    <table class="table table-bordered align-middle">
                        <div class="card shadow-sm mb-4">
                            <div class="d-flex justify-content-between align-items-center mt-2 p-2 flex-wrap gap-2">
                                <h4 class="mb-0">Add title of task</h4>
                                <a class="btn btn-dark" href="{{ Route('category.create') }}">Create</a>
                            </div>
                            <thead class="table-light">
                                <tr>
                                    <th>#</th>
                                    <th>Title</th>
                                    <th style="width:150px;">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($categories as $categorie)
                                    <tr>
                                        <td>{{ $categorie->id }}</td>
                                        <td>{{ $categorie->name }}</td>
                                        <td class="d-flex">
                                            <a href="{{ Route('category.edit', ['catagory' => $categorie->id]) }}"
                                                class="btn btn-sm btn-primary">Edit</a>
                                            <form action="{{ Route('category.destroy', ['catagory' => $categorie->id]) }}"
                                                method="post">
                                                @csrf
                                                @method('delete')
                                                <button type="submit" class="btn btn-sm btn-danger ms-2">Delete</button>
                                            </form>

                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                    </table>
                </div>
            </div>
        </div>

        </div>

        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

    </body>

    </html>
@endsection
