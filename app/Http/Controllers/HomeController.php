<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\TEvent;
use App\Event;
use App\Player;
use App\TPlayer;
use DateTime;

class HomeController extends Controller
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
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //$date = new DateTime;
        //$date->modify('-800 hours');
        //$formatted = $date->format('Y-m-d H:i:s');
        //TPlayer::where('edate', '<=', $formatted)->delete();
        //Player::where('edate', '<=', $formatted)->delete();
        //Event::where('edate', '<=', $formatted)->delete();
        //TEvent::where('edate', '<=', $formatted)->delete();

        $tevents = TEvent::orderBy('edate', 'desc')->get();
        $events = Event::orderBy('edate', 'desc')->get();
        $lists = Event::orderBy('edate', 'desc')->get();
        $tlists = TEvent::orderBy('edate', 'desc')->get();
        return view('home')->with('events', $events)->with('lists', $lists)->with('tlists', $tlists)->with('tevents', $tevents);
    }
}
