<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class truyen extends Model
{
  protected $table ="truyen";
  public $timestamps = false;
  public function loaitruyen()
  {
  	return $this->belongsTo("loaitruyen","Maloai","id");
  }
}
