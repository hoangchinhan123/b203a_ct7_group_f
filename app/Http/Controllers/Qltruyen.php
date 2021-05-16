<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\loaitruyen;
use App\truyen;
class Qltruyen extends Controller
{
    public function getIndex()
    {
    	$lt = loaitruyen::all();
    	$tr = truyen::all();
    	return view("Doctruyen.Trangchu",compact("lt","tr"));
    }
}
