<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Event;
use DB;
use Illuminate\Support\Facades\Auth;

class EventsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        if(Auth::check()){
        return view('events.create');
        } else {
        return redirect('/login');
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'ename' => 'required',
            'edesc' => 'required',
            'egroup1' => 'required'
        ]);

        // create event
        $event = new Event;
        $event->ename = $request->input('ename');
        $event->edesc = $request->input('edesc');
        $event->edate = $request->input('edate');
        $event->egroup1 = $request->input('egroup1');
        $event->egroup2 = $request->input('egroup2');
        $event->egroup3 = $request->input('egroup3');
        $event->egroup4 = $request->input('egroup4');
        $event->egroup5 = $request->input('egroup5');
        $event->egroup6 = $request->input('egroup6');
        $event->egroup7 = $request->input('egroup7');
        $event->save();

        return redirect('/');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $no = Event::where('id',$id)->exists();

        if($no){
            $event = Event::find($id);
            return view('reg')->with('event', $event);
        } else {
            return response('Puslapis nerastas');
        }
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
        //
    }
}
