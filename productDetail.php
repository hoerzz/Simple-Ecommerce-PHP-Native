<?php
$filepath = realpath(dirname(__FILE__));
include_once $filepath."/lib/Session.php";
Session::init();



spl_autoload_register(function($classes){

  include 'classes/'.$classes.".php";

});


$users = new Users();
Session::CheckSession();

if (isset($_GET['action']) && $_GET['action'] == 'logout') {
  // Session::set('logout', '<div class="alert alert-success alert-dismissible mt-3" id="flash-msg">
  // <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  // <strong>Success !</strong> You are Logged Out Successfully !</div>');
  Session::destroy();
}
 ?>
        <?php

if (isset($_GET['id'])) {
  $userid = preg_replace('/[^a-zA-Z0-9-]/', '', (int)$_GET['id']);

}




 ?>
    <?php
    $getProduknfo = $users->getProductInfoById($userid);
    if ($getProduknfo) {






     ?>
<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>
	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Favicon-->
	<link rel="shortcut icon" href="img/fav.png">
	<!-- Author Meta -->
	<meta name="author" content="CodePixar">
	<!-- Meta Description -->
	<meta name="description" content="">
	<!-- Meta Keyword -->
	<meta name="keywords" content="">
	<!-- meta character set -->
	<meta charset="UTF-8">
	<!-- Site Title -->
	<title>Karma Shop</title>
	<!--
			CSS
			============================================= -->
	<link rel="stylesheet" href="css/linearicons.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/themify-icons.css">
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/owl.carousel.css">
	<link rel="stylesheet" href="css/nice-select.css">
	<link rel="stylesheet" href="css/nouislider.min.css">
	<link rel="stylesheet" href="css/ion.rangeSlider.css" />
	<link rel="stylesheet" href="css/ion.rangeSlider.skinFlat.css" />
	<link rel="stylesheet" href="css/main.css">
</head>

<body>

	<!-- Start Header Area -->
	<header class="header_area sticky-header">
  <div class="main_menu">
  <nav class="navbar navbar-expand-lg navbar-light main_box">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="index.php"><img src="img/logo.png" alt=""></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto">
							<li class="nav-item"><a class="nav-link" href="index.php">Home</a></li>
							<?php if (Session::get('id') == TRUE) { ?>
							<?php if (Session::get('roleid') == '1') { ?>
								<li class="nav-item"><a class="nav-link" href="addProduct.php"><i class="fa fa-history" aria-hidden="true"></i> Order History</a></li>
								<li class="nav-item"><a class="nav-link" href="?action=logout"><i class="fa fa-sign-out" aria-hidden="true"></i> Logout</a></li>
							<?php  }} ?>
							<?php if (Session::get('id') == TRUE) { ?>
							<?php if (Session::get('roleid') == '2') { ?>
								<li class="nav-item"><a class="nav-link" href="addProduct.php"><i class="fa fa-history" aria-hidden="true"></i> Order History</a></li>
								<li class="nav-item"><a class="nav-link" href="?action=logout"><i class="fa fa-sign-out" aria-hidden="true"></i> Logout</a></li>
							<?php }}else {?>
								<li class="nav-item"><a class="nav-link" href="login.php"><i class="fa fa-sign-in" aria-hidden="true"></i> Login</a></li>
								<li class="nav-item"><a class="nav-link" href="daftar.php"><i class="fa fa-handshake-o" aria-hidden="true"></i> Register</a></li>
							<?php } ?>
						</ul>
						<ul class="nav navbar-nav navbar-right">
							<li class="nav-item"><a href="index.php#shop" class="cart"><span class="ti-bag"></span></a></li>
							<li class="nav-item">
								<button class="search"><span class="lnr lnr-magnifier" id="search"></span></button>
							</li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
		<div class="search_input" id="search_input_box">
			<div class="container">
				<form action="search.php" method="post" class="d-flex justify-content-between">
					<input type="text" class="form-control" name="search" id="search_input" placeholder="Search Here">
					<button type="submit" name="submit" class="btn"></button>
					<span class="lnr lnr-cross" id="close_search" title="Close Search"></span>
				</form>
			</div>
		</div>
	</header>
	<!-- End Header Area -->

	<!-- Start Banner Area -->
	<section class="banner-area organic-breadcrumb">
		<div class="container">
			<div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
				<div class="col-first">
					<h1><?php echo $getProduknfo->namaproduk; ?></h1>
					<nav class="d-flex align-items-center">
						<a href="index.php">Home<span class="lnr lnr-arrow-right"></span></a>
						<a href="#"><?php echo $getProduknfo->kategori; ?><span class="lnr lnr-arrow-right"></span></a>
						<a href="#"><?php echo $getProduknfo->namaproduk; ?></a>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!-- End Banner Area -->

	<!--================Single Product Area =================-->
	<div class="product_image_area">
		<div class="container">
			<div class="row s_product_inner">
				<div class="col-lg-6">
							<img class="img-fluid" src="<?php echo $getProduknfo->fldimage; ?>" alt="">
				</div>
				<div class="col-lg-5 offset-lg-1">
					<div class="s_product_text">
						<h3><?php echo $getProduknfo->namaproduk; ?></h3>
						<h2><?php echo "Rp. ". number_format($getProduknfo->harga); ?></h2>
						<ul class="list">
							<li><a class="active" href="#"><span>Category</span> : <?php echo $getProduknfo->kategori; ?></a></li>
						</ul>
						<p><?php echo substr($getProduknfo->deskripsi,0,300); ?><a href="#description">..Selengkapnya</a></p>
						<div class="card_area d-flex align-items-center">
							<a class="primary-btn" href="#" data-toggle="modal" data-target=".bd-example-modal-lg">Beli Sekarang</a>
						<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
						<div class="modal-dialog modal-lg">
							<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel">Detail Pemesanan</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<div class="container">
								<div class="row">
								<div class="col-lg-6">
										<img class="img-fluid" src="<?php echo $getProduknfo->fldimage; ?>" alt="">
									</div>
									<div class="col-lg-6">
										<h3><?php echo $getProduknfo->namaproduk; ?></h3>
										<h2><?php echo "Rp. ". number_format($getProduknfo->harga); ?></h2>
										<ul class="list">
										<li><a class="active" href="#"><span>Category</span> : <?php echo $getProduknfo->kategori; ?></a></li>
										</ul>
										<?php 
											if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['add'])) {
												$order = $users->AddOrder($_POST);
												}
												
												if (isset($order)) {
												echo $order;
												}
										?>
										<form class="contact_form" method="post" id="contactForm" novalidate="novalidate">
										<input type="hidden" name="penjual" value="<?php $getUinfo = $users->getUserInfoById(Session::get("id")); if ($getUinfo) { echo $getUinfo->name; }?>" class="form-control">
										
										<input type="hidden" name="nproduk" value="<?php echo $getProduknfo->namaproduk; ?>" class="form-control">

										<div class="product_count">
										<label for="qty">Quantity:</label>
										<input type="text" name="jumlah" id="sst" maxlength="12" value="1" title="Quantity:" class="input-text qty">
										<button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst )) result.value++;return false;"
										class="increase items-count" type="button"><i class="lnr lnr-chevron-up"></i></button>
										<button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst ) &amp;&amp; sst > 0 ) result.value--;return false;"
										class="reduced items-count" type="button"><i class="lnr lnr-chevron-down"></i></button>
										</div>
										<div class="form-group">
										<textarea class="form-control" name="alamat" id="Address" placeholder="Enter Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Address'"></textarea>
										</div>
										<input type="hidden" name="status" value="Proses" class="form-control">
										<div class="col-md-14 text-right">
										<button type="submit" name="add" value="submit" class="primary-btn btn-lg btn-block">Beli</button>
									</form>
									</div>
									</div>
								</div>
							</div>
							</div>
							</div>
						</div>
						</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--================End Single Product Area =================-->

	<!--================Product Description Area =================-->
	<section id="description" class="product_description_area">
		<div class="container">
			<ul class="nav nav-tabs" id="myTab" role="tablist">
				<li class="nav-item">
					<a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Description</a>
				</li>
			</ul>
			<div class="tab-content" id="myTabContent">
				<div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
					<p><?php echo nl2br($getProduknfo->deskripsi); ?>
				</div>
			</div>
		</div>
	</section>
	<!--================End Product Description Area =================-->

	<!-- start footer Area -->
	<footer class="footer-area section_gap">
		<div class="container">
			<div class="row">
				<div class="col-lg-3  col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h6>About Us</h6>
						<p>
							Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore dolore
							magna aliqua.
						</p>
					</div>
				</div>
				<div class="col-lg-4  col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h6>Newsletter</h6>
						<p>Stay update with our latest</p>
						<div class="" id="mc_embed_signup">

							<form target="_blank" novalidate="true" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
							 method="get" class="form-inline">

								<div class="d-flex flex-row">

									<input class="form-control" name="EMAIL" placeholder="Enter Email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Email '"
									 required="" type="email">


									<button class="click-btn btn btn-default"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></button>
									<div style="position: absolute; left: -5000px;">
										<input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
									</div>

									<!-- <div class="col-lg-4 col-md-4">
												<button class="bb-btn btn"><span class="lnr lnr-arrow-right"></span></button>
											</div>  -->
								</div>
								<div class="info"></div>
							</form>
						</div>
					</div>
				</div>
				<div class="col-lg-3  col-md-6 col-sm-6">
					<div class="single-footer-widget mail-chimp">
						<h6 class="mb-20">Instragram Feed</h6>
						<ul class="instafeed d-flex flex-wrap">
							<li><img src="img/i1.jpg" alt=""></li>
							<li><img src="img/i2.jpg" alt=""></li>
							<li><img src="img/i3.jpg" alt=""></li>
							<li><img src="img/i4.jpg" alt=""></li>
							<li><img src="img/i5.jpg" alt=""></li>
							<li><img src="img/i6.jpg" alt=""></li>
							<li><img src="img/i7.jpg" alt=""></li>
							<li><img src="img/i8.jpg" alt=""></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-2 col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h6>Follow Us</h6>
						<p>Let us be social</p>
						<div class="footer-social d-flex align-items-center">
							<a href="#"><i class="fa fa-facebook"></i></a>
							<a href="#"><i class="fa fa-twitter"></i></a>
							<a href="#"><i class="fa fa-dribbble"></i></a>
							<a href="#"><i class="fa fa-behance"></i></a>
						</div>
					</div>
				</div>
			</div>
			<div class="footer-bottom d-flex justify-content-center align-items-center flex-wrap">
				<p class="footer-text m-0"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
</p>
			</div>
		</div>
	</footer>
	<!-- End footer Area -->

	<script src="js/vendor/jquery-2.2.4.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GV9Jm2u7rmsCe65wKzPTw5jtS38n2tVEGi4"
	 crossorigin="anonymous"></script>
	<script src="js/vendor/bootstrap.min.js"></script>
	<script src="js/jquery.ajaxchimp.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/jquery.sticky.js"></script>
	<script src="js/nouislider.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<!--gmaps Js-->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="js/gmaps.min.js"></script>
	<script src="js/main.js"></script>

</body>

</html>
  <?php }else {
	echo "Produk Telah Dihapus Atau Tidak Ada";
} ?>