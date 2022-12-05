<!DOCTYPE html>
<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
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

<title>Sixteen Clothing Products</title>
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="assets/css/fontawesome.css">
<link rel="stylesheet" href="assets/css/templatemo-sixteen.css">
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
	<jsp:include page="toImport.jsp" />
	<!-- 	Header -->
	<header class="">
		<nav class="navbar navbar-expand-lg">
			<div class="container">
				<a class="navbar-brand" href="/shopping">
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
						<li class="nav-item"><a class="nav-link" href="index">Home
								<span class="sr-only">(current)</span>
						</a></li>
						<li class="nav-item active"><a class="nav-link"
							href="products">Our Products</a></li>
						<li class="nav-item"><a class="nav-link" href="about">About
								Us</a></li>
						<li class="nav-item"><a class="nav-link" href="contact">Contact
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

	<!-- Page Content -->
	<div class="page-heading products-heading header-text">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="text-content">
						<h4>new arrivals</h4>
						<h2>sixteen products</h2>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="products">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="filters">
						<ul>
							<li class="active" data-filter="*">All Products</li>
							<!--               <li data-filter=".des">Featured</li> -->
							<!--               <li data-filter=".dev">Flash Deals</li> -->
							<!--               <li data-filter=".gra">Last Minute</li> -->
						</ul>
					</div>
					<!-- 			cart -->
					<div class="hover d-g products active"
						style="font-size: xx-large; color: red;">

						<li><a href="/myCart"
							style="font-size: 100px; font-weight: bold; color: red;">My
								Cart<i class="fas fa-shopping-cart"></i>
						</a></li>
					</div>
					<!-- End Of Cart -->
					<br> <br> <br> <br>
				</div>

				<c:forEach items="${products}" var="product">
					<div class="col-md-4">
						<div class="product-item">
							<a href="/showProduct/${product.id}"><img
								style="height: 200px;" src="${product.url}" alt=""></a>
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
								<a href="addToCart/${product.id}"><span
									style="font-size: larger;">Add To Cart<i
										class="fas fa-shopping-cart"></i>
								</span></a>
							</div>
						</div>
					</div>
				</c:forEach>
				<%-- 				<c:forEach items="${products}" var="product"> --%>
				<!-- 					<div class="col-md-12"> -->

				<!-- 						<div class="filters-content"> -->

				<!-- 							<div class="row grid"> -->

				<!-- 								<div class="col-lg-4 col-md-4 all des"> -->
				<!-- 									<div class="product-item"> -->
				<%-- 										<a href="#"><img src="${product.url}" alt=""></a> --%>
				<!-- 										<div class="down-content"> -->
				<!-- 											<a href="#"> -->
				<%-- 												<h4>${product.name}</h4> --%>
				<!-- 											</a> -->
				<%-- 											<h6>${product.price}</h6> --%>
				<%-- 											<p>${product.detail }</p> --%>
				<!-- 											<ul class="stars"> -->
				<!-- 												<li><i class="fa fa-star"></i></li> -->
				<!-- 												<li><i class="fa fa-star"></i></li> -->
				<!-- 												<li><i class="fa fa-star"></i></li> -->
				<!-- 												<li><i class="fa fa-star"></i></li> -->
				<!-- 												<li><i class="fa fa-star"></i></li> -->
				<!-- 											</ul> -->
				<!-- 											<span>Reviews (12)</span> -->
				<!-- 										</div> -->
				<!-- 									</div> -->
				<!-- 								</div> -->
				<!-- 							</div> -->
				<!-- 						</div> -->
				<!-- 					</div> -->
				<!-- 			</div> -->
				<%-- 			</c:forEach> --%>
				<!--         <div class="col-md-12"> -->
				<!--           <ul class="pages"> -->
				<!--             <li><a href="#">1</a></li> -->
				<!--             <li class="active"><a href="#">2</a></li> -->
				<!--             <li><a href="#">3</a></li> -->
				<!--             <li><a href="#">4</a></li> -->
				<!--             <li><a href="#"><i class="fa fa-angle-double-right"></i></a></li> -->
				<!--           </ul> -->
				<!--         </div> -->
			</div>
		</div>


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


		<!-- Bootstrap core JavaScript -->
		<script src="vendor/jquery/jquery.min.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


		<!-- Additional Scripts -->
		<script src="assets/js/custom.js"></script>
		<script src="assets/js/owl.js"></script>
		<script src="assets/js/slick.js"></script>
		<script src="assets/js/isotope.js"></script>
		<script src="assets/js/accordions.js"></script>


		<script language="text/Javascript">
    cleared[0] = cleared[1] = cleared[2] = 0; //set a cleared flag for each field
    function clearField(t) {                   //declaring the array outside of the
      if (!cleared[t.id]) {                      // function makes it static and global
        cleared[t.id] = 1;  // you could use true and false, but that's more typing
        t.value = '';         // with more chance of typos
        t.style.color = '#fff';
      }
    }
  </script>
</body>

</html>