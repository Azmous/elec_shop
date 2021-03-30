<?php  include_once "controller/xulysanpham.php";
		include_once "model/M_sanpham.php";
?>
<?php
	if(isset($_GET['page'])){
	$tranghientai = $_GET['page'];
	}else{
		$tranghientai="";
	}
	$M_sanpham= new M_sanpham();
	$xulysanpham=new xulysanpham();
	$sanpham = $xulysanpham->sanpham();
	$sosanpham=$sanpham['sanpham'];
	$tongsotrang = ceil(count($sosanpham)/15);
	if($tranghientai>$tongsotrang){
		$tranghientai=$tongsotrang;
	}else if($tranghientai<=1){
		$tranghientai=1;
	}
	$spbatdau =($tranghientai-1)*15;
	$phantrangsp = $M_sanpham->queryPtIndex($spbatdau);


?>

	<div id="category" class="category-carousel hidden-xs">
		<div class="item">	
			<div class="image">
				<img src="assets/images/banners/sieu-thi-dien-may-cuoi-tuan-tiki-banner.jpg" alt="" class="img-responsive">
			</div>
			<div class="container-fluid">
				<div class="caption vertical-top text-left">
<!--
					<div class="big-text">
						Sale
					</div>

					<div class="excerpt hidden-sm hidden-md">
						up to 50% off
					</div>
-->
					
				</div><!-- /.caption -->
			</div><!-- /.container-fluid -->
		</div>
</div>

		

			
<!-- ========================================= SECTION – HERO : END ========================================= -->
				<div class="clearfix filters-container m-t-10">
	<div class="row">

		<div class="col col-sm-12 col-md-6">
			<h3>Sản phẩm nổi bật</h3>
		</div><!-- /.col -->
		<div class="col col-sm-6 col-md-4 text-right">
			<div class="pagination-container">
	<ul class="list-inline list-unstyled">
		<li class="prev"><a href="#"><i class="fa fa-angle-left"></i></a></li>
		<?php for($i=1;$i<=$tongsotrang;$i++){
						if($i==$tranghientai){ ?>
			<li  class="active"><?=$i?></li>
			<?php }else{
						 ?>	
		<li><a href="?page=<?=$i?>"><?=$i?></a></li>	
		<?php } } ?>
		<li class="next"><a href="#"><i class="fa fa-angle-right"></i></a></li>
	</ul><!-- /.list-inline -->
</div><!-- /.pagination-container -->		</div><!-- /.col -->
	</div><!-- /.row -->
</div>
				<div class="search-result-container">
					<div id="myTabContent" class="tab-content">
						<div class="tab-pane active " id="grid-container">
							<div class="category-product  inner-top-vs">
								<div class="row">									
										
		<div class="col-sm-6 col-md-4 wow fadeInUp">
			<div class="products">
					
				<?php
							foreach ($phantrangsp as $value) {
						?>
				
	<div class="product">		
		<div class="product-image">
			<div class="image">
				<a href="?xem=chitietsanpham&id_sanpham=<?=$value->masp?>"><img  src="imgsp/<?=$value->hinh?>" alt=""></a>
			</div><!-- /.image -->			

<!--			<div class="tag new"><span>new</span></div>                        		   -->
		</div><!-- /.product-image -->
			
		
		<div class="product-info text-left">
			<h3 class="name"><a href="detail.html"><?=$value->tensp?></a></h3>
			<div class="rating rateit-small"></div>
			<div class="description"></div>

			<div class="product-price">	
				<span class="price"><?=$value->dongia?></span>
			<span class="price-before-discount"></span>
									
			</div><!-- /.product-price -->
			
		</div><!-- /.product-info -->
					<div class="cart clearfix animate-effect">
				<div class="action">
					<ul class="list-unstyled">
						<li class="add-cart-button btn-group">
							<button class="btn btn-primary icon" data-toggle="dropdown" type="button">
								<i class="fa fa-shopping-cart"></i>													
							</button>
							<button class="btn btn-primary" type="button">Thêm vào giỏ</button>
													
						</li>
	                   
		                <li class="lnk wishlist">
							<a class="add-to-cart" href="detail.html" title="Wishlist">
								 <i class="icon fa fa-heart"></i>
							</a>
						</li>

						<li class="lnk">
							<a class="add-to-cart" href="detail.html" title="Compare">
							    <i class="fa fa-retweet"></i>
							</a>
						</li>
					</ul>
				</div><!-- /.action -->
			</div><!-- /.cart -->
			</div><!-- /.product -->
      
			</div><!-- /.products -->
		</div><!-- /.item -->
	
		<div class="col-sm-6 col-md-4 wow fadeInUp">
			<div class="products">
			<?php
							}
						?>

		
				</div>
			</div>
		</div>
	</div>
</div>
</div>
</div>