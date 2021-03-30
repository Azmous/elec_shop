<?php
	include_once "controller/xulysanpham.php";
	$xulysanpham = new xulysanpham();
	$spgoiy1 = $xulysanpham->sanpham();
	$sanpham = $xulysanpham->masanpham();
	$chitietsanpham = $sanpham['chitietsanpham'];
	$spgoiy =$spgoiy1['sanpham'];
	//print_r($spgoiy);
	//print_r($chitietsanpham);
?>	
				<?php
					foreach ($chitietsanpham as $value){
				?>
				<div class='col-md-9'>
					<div class="row  wow fadeInUp">
						     <div class="col-xs-12 col-sm-6 col-md-7 gallery-holder">
    <div class="product-item-holder size-big single-product-gallery small-gallery">

        <div id="owl-single-product">
            <div class="single-product-gallery-item" id="slide1">
                <a data-lightbox="image-1" data-title="Gallery" href="imgsp/<?=$value->hinh?>">
                    <img class="img-responsive" alt="" src="imgsp/<?=$value->hinh?>"/>
                </a>
            </div><!-- /.single-product-gallery-item -->


        </div><!-- /.single-product-slider -->


        <div class="single-product-gallery-thumbs second-gallery-thumb gallery-thumbs">



            

        
         <div class="nav-holder left">
                <a class="prev-btn slider-prev" data-target="#owl-single-product2-thumbnails" href="#prev"></a>
            </div><!-- /.nav-holder -->
             <div class="nav-holder right">
                <a class="next-btn slider-next" data-target="#owl-single-product2-thumbnails" href="#next"></a>
            </div><!-- /.nav-holder -->
            </div><!-- /.gallery-thumbs -->

    </div><!-- /.single-product-gallery -->
</div><!-- /.gallery-holder -->	        			
						<div class='col-sm-6 col-md-5 product-info-block'>
							<div class="product-info">
								<h1 class="name"><?=$value->tensp?></h1>
								
								<div class="rating-reviews m-t-20">
									<div class="row">
										<div class="col-sm-3">
											<div class="rating rateit-small"></div>
										</div>
										<div class="col-sm-8">
											<div class="reviews">
												<a href="#" class="lnk">(06 Reviews)</a>
											</div>
										</div>
									</div><!-- /.row -->		
								</div><!-- /.rating-reviews -->

								<div class="description-container m-t-20">
									
								</div><!-- /.description-container -->

								<span>Giá: <?=$value->dongia?></span>
								<div class="row outer-top-vs">
									<div class="col-sm-3 col-lg-3 col-md-4">
										<input type="text" value="<?=$value->soluong?>" class="txt txt-qty">
									</div>
									<div class="cart col-md-12 col-lg-6 clearfix animate-effect">
										<div class="action">
														
											<button type="button" class="btn btn-primary">Thêm vào giỏ</button>
											<button type="button" class="left btn btn-primary"><i class="icon fa fa-heart"></i></button>
											<button type="button" class="left btn btn-primary"><i class="fa fa-retweet"></i></button>						

								                
											
										</div><!-- /.action -->
									</div>
								</div>

								<div class="row product-social-link outer-top-vs">

									<div class="col-md-3 col-sm-3">
										<span class="label">Share </span>
                                    </div>
									<div class=" col-md-9 col-sm-9 social-icons">
							            <ul class="list-inline">
							                <li><a href="http://facebook.com/transvelo" class="fa fa-facebook"></a></li>
							                <li><a href="#" class="fa fa-twitter"></a></li>
							                <li><a href="#" class="fa fa-linkedin"></a></li>
							                <li><a href="#" class="fa fa-rss"></a></li>
							                <li><a href="#" class="fa fa-pinterest"></a></li>
							            </ul><!-- /.social-icons -->
							        </div>
								
								</div>
								
							</div><!-- /.product-info -->
						</div><!-- /.col-sm-5 -->
					</div><!-- /.row -->
					<div class="product-tabs outer-top-smal  wow fadeInUp">
				
						<ul id="product-tabs" class="nav nav-tabs nav-tab-cell-detail">
							<li class="active"><a data-toggle="tab" href="#description">Thông số</a></li>
							<li><a data-toggle="tab" href="#review">REVIEW</a></li>
							<li><a data-toggle="tab" href="#tags">TAGS</a></li>
						</ul><!-- /.nav-tabs #product-tabs -->
					

						<div class="tab-content outer-top-xs">

							<div id="description" class="tab-pane in active">
								<div class="product-tab">
									<p class="text"><?=$value->noidung?> <p>
								</div>	
							</div><!-- /.tab-pane -->

							<div id="review" class="tab-pane">

								</div><!-- /.tab-pane -->

								<div id="tags" class="tab-pane">
									<div class="product-tag">

										<h4 class="title">Product Tags</h4>
										<form role="form" class="form-inline form-cnt">
											<div class="form-container">

												<div class="form-group">
													<label for="exampleInputTag">Add Your Tags: </label>
													<input type="email" id="exampleInputTag" class="form-control txt">


												</div>

												<button class="btn btn-upper btn-primary" type="submit">ADD TAGS</button>
											</div><!-- /.form-container -->
										</form><!-- /.form-cnt -->

										<form role="form" class="form-inline form-cnt">
											<div class="form-group">
												<label>&nbsp;</label>
												<span class="text col-md-offset-3">Use spaces to separate tags. Use single quotes (') for phrases.</span>
											</div>
										</form><!-- /.form-cnt -->

									</div><!-- /.product-tab -->
								</div><!-- /.tab-pane -->

							</div><!-- /.tab-content -->

						</div><!-- /.product-tabs -->
					</div><!-- /.col -->
	<?php
				}
				?>