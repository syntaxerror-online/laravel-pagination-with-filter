<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Cites extends Model
{
    protected $table = 'cities';

    protected $fillable = ['id','name','latitude','longitude'];
}
