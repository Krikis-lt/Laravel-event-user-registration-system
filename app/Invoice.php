<?php

namespace App;
use Illuminate\Support\Facades\View;

use Dompdf\Dompdf;
use Illuminate\Http\Request;
use Mail;
use Illuminate\Support\Facades\Storage;

class Invoice
{
    protected $pdf;
    
    public function __construct() {
        $this->pdf = new Dompdf;
    }

    public function generate() {
    	$last = Payments::all()->last();
    	$lastid = Payments::orderBy('id', 'desc')->first()->accnr;
 		$newpdf = $this->pdf;

    	$newpdf->loadHtml(
    	View::make('invoice')->with(['last' => $last])->render()
		);
	    $newpdf->render();

        Storage::put('invoice' . $lastid . '.pdf', $newpdf->output());

        Mail::raw('Išankstinė sąskaita / Invoice - www.VSTA.lt / Nuo šiol už turnyrą galite susimokėti iš anksto! Atlikite apmokėjimą, ir atvykite ruoštis turnyrui be rūpresčių! Daugiau informacijos: +370 630 60677', function($message)
		{
			$lastid = Payments::orderBy('id', 'desc')->first()->accnr;
			$email = Payments::orderBy('id', 'desc')->first()->email;

			$pathToFile = Storage::get('invoice' . $lastid . '.pdf');

		    $message->from('info@vsta.lt', 'Info');

		    $message->to($email)->subject('Išankstinė sąskaita/Invoice!')->cc('info@vsta.lt');

		    $message->attachData($pathToFile, 'invoice' . $lastid . '.pdf', ['mime' => 'mime']);
		});
	}
}