<?php
	include_once "database.php";
 class M_dathang extends database{
 	public function querydonhang(){
 		$sql = "SELECT * FROM (donhang JOIN chitietdonhang ON donhang.madh=chitietdonhang.madh) JOIN (hoadon JOIN chitiethoadon ON hoadon.mahd = chitiethoadon.mahd) ON donhang.madh=hoadon.madh WHERE 1";
 		$this->setQuery($sql);
 		return $this->loadAllRows();
 	}
 }