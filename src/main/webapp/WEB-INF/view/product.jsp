
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="/assets/css/fontawesome.css">
<link rel="stylesheet" href="/assets/css/templatemo-sixteen.css">
<link rel="stylesheet" href="/assets/css/owl.css">
<!--  JSTL -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>


<body>
	<div class="container">
		<div class="product-item product row">
			<img src="${product.url}" alt="image"
				class="col-lg-4 col-md-6 col-sm-12">
			<div class="down-content">
				<p>${product.name}</p>
				<br> <br> <br> <br> <br> <br> <br>
				<br>
				<h6 style="margin-left: 50px;">${product.price}$</h6>
				<p>${product.detail}</p>
				<ul class="stars">
					<li><i class="fa fa-star fa-lg"></i></li>
					<li><i class="fa fa-star"></i></li>
					<li><i class="fa fa-star"></i></li>
					<li><i class="fa fa-star"></i></li>
					<li><i class="fa fa-star"></i></li>
				</ul>
				<button class="btn">Buy Now</button>
			</div>
		</div>
	</div>
</body>

</html>