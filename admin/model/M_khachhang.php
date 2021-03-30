<?php

include_once "database.php";
 class M_khachhang extends database
 	{

 		function querykhachhang()
 		{
 			$sql = "SELECT * FROM khachhang";
 			$this->setQuery($sql);
 			return $this->loadAllRows();
 		}

 		function admin($user,$pass){
 			$sql = "SELECT * FROM admin WHERE taikhoan = '$user' and matkhau = '$pass'";
 			$this->setQuery($sql);
 			return $this->loadRow(array($user,$pass));
 		}


 		public function queryxoakhachhang($idkhachhang){
 		$sql = "DELETE FROM khachhang WHERE makh = $idkhachhang";
 		$this->setQuery($sql);
 		return $this->loadRow(array($idkhachhang));
 	}


 	}
?>