<?php

namespace App\Http\Controllers;

use App\Models\categoryes;
use App\Models\todos;
use Illuminate\Container\Attributes\Tag;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class TodoController extends Controller
{

    public function index()
    {
        $todos = todos::paginate(2);
        return view("todos.index", compact("todos"));
    }
    public function show(todos $Todo)
    {
        return view("todos.show", compact("Todo"));
    }
    public function status(todos $Todo)
    {
        $Todo->update(["status" => 1]);
        return redirect()->route('todo.index');
    }
    public function create()
    {
        $categories = categoryes::all();
        return view("todos.create", compact("categories"));
    }


    public function store(Request $request)
    {
        // dd($request->all());
        $request->validate([
            'image' => 'required|max:2000|image',
            'title' => 'required',
            'category_id' => 'required',
            'Description' => 'required'
        ]);

        $filname = time() . "_" . $request->image->getClientOriginalName();
        $request->image->storeAs('images', $filname);

        todos::create([
            'image' => $filname,
            'title' => $request->title,
            'description' => $request->Description,
            'categoryes_id' => $request->category_id,
        ]);

        return redirect()->route('todo.index');
    }
    public function edit(todos $Todo)
    {
        $categories = categoryes::all();
        return view("todos.edit", compact("Todo", "categories"));
    }

    public function update(Request $request, todos $Todo)
    {

        $request->validate([
            'image' => 'nullable|max:2000|image',
            'title' => 'required',
            'category_id' => 'required',
            'Description' => 'required'
        ]);

        if ($request->hasFile('image')) {
            Storage::delete('images/' . $Todo->image);
            $filname = time() . "_" . $request->image->getClientOriginalName();
            $request->image->storeAs('images', $filname);
        }

        $Todo->update([
            'image' => $request->hasFile('image') ? $filname : $Todo->image,
            'title' => $request->title,
            'description' => $request->Description,
            'categoryes_id' => $request->category_id,
        ]);

        return redirect()->route('todo.index');
    }

    public function destroy(todos $Todo)
    {
        $Todo->delete();
        return redirect()->route('todo.index');
    }
}
