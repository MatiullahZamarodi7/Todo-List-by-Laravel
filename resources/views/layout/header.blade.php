<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Todo App</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: #f4f6f9;
        }

        /* تصویر */
        .table img {
            width: 50px;
            height: 50px;
            object-fit: cover;
            border-radius: 8px;
        }

        /* موبایل استایل */
        @media (max-width: 768px) {

            thead {
                display: none;
            }

            table,
            tbody,
            tr,
            td {
                display: block;
                width: 100%;
            }

            tr {
                background: #fff;
                padding: 15px;
                margin-bottom: 15px;
                border-radius: 12px;
                box-shadow: 0 3px 8px rgba(0, 0, 0, 0.05);
            }

            td {
                text-align: left !important;
                padding: 8px 0;
                border: none;
            }

            td::before {
                content: attr(data-label);
                font-weight: bold;
                display: block;
                color: #6c757d;
                margin-bottom: 4px;
            }

            .action-buttons {
                display: flex;
                gap: 10px;
                flex-wrap: wrap;
            }

        }
    </style>
</head>

<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light shadow-sm">
        <div class="container">
            <a class="navbar-brand fw-bold" href="#">Todo App</a>

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="{{ Route('todo.index') }}">list of todo</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ Route('category.index') }}">Category</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>



