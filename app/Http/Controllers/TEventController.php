<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\TEvent;
use DB;
use Illuminate\Support\Facades\Auth;

class TEventController extends Controller
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
        return view('events.tcreate');
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
            'egroup1' => 'required',
            'charged' => 'required',
            'playerNo' => 'required',
        ]);

        // create event
        $tevent = new TEvent;
        $tevent->ename = $request->input('ename');
        $tevent->edesc = $request->input('edesc');
        $tevent->edate = $request->input('edate');
        $tevent->charged = $request->input('charged');
        $tevent->egroup1 = $request->input('egroup1');
        $tevent->egroup2 = $request->input('egroup2');
        $tevent->egroup3 = $request->input('egroup3');
        $tevent->egroup4 = $request->input('egroup4');
        $tevent->egroup5 = $request->input('egroup5');
        $tevent->egroup6 = $request->input('egroup6');
        $tevent->egroup7 = $request->input('egroup7');
        $tevent->playerNo = $request->input('playerNo');
        $tevent->save();

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
        $no = TEvent::where('id',$id)->exists();

        if($no){
            $tevent = TEvent::find($id);
            return view('treg')->with('tevent', $tevent);
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
