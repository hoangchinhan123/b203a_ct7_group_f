<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class loaitruyen extends Model
{
    protected $table ="loaitruyen";
    public $timestamps = false;
    public function truyen()
    {
    	return $this->hasMany("truyen","maloai","id")
    }
}
