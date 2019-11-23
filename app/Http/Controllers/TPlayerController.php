<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\TPlayer;
use App\TEvent;
use App\Sub;
use App\Payments;
use DB;
use Illuminate\Support\Facades\Auth;
use Eloquent;

class TPlayerController extends Controller
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
        //
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
        	'tname' => 'required',
            'name1' => 'required',
            'surname1' => 'required',
            'name2' => 'required',
            'surname2' => 'required',
            'city' => 'required',
            'country' => 'required',
            'tel' => 'required',
            'responsive' => 'required',
            'group' => 'required'
        ]);

        // reg player
        $tplayer = new TPlayer;
        $tplayer->tevent_id = $request->input('tevent_id');
        $tplayer->edate = $request->input('edate');
        $tplayer->tname = $request->input('tname');
        $tplayer->tclubname = $request->input('tclubname');
        $tplayer->argali = $request->input('argali');
        $tplayer->sporthall = $request->input('sporthall');
        $tplayer->name = $request->input('name1');
        $tplayer->surname = $request->input('surname1');
        $tplayer->birthday = $request->input('birthday1');
        $tplayer->name2 = $request->input('name2');
        $tplayer->surname2 = $request->input('surname2');
        $tplayer->birthday2 = $request->input('birthday2');
        $tplayer->name3 = $request->input('name3');
        $tplayer->surname3 = $request->input('surname3');
        $tplayer->birthday3 = $request->input('birthday3');
        $tplayer->name4 = $request->input('name4');
        $tplayer->surname4 = $request->input('surname4');
        $tplayer->birthday4 = $request->input('birthday4');
        $tplayer->name5 = $request->input('name5');
        $tplayer->surname5 = $request->input('surname5');
        $tplayer->birthday5 = $request->input('birthday5');
         $tplayer->name5 = $request->input('name6');
        $tplayer->surname5 = $request->input('surname6');
        $tplayer->birthday5 = $request->input('birthday6');
        $tplayer->responsive = $request->input('responsive');
        $tplayer->city = $request->input('city');
        $tplayer->country = $request->input('country');
        $tplayer->tel = $request->input('tel');
        $tplayer->email = $request->input('email');
        $tplayer->group = $request->input('group');
        $tplayer->subscribe = $request->input('subscribe');
        $tplayer->save();

        //add to subscribe
        $sub = new Sub;
        $conf = $sub->subscribe = $request->input('subscribe');
        if($conf == 1){
            $check = Sub::where('email', '=', $request->input('email'))->first();
            if($check === null){
            $sub->name = $request->input('name');
            $sub->surname = $request->input('surname');
            $sub->birthday = $request->input('birthday');
            $sub->email = $request->input('email');
            $sub->subscribe = $request->input('subscribe');
            $sub->save();
            }
        }

        // check charged or not
        $eventid = $request->input('tevent_id');
        $checkc = TEvent::where('id',$eventid)->select('charged')->pluck('charged')->first();

        if($checkc > '0')
        {
            //add to payments table
            $pay = new Payments;
            $pay->ename = $request->input('ename');
            $pay->price = $request->input('eprice');
            $pay->responsive = $request->input('responsive');
            $pay->edate = $request->input('edate');
            $pay->tname = $request->input('tname');
            $pay->cname = $request->input('cname');
            $pay->address = $request->input('caddress');
            $pay->ccode = $request->input('ccode');
            $pay->vatcode = $request->input('vatcode');
            $pay->email = $request->input('email');
            $pay->accnr = $tplayer->id;
            $pay->paid = 'Ne';
            $pay->save();

            $pdf = new \App\Invoice;
            $pdf->generate();
        }

        return view('success.page');
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
    public function update(Request $request)
    {
        // //
        Eloquent::unguard();
        $player = TPlayer::findOrFail($request->myplayid);
        $player->update($request->except('_token', '_method', 'myplayid'));
        return back();
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
