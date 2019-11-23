<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TPlayer extends Model
{
     // Table name
    protected $table = 't_players';
    // Primary key
    public $primaryKey = 'id';

    public function event(){
    	return $this->hasMany('App\TEvent');
    }
}
