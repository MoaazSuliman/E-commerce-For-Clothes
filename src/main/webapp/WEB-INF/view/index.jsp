
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap"
	rel="stylesheet">

<title>Sixteen Clothing HTML Template</title>
<link rel="stylesheet" href="assets/css/templatemo-sixteen.css">
<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="../assets/css/fontawesome.css">

<link rel="stylesheet" href="assets/css/owl.css">
<link rel="stylesheet" href="assets/css/all.min.css">
<!--  JSTL -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>

<body>

	<!-- Preloader Start -->
	<div id="preloader">
		<div class="jumper">
			<div></div>
			<div></div>
			<div></div>
		</div>
	</div>
	<!-- Preloader End -->

	<!-- Start Header -->
	<header class="">
		<nav class="navbar navbar-expand-lg">
			<div class="container">
				<a class="navbar-brand" href="index.html">
					<h2>
						Sixteen <em>Clothing</em>
					</h2>
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarResponsive" aria-controls="navbarResponsive"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarResponsive">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item active"><a class="nav-link"
							href="/Shopping">Home <span class="sr-only">(current)</span>
						</a></li>
						<li class="nav-item"><a class="nav-link" href="/ourProducts">Our
								Products</a></li>
						<li class="nav-item"><a class="nav-link" href="/about">About
								Us</a></li>
						<li class="nav-item"><a class="nav-link" href="/contact">Contact
								Us</a></li>
						<c:if test="${registerAndLogin==0}">
							<li class="nav-item"><a class="btn btn1"
								style="background-color: var(- -main-color); color: white;"
								href="/register">Register</a></li>
							<li class="nav-item"><a class="btn btn1"
								style="background-color: var(- -main-color); color: white;"
								href="/login">Login</a></li>
						</c:if>
						<c:if test="${registerAndLogin==1}">
							<li class="nav-item"><a class="btn btn1"
								style="background-color: var(- -main-color); color: white;"
								href="/logout">Logout</a></li>
						</c:if>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<!-- End Header -->

	<!-- Page Content -->
	<!-- Start Banner -->
	<div class="banner header-text">
		<div class="owl-banner owl-carousel">
			<div class="banner-item-01">
				<div class="text-content">
					<h4>Best Offer</h4>
					<h2>New Arrivals On Sale</h2>
				</div>
			</div>
			<div class="banner-item-02">
				<div class="text-content">
					<h4>Flash Deals</h4>
					<h2>Get your best products</h2>
				</div>
			</div>
			<div class="banner-item-03">
				<div class="text-content">
					<h4>Last Minute</h4>
					<h2>Grab last minute deals</h2>
				</div>
			</div>
		</div>
	</div>
	<!-- End Banner -->
	<!-- Start Latest Products -->

	<div class="latest-products">
		<div class="container">
			<!-- 			cart -->
			<!-- 			<div class="hover d-g products active"> -->
			<!-- 				<i class="fas fa-shopping-cart"></i> -->
			<!-- 				<li><a href="/myCart">Show Products</a></li> -->
			<!-- 			</div> -->
			<!-- End Of Cart -->
			<div class="row">
				<div class="col-md-12">
					<div class="section-heading">

						<h2>Latest Products</h2>
						<a href="/ourProducts">view all products <i
							class="fa fa-angle-right"></i></a>
					</div>
				</div>
				<!-- 				To Make User Show The Just Latest 8 Products -->
				<%
				int i = 0;
				int n = 8;
				%>
				<c:forEach items="${products}" var="product">
					<%
					if (i < n) {
					%>
					<div class="col-md-4">
						<div class="product-item">
							<a href="/showProduct/${product.id}"><img
								style="height: 150px;" src="${product.url}" alt=""></a>
							<div class="down-content">
								<a href="/showProduct/${product.id}">
									<h4>${product.name}</h4>
								</a>
								<h6>${product.price}$</h6>
								<p>${product.detail }</p>
								<ul class="stars">
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
								</ul>
								<span>Reviews (24)</span>
							</div>
						</div>
					</div>
					<%
					i++;
					}
					%>
				</c:forEach>
				<!-- 				<div class="col-md-4"> -->
				<!-- 					<div class="product-item"> -->
				<!-- 						<a href="./product.html"><img -->
				<!-- 							src="assets/images/product_02.jpg" alt=""></a> -->
				<!-- 						<div class="down-content"> -->
				<!-- 							<a href="./product.html"> -->
				<!-- 								<h4>Tittle goes here</h4> -->
				<!-- 							</a> -->
				<!-- 							<h6>$30.25</h6> -->
				<!-- 							<p>Lorem ipsume dolor sit amet, adipisicing elite. Itaque, -->
				<!-- 								corporis nulla aspernatur.</p> -->
				<!-- 							<ul class="stars"> -->
				<!-- 								<li><i class="fa fa-star"></i></li> -->
				<!-- 								<li><i class="fa fa-star"></i></li> -->
				<!-- 								<li><i class="fa fa-star"></i></li> -->
				<!-- 								<li><i class="fa fa-star"></i></li> -->
				<!-- 								<li><i class="fa fa-star"></i></li> -->
				<!-- 							</ul> -->
				<!-- 							<span>Reviews (21)</span> -->
				<!-- 						</div> -->
				<!-- 					</div> -->
				<!-- 				</div> -->
				<!-- 				<div class="col-md-4"> -->
				<!-- 					<div class="product-item"> -->
				<!-- 						<a href="./product.html"><img -->
				<!-- 							src="assets/images/product_03.jpg" alt=""></a> -->
				<!-- 						<div class="down-content"> -->
				<!-- 							<a href="./product.html"> -->
				<!-- 								<h4>Tittle goes here</h4> -->
				<!-- 							</a> -->
				<!-- 							<h6>$20.45</h6> -->
				<!-- 							<p>Sixteen Clothing is free CSS template provided by -->
				<!-- 								TemplateMo.</p> -->
				<!-- 							<ul class="stars"> -->
				<!-- 								<li><i class="fa fa-star"></i></li> -->
				<!-- 								<li><i class="fa fa-star"></i></li> -->
				<!-- 								<li><i class="fa fa-star"></i></li> -->
				<!-- 								<li><i class="fa fa-star"></i></li> -->
				<!-- 								<li><i class="fa fa-star"></i></li> -->
				<!-- 							</ul> -->
				<!-- 							<span>Reviews (36)</span> -->
				<!-- 						</div> -->
				<!-- 					</div> -->
				<!-- 				</div> -->
				<!-- 				<div class="col-md-4"> -->
				<!-- 					<div class="product-item"> -->
				<!-- 						<a href="./product.html"><img -->
				<!-- 							src="assets/images/product_04.jpg" alt=""></a> -->
				<!-- 						<div class="down-content"> -->
				<!-- 							<a href="./product.html"> -->
				<!-- 								<h4>Tittle goes here</h4> -->
				<!-- 							</a> -->
				<!-- 							<h6>$15.25</h6> -->
				<!-- 							<p>Lorem ipsume dolor sit amet, adipisicing elite. Itaque, -->
				<!-- 								corporis nulla aspernatur.</p> -->
				<!-- 							<ul class="stars"> -->
				<!-- 								<li><i class="fa fa-star"></i></li> -->
				<!-- 								<li><i class="fa fa-star"></i></li> -->
				<!-- 								<li><i class="fa fa-star"></i></li> -->
				<!-- 								<li><i class="fa fa-star"></i></li> -->
				<!-- 								<li><i class="fa fa-star"></i></li> -->
				<!-- 							</ul> -->
				<!-- 							<span>Reviews (48)</span> -->
				<!-- 						</div> -->
				<!-- 					</div> -->
				<!-- 				</div> -->
				<!-- 				<div class="col-md-4"> -->
				<!-- 					<div class="product-item"> -->
				<!-- 						<a href="./product.html"><img -->
				<!-- 							src="assets/images/product_05.jpg" alt=""></a> -->
				<!-- 						<div class="down-content"> -->
				<!-- 							<a href="./product.html"> -->
				<!-- 								<h4>Tittle goes here</h4> -->
				<!-- 							</a> -->
				<!-- 							<h6>$12.50</h6> -->
				<!-- 							<p>Lorem ipsume dolor sit amet, adipisicing elite. Itaque, -->
				<!-- 								corporis nulla aspernatur.</p> -->
				<!-- 							<ul class="stars"> -->
				<!-- 								<li><i class="fa fa-star"></i></li> -->
				<!-- 								<li><i class="fa fa-star"></i></li> -->
				<!-- 								<li><i class="fa fa-star"></i></li> -->
				<!-- 								<li><i class="fa fa-star"></i></li> -->
				<!-- 								<li><i class="fa fa-star"></i></li> -->
				<!-- 							</ul> -->
				<!-- 							<span>Reviews (16)</span> -->
				<!-- 						</div> -->
				<!-- 					</div> -->
				<!-- 				</div> -->
				<!-- 				<div class="col-md-4"> -->
				<!-- 					<div class="product-item"> -->
				<!-- 						<a href="./product.html"><img -->
				<!-- 							src="assets/images/product_06.jpg" alt=""></a> -->
				<!-- 						<div class="down-content"> -->
				<!-- 							<a href="./product.html"> -->
				<!-- 								<h4>Tittle goes here</h4> -->
				<!-- 							</a> -->
				<!-- 							<h6>$22.50</h6> -->
				<!-- 							<p>Lorem ipsume dolor sit amet, adipisicing elite. Itaque, -->
				<!-- 								corporis nulla aspernatur.</p> -->
				<!-- 							<ul class="stars"> -->
				<!-- 								<li><i class="fa fa-star"></i></li> -->
				<!-- 								<li><i class="fa fa-star"></i></li> -->
				<!-- 								<li><i class="fa fa-star"></i></li> -->
				<!-- 								<li><i class="fa fa-star"></i></li> -->
				<!-- 								<li><i class="fa fa-star"></i></li> -->
				<!-- 							</ul> -->
				<!-- 							<span>Reviews (32)</span> -->
				<!-- 						</div> -->
				<!-- 					</div> -->
				<!-- 				</div> -->
			</div>
		</div>
	</div>
	<!-- End Latest Products -->
	<!-- Start Best Features -->
	<div class="best-features">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="section-heading">
						<h2>About Sixteen Clothing</h2>
					</div>
				</div>
				<div class="col-md-6">
					<div class="left-content">
						<h4>Looking for the best products?</h4>
						<p>
							<a rel="nofollow"
								href="https://templatemo.com/tm-546-sixteen-clothing"
								target="_parent">This template</a> is free to use for your
							business websites. However, you have no permission to
							redistribute the downloadable ZIP file on any template collection
							website. <a rel="nofollow" href="https://templatemo.com/contact">Contact
								us</a> for more info.
						</p>
						<ul class="featured-list">
							<li><a href="#">Lorem ipsum dolor sit amet</a></li>
							<li><a href="#">Consectetur an adipisicing elit</a></li>
							<li><a href="#">It aquecorporis nulla aspernatur</a></li>
							<li><a href="#">Corporis, omnis doloremque</a></li>
							<li><a href="#">Non cum id reprehenderit</a></li>
						</ul>
						<a href="about.html" class="filled-button">Read More</a>
					</div>
				</div>
				<div class="col-md-6">
					<div class="right-image">
						<img src="assets/images/feature-image.jpg" alt="">
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Start Best Features -->
	<!--  -->
	<div class="call-to-action">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="inner-content">
						<div class="row">
							<div class="col-md-8">
								<h4>
									Creative &amp; Unique <em>Sixteen</em> Products
								</h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Itaque corporis amet elite author nulla.</p>
							</div>
							<div class="col-md-4">
								<a href="#" class="filled-button">Purchase Now</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Start Footer -->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="inner-content">
						<p>
							Copyright &copy; 2020 Sixteen Clothing Co., Ltd. - Design: <a
								rel="nofollow noopener" href="https://templatemo.com"
								target="_blank">TemplateMo</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- End Footer -->


	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/js/custom.js"></script>
	<script src="assets/js/owl.js"></script>
	<script src="assets/js/slick.js"></script>
	<script src="assets/js/isotope.js"></script>
	<script src="assets/js/accordions.js"></script>

</body>

</html>