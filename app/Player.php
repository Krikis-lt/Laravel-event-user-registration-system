<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Player extends Model
{
     // Table name
    protected $table = 'players';
    // Primary key
    public $primaryKey = 'id';

    public function event(){
    	return $this->hasMany('App\Event');
    }
}
