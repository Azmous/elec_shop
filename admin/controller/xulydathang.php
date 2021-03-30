<?php
include"model/M_dathang.php";
class xulydathang
{
	public function donhang()
	{
		$M_dathang = new M_dathang();
		$donhang = $M_dathang->querydonhang();
		return array('donhang'=>$donhang);
	}
}