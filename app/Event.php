<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Event extends Model
{
    // Table name
    protected $table = 'events';
    // Primary key
    public $primaryKey = 'id';

    public function users(){
    	return $this->hasMany('App\Player');
    }
}
