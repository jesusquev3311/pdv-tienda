<?php

namespace App\Http\Controllers;

use App\Tag;
use Illuminate\Http\Request;

class TagsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tags = Tag::all();

        return response()->json($tags);
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'name'        => 'required',
        ]);

        $tag = Tag::create($request->all());

        return response()->json([
            'message' => 'Great success! New tag created',
            'tag' => $tag
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Tag  $tags
     * @return \Illuminate\Http\Response
     */
    public function show(Tags $tag)
    {
        return $tag;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Tag  $tag
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Tags $tag)
    {

         $tag->update($request->all());

         return response()->json([
             'message' => 'Great success! Tag updated',
             'tag' => $tag
         ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Tag  $tags
     * @return \Illuminate\Http\Response
     */
    public function destroy(Tags $tag)
    {
        $tag->delete();

        return response()->json([
            'message' => 'Successfully deleted tag!'
        ]);
    }
}
