<?php

namespace App\Http\Controllers\Products;

use App\Product;
use App\Tag;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ProductTag extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Product $product)
    {
        $tags = $product->tags;

        return $tags;
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request, Product $product)
    {
        $request->validate([
            'name'        => 'required',
        ]);
        $data = $request->all();
        $data['product_id'] = $product->id;

        $tag = Tag::create($data);


        return response()->json([
            'message' => 'Great success! New tag created',
            'tag' => $tag
        ]);
    }

}
