<?php

public function xuly(Request $rq)
{
	$a = $rq-> a;
	$b = $rq-> b;
	$c = $rq-> c;
	if($a != " " && $b !="")
	{
		if (is_numeric($a) && is_numeric($b) && is_numeric($c))
		{
			$cv = $b*$b-(4*$a*$c);
			return view("giaiptb2", compact("a","b","c","cv"));

		}
		
		else
		{
			$tb="<h1 align='center'>phải nhập dữ liệu vào !!!</h1>";
		}
		return view("giaiptb2",compact("tb"));
	}
}
	

?>
