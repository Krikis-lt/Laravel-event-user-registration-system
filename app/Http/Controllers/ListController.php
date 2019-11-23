<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Event;
use App\Player;
use Laracsv\Export;
use League\Csv\Writer;
use League\Csv\Reader;


class ListController extends Controller
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

        $csv = \League\Csv\Writer::createFromFileObject(new \SplTempFileObject());

        $csv->insertOne(['','vardas', 'pavardė', 'gimimo data','miestas','šalis','reitingas','telefonas','el.paštas','','grupė']);

        $list_id = new Event;
        $list_id = $request->input('event_id');
        $users = Player::where('event_id',$list_id)->get()->each(function($person) use($csv) {
            $csv->insertOne($person->toArray());
        });
        $csv->setOutputBOM(Reader::BOM_UTF8);

        $csv->output('asmeninis-turnyras.csv');
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
            $players = Player::orderBy('name', 'asc')->where('event_id',$id)->get();
            $list = Event::find($id);
            return view('list')->with('list', $list)->with('players', $players);
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
        $player = Player::findOrFail($id);
 
        $player->delete(); //DELETE OCCURS HERE AFTER RECORD FOUND
     
        \Session::flash('flash_message_delete','Office successfully deleted.');
     
        return redirect()->back();
    }
}
