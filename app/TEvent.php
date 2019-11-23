<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TEvent extends Model
{
    // Table name
    protected $table = 't_events';
    // Primary key
    public $primaryKey = 'id';

    public function users(){
    	return $this->hasMany('App\TPlayer');
    }
}
