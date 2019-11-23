<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Sub;
use Mail;

class SubController extends Controller
{
     /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('sub.send');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $subscribers = Sub::get();
        return view('sub.create')->with('subscribers', $subscribers);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $sub = Sub::where('email' ,'!=' ,null)->pluck('email')->toArray();

        $text = $request->input('text');

        Mail::raw([], function($message) use ($text, $sub){
        $message->from('info@vsta.lt', 'VSTA');
        $message->to($sub);
        $message->subject('VSTA naujienos / News');
        $message->setBody($text, 'text/html' );
        });

        return redirect('sub');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $sub = Sub::findOrFail($id);
        $sub->delete();
        return redirect('sub/create');
    }
}
