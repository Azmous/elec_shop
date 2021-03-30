<?php
//unset($_SESSION['user_error']);
    require "controller/xulykhachhang.php";   
    $xulykhachhang = new xulykhachhang();
?>
<?php
    if(isset($_POST['dangnhap'])){
        $email = $_POST['email'];
        $pass = $_POST['pass'];
        // var_dump($email);
        // var_dump($pass);die;
        $khachhang=$xulykhachhang->dangnhap($email,$pass);
        //print_r($khachhang);die;
    }
    
?>
<div class="col-md-6 col-sm-6 sign-in">
    <h4 class="">Đăng nhập</h4>
    <form class="register-form outer-top-xs" role="form" method="POST" action="">
        <div class="form-group">
            <label class="info-title" for="exampleInputEmail1">Email <span>*</span></label>
            <input type="email" class="form-control unicase-form-control text-input" id="exampleInputEmail1" name="email" >
        </div>
        <div class="form-group">
            <label class="info-title" for="exampleInputPassword1">Pass <span>*</span></label>
            <input type="password" class="form-control unicase-form-control text-input" id="exampleInputPassword1" name="pass">
        </div>
        <input type="submit" class="btn-upper btn btn-primary checkout-page-button" value="Đăng nhập" name="dangnhap">
    </form>                 
</div>