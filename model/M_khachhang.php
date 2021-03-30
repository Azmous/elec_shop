<?php

include_once "database.php";
 class M_khachhang extends database
 	{
 		function querydangki($tenkh,$email,$pass)
 		{
 			$sql = "INSERT INTO khachhang(tenkh,email,pass) VALUES(?,?,?)";
 			$this->setQuery($sql);

 			$result = $this->execute(array($tenkh,$email,$pass));
 			if($result)	
 				{
 				return $this->getLastId();
 				}
 			else
 				{
 				return false;
 				}
 		}


 		function querydangnhap($email,$pass){
 			$sql = "SELECT * FROM khachhang WHERE email = '$email' and pass = '$pass'";
 			$this->setQuery($sql);
 			return $this->loadRow(array($email,$pass));
 		}
 	}
?>