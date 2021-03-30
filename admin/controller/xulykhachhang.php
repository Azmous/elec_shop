<?php ;
	require_once ("model/M_khachhang.php");
	class xulykhachhang
	{

		public function khachhang(){
			$M_khachhang = new M_khachhang();
			$khachhang = $M_khachhang->querykhachhang();
			return array('khachhang'=>$khachhang);
		}

		// public function dangnhap($user,$pass){
		// 	$M_khachhang = new M_khachhang();
		// 	$admin = $M_khachhang->admin($user,$pass);
		// 	if($admin==true){
		// 		$_SESSION['user_name']= $admin->taikhoan;
		// 		header('location:index.php');
		// 		if(isset($_SESSION['user_error'])){
		// 			unset($_SESSION['user_error']);
		// 		}
		// 	}
		// 	else{
		// 		$_SESSION['user_error']= "sai thông tin đăng nhập";
		// 		header('location:login.php');
		// 	}
		// }
			public function dangxuat()
			{
			session_destroy();
			header('location:login.php');
		}
	}


?>