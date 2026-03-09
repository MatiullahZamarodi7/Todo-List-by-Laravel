<?php

namespace App\Http\Controllers;

use App\Models\categoryes;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function index()
    {
        $categories = Categoryes::all();
        return view("categores.index", compact("categories"));
    }
    public function create()
    {
        return view("categores.create");
    }

    public function store(Request $request)
    {
        // dd($request->all());
        $request->validate([
            'title' => 'required|min:5',
        ]);

        categoryes::create([
            'name' => $request->title,
        ]);

        return redirect()->route('category.index');
    }

    public function edit(categoryes $catagory)
    {
        // dd($catagory);
        return view('categores.edit', compact('catagory'));
    }

    public function update(Request $request, categoryes $catagory)
    {
        // dd($catagory, $request->all());

        $request->validate([
            'title' => 'required|min:5',
        ]);
        $catagory->update([
            'name' => $request->title,
        ]);
        return redirect()->route('category.index');
    }

    public function destroy(categoryes $catagory)
    {
        $catagory->delete();
        return redirect()->route('category.index');
    }
}
