<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Payments extends Model
{
    // Table name
    protected $table = 'payments';

    protected $fillable = [
        'paid',
    ];

}
