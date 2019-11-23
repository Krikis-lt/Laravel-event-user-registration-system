<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\TEvent;
use App\TPlayer;
use Laracsv\Export;
use Illuminate\Support\Facades\Storage;
use League\Csv\Writer;
use League\Csv\Reader;

class TListController extends Controller
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

        $csv->insertOne(['','Komandos pav.', '1 vardas', '1 pavardė', '1 gimimo data', '2 vardas', '2 pavardė', '2 gimimo data', '3 vardas', '3 pavardė', '3 gimimo data', '4 vardas', '4 pavardė', '4 gimimo data', '5 vardas', '5 pavardė', '5 gimimo data', 'atsakingas', 'miestas','šalis','telefonas','el.paštas','prenumeruoja','grupė','registruotas','atnaujintas','turnyro id','turnyro data','6 vardas', '6 pavardė', '6 gimimo data','Ar gali pravesti varž.','Klubo pav','Sporto salės adres.']);

        $list_id = new TEvent;
        $list_id = $request->input('tevent_id');
         $users = TPlayer::where('tevent_id',$list_id)->get()->each(function($person) use($csv) {
            $csv->insertOne($person->toArray());
        });
        $csv->setOutputBOM(Reader::BOM_UTF8);

        $csv->output('komandinis-turnyras.csv');

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
            $players = TPlayer::orderBy('name', 'asc')->where('tevent_id',$id)->get();
            $tlist = TEvent::find($id);
            return view('tlist')->with('tlist', $tlist)->with('players', $players);
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
        $player = TPlayer::findOrFail($id);
 
        $player->delete(); //DELETE OCCURS HERE AFTER RECORD FOUND
     
        \Session::flash('flash_message_delete','Office successfully deleted.');
     
        return redirect()->back();
    }
}
