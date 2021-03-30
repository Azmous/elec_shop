<?php
	require_once ("model/M_khachhang.php");
	class xulykhachhang
	{
		public function dangki($tenkh,$email,$pass){
			$M_khachhang = new M_khachhang();
			$id_khachhang = $M_khachhang->querydangki($tenkh,$email,$pass);
			//var_dump($id_khachhang);die;
			if($id_khachhang == true){
				$_SESSION['success'] = "Đăng kí thành công";
				header('location:index.php');
				if(isset($_SESSION['error'])){
					unset($_SESSION['error']);
				}
			}
			else{
				$_SESSION['error'] = "Đăng kí không thành công";
				header('location:dangki.php');
			}
		}
		public function dangnhap($email,$pass){
			$M_khachhang = new M_khachhang();
			$khachhang = $M_khachhang->querydangnhap($email,$pass);
			if($khachhang==true){
				$_SESSION['user_name']= $khachhang->tenkh;
				header('location:index.php');
				if(isset($_SESSION['user_error'])){
					unset($_SESSION['user_error']);
				}
			}
			else{
				$_SESSION['user_error']= "sai thông tin đăng nhập";
				header('location:dangnhap.php');
			}
		}
		public function dangxuat()
			{
			session_destroy();
			header('location:index.php');
		}
	}
?>