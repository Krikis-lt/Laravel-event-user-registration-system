<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Sub extends Model
{
     // Table name
    protected $table = 'subscribe_users';
    // Primary key
    public $primaryKey = 'id';

    protected $fillable = ['name', 'surname', 'email', 'birthday'];

}
