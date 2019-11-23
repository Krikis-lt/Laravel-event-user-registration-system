<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Player;
use App\Event;
use App\Sub;
use DB;
use Illuminate\Support\Facades\Auth;
use Eloquent;

class PlayersController extends Controller
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
            'name' => 'required',
            'surname' => 'required',
            'city' => 'required',
            'country' => 'required',
            'tel' => 'required',
            'group' => 'required'
        ]);

        // reg player
        $player = new Player;
        $player->event_id = $request->input('event_id');
        $player->edate = $request->input('edate');
        $player->name = $request->input('name');
        $player->surname = $request->input('surname');
        $player->birthday = $request->input('birthday');
        $player->city = $request->input('city');
        $player->country = $request->input('country');
        $player->rating = $request->input('rating');
        $player->tel = $request->input('tel');
        $player->email = $request->input('email');
        $player->group = $request->input('group');
        $player->subscribe = $request->input('subscribe');
        $player->save();

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
        //
        Eloquent::unguard();
        $player = Player::findOrFail($request->myplayid);
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
