<?php
   // session_start();

include ('controller/xulykhachhang.php');    
 $xulykhachhang = new xulykhachhang();
?>
<?php
  // session_start();
// if(!isset(session_start())){
//     session_start();
// }

    if(isset($_POST['dangki2']))
    {        
        $tenkh = $_POST['tenkh'];
        $email = $_POST['email'];
        $pass = $_POST['pass'];
        $passwordAgain = $_POST['passwordAgain'];
        if($pass == $passwordAgain){
            
            $user = $xulykhachhang->dangki($tenkh,$email,$pass);
            header("location:index.php?xem=dangki");
        }

    } 
?>

<div class="col-md-6 col-sm-6 sign-in">
	<h4 class="">Đăng kí</h4>
	<form class="register-form outer-top-xs" role="form" method="POST" action="">
		<div class="form-group">
		    <label class="info-title" for="exampleInputEmail1">Tên <span>*</span></label>
		    <input type="text" class="form-control unicase-form-control text-input" id="exampleInputEmail1" name="tenkh" >
		</div>
		<div class="form-group">
		    <label class="info-title" for="exampleInputEmail1">Email <span>*</span></label>
		    <input type="email" class="form-control unicase-form-control text-input" id="exampleInputEmail1" name="email" >
		</div>
	  	<div class="form-group">
		    <label class="info-title" for="exampleInputPassword1">Pass <span>*</span></label>
		    <input type="password" class="form-control unicase-form-control text-input" id="exampleInputPassword1" name="pass">
		</div>
		<div class="form-group">
		    <label class="info-title" for="exampleInputPassword1">Nhập lại Pass <span>*</span></label>
		    <input type="password" class="form-control unicase-form-control text-input" id="exampleInputPassword1" name="passwordAgain">
		</div>
	  	<input type="submit" class="btn-upper btn btn-primary checkout-page-button" value="Đăng kí" name="dangki2">
	</form>					
</div>