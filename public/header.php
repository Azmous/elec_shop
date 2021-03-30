<?php
    require_once "controller/xulysanpham.php";
    $xulysanpham = new xulysanpham();
    $loaisp = $xulysanpham->loaispmn();
    $nhasx = $xulysanpham->nhasxmn();
    $allloaisp = $loaisp['loaisp'];
    $allnhasx = $nhasx['nhasx'];
?>
<div class="top-bar animate-dropdown">
	<div class="container">
		<div class="header-top-inner">
			<div class="cnt-account">
				<ul class="list-unstyled">
					<?php if(isset($_SESSION['user_name'])){ ?>
					<li><a href="#"><i class="icon fa fa-user"></i>Xin chào <?=$_SESSION['user_name']?></a></li>
					<li><a href="?xem=dangxuat"><i class="icon fa fa-sign-in"></i>Đăng xuất</a></li>
					<?php }else { ?>
					<li><a href="?xem=dangki"><i class="icon fa fa-user"></i>Đăng kí</a></li>
					<li><a href="?xem=dangnhap"><i class="icon fa fa-key"></i>Đăng nhập</a></li>
					<?php } ?>
				</ul>
			</div><!-- /.cnt-account -->

			<div class="cnt-block">
				<ul class="list-unstyled list-inline">
					<li class="dropdown dropdown-small">
						<a href="#" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown"><span class="key">currency :</span><span class="value">VND </span><b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#">VND</a></li>
							<li><a href="#">INR</a></li>
							<li><a href="#">GBP</a></li>
						</ul>
					</li>

					<li class="dropdown dropdown-small">
						<a href="#" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown"><span class="key">language :</span><span class="value">Vietnamese </span><b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#">Vietnamese</a></li>
							<li><a href="#">French</a></li>
							<li><a href="#">German</a></li>
						</ul>
					</li>
				</ul><!-- /.list-unstyled -->
			</div><!-- /.cnt-cart -->
			<div class="clearfix"></div>
		</div><!-- /.header-top-inner -->
	</div><!-- /.container -->
</div><!-- /.header-top -->
<!-- ============================================== TOP MENU : END ============================================== -->
	<div class="main-header">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-3 logo-holder">
					<!-- ============================================================= LOGO ============================================================= -->
<div class="logo">
	<a href="index.php">
		
		<img src="assets/images/logo.png" alt="">

	</a>
</div><!-- /.logo -->
<!-- ============================================================= LOGO : END ============================================================= -->				</div><!-- /.logo-holder -->

				<div class="col-xs-12 col-sm-12 col-md-6 top-search-holder">
					<div class="contact-row">
    <div class="phone inline">
        <i class="icon fa fa-phone"></i> (083) 0984 546 999

    </div>
    <div class="contact inline">
        <i class="icon fa fa-envelope"></i> Nhân CEO
    </div>
</div><!-- /.contact-row -->
<!-- ============================================================= SEARCH AREA ============================================================= -->
<div class="search-area">
    <form action="?xem=timkiem" method="POST">
        <div class="control-group">
            <input type="text" name="tk" class="search-field" placeholder="Search here..." />

            <input type="submit" name="tim" value="Tìm" class="search-button"/>    

        </div>
    </form>
</div><!-- /.search-area -->
<!-- ============================================================= SEARCH AREA : END ============================================================= -->				</div><!-- /.top-search-holder -->

				<div class="col-xs-12 col-sm-12 col-md-3 animate-dropdown top-cart-row">
					<!-- ============================================================= SHOPPING CART DROPDOWN ============================================================= -->

	<div class="dropdown dropdown-cart">
		<a href="#" class="dropdown-toggle lnk-cart" data-toggle="dropdown">
			<div class="items-cart-inner">
				<div class="total-price-basket">
					<span class="lbl">cart -</span>
					<span class="total-price">
						<span class="sign">$</span>
						<span class="value">600.00</span>
					</span>
				</div>
				<div class="basket">
					<i class="glyphicon glyphicon-shopping-cart"></i>
				</div>
				<div class="basket-item-count"><span class="count">2</span></div>
			
		    </div>
		</a>
		<ul class="dropdown-menu">
			<li>
				<div class="cart-item product-summary">
					<div class="row">
						<div class="col-xs-4">
							<div class="image">
								<a href="detail.html"><img src="assets/images/cart.jpg" alt=""></a>
							</div>
						</div>
						<div class="col-xs-7">
							
							<h3 class="name"><a href="index.php?page-detail">Simple Product</a></h3>
							<div class="price">$600.00</div>
						</div>
						<div class="col-xs-1 action">
							<a href="#"><i class="fa fa-trash"></i></a>
						</div>
					</div>
				</div><!-- /.cart-item -->
				<div class="clearfix"></div>
			<hr>
		
			<div class="clearfix cart-total">
				<div class="pull-right">
					
						<span class="text">Sub Total :</span><span class='price'>$600.00</span>
						
				</div>
				<div class="clearfix"></div>
					
				<a href="checkout.html" class="btn btn-upper btn-primary btn-block m-t-20">Checkout</a>	
			</div><!-- /.cart-total-->
					
				
		</li>
		</ul><!-- /.dropdown-menu-->
	</div><!-- /.dropdown-cart -->

<!-- ============================================================= SHOPPING CART DROPDOWN : END============================================================= -->				</div><!-- /.top-cart-row -->
			</div><!-- /.row -->

		</div><!-- /.container -->

	</div><!-- /.main-header -->

	<!-- ============================================== NAVBAR ============================================== -->
<div class="header-nav animate-dropdown">
    <div class="container">
        <div class="yamm navbar navbar-default" role="navigation">
            <div class="nav-bg-class">
                <div class="navbar-collapse collapse" id="mc-horizontal-menu-collapse">
	<div class="nav-outer">
		<ul class="nav navbar-nav">
			<li class="dropdown">	
				<a href="index.php">Trang chủ </a>
			</li>

						<li class="dropdown yamm">
				<a href="home.html" data-hover="dropdown" class="dropdown-toggle" data-toggle="dropdown">Sản phẩm</a>
				<ul class="dropdown-menu">
					<li>
						<div class="yamm-content">
    <div class="row">
        <div class='col-sm-12'>
           <div class="col-xs-12 col-sm-12 col-md-4">
                <h2 class="title">Hãng sản phẩm</h2>
                <ul class="links">
                	<?php
                     for($j=0;$j<count($allnhasx);$j++){
                     ?>
                    <li><a href="?xem=hangsanpham&id_hangsp=<?=$allnhasx[$j]->manhasx?>"><?=$allnhasx[$j]->tenhang?></a></li>
                    <?php } ?>
                </ul>
            </div><!-- /.col -->

            <div class="col-xs-12 col-sm-12 col-md-4">
                <h2 class="title">Loại sản phẩm</h2>
                <ul class="links">
                	<?php 
                     for($i=0;$i<count($allloaisp);$i++){
                      ?>
                    <li><a href="?xem=loaisanpham&id_loaisp=<?=$allloaisp[$i]->maloai?>"><?=$allloaisp[$i]->tenloai?></a></li>
                    <?php } ?>
                    
                </ul>
            </div><!-- /.col -->
        </div>
    </div><!-- /.row -->
</div><!-- /.yamm-content -->					</li>
				</ul>
			</li>

			<li class="dropdown">	
				<a href="category.html">Giới thiệu </a>
			</li>
			<li class="dropdown hidden-sm">	
				<a href="category.html">Tin tức</a>
			</li>
			<li class="dropdown hidden-sm">
				<a href="category.html">Liên hệ</a>
			</li>			
		</ul><!-- /.navbar-nav -->
		<div class="clearfix"></div>				
	</div><!-- /.nav-outer -->
</div><!-- /.navbar-collapse -->


            </div><!-- /.nav-bg-class -->
        </div><!-- /.navbar-default -->
    </div><!-- /.container-class -->

</div><!-- /.header-nav -->
<!-- ============================================== NAVBAR : END ============================================== -->
