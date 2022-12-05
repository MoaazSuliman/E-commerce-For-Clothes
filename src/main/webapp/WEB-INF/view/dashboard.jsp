<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>DashBoard</title>
<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap"
	rel="stylesheet">
<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="assets/css/all.min.css">
<link rel="stylesheet" href="assets/css/dashboard.css">
<!--     JSTL -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>

<body>
	<div class="row">
		<!-- Start RightBar -->
		<div class="right-bar col-lg-3 col-md-4 col-sm-4 sticky-top">
			<h3>Admin DashBoard</h3>
			<ul>
				<div class="hover d-g products active">
					<i class="fa-solid fa-shop"></i>
					<li><a href="/dashboard">Show Products</a></li>
				</div>

				<div class="hover d-g products">
					<i class="fa-solid fa-plus"></i>
					<li><a href="/createProduct">Create Product</a></li>
				</div>

				<div class="hover d-g users">
					<i class="fa-solid fa-users"></i>
					<li><a href="/users">Users</a></li>
				</div>
				<div class="hover d-g products active">
					<i class="fa-solid fa-shop"></i>
					<li><a href="/message">Messages</a></li>
				</div>
				<div class="hover d-g products active">
					<i class="fas fa-shopping-cart"></i>
					<li><a href="/showUsersThatInWaiting">Sales</a></li>
				</div>
			</ul>
		</div>
		<!-- End RightBar -->
		<!-- Strat Products -->
		<div class="col-lg-8 col-md-7 col-sm-7">
			<table class="table text-light text-center">
				<thead class="bg-danger">
					<tr>
						<td>Name</td>
						<td>Detail</td>
						<td>Price</td>
						<td>Image</td>
						<td>Action</td>
						<td>Action</td>
					</tr>
				</thead>
				<tbody class="text-dark product-details">
					<c:forEach items="${products}" var="product">
						<tr>

							<td>${product.name }</td>
							<td>${product.detail}</td>
							<td>${product.price}$</td>
							<td><img src="${product.url}" alt="image"></td>
							<td class="text-truncate" style="max-width: 150px;"><br>
								<br> <a href="updateProduct/${product.id}"
								class="btn btn-dark">Update</a></td>
							<td class="text-truncate" style="max-width: 150px;"><br>
								<br> <a href="deleteProduct/${product.id}"
								class="btn btn-danger">Delete</a></td>

						</tr>
					</c:forEach>
					<!--                     <tr> -->
					<!--                         <td><img src="../assets/images/product_02.jpg" alt="image"></td> -->
					<!--                         <td>Shoes</td> -->
					<!--                         <td>$80</td> -->
					<!--                         <td class="text-truncate" style="max-width: 150px;">Lorem ipsum dolor sit amet consectetur -->
					<!--                             adipisicing elit. Sunt, sequi? -->
					<!--                             <br> -->
					<!--                             <br> -->
					<!--                             <a href="./show-product.html" class="btn btn-dark">Show Product</a> -->
					<!--                         </td> -->
					<!--                     </tr> -->

					<!--                     <tr> -->
					<!--                         <td><img src="../assets/images/product_03.jpg" alt="image"></td> -->
					<!--                         <td>Shoes</td> -->
					<!--                         <td>$170</td> -->
					<!--                         <td class="text-truncate" style="max-width: 150px;">Lorem ipsum dolor sit amet consectetur -->
					<!--                             adipisicing elit. Sunt, sequi? -->
					<!--                             <br> -->
					<!--                             <br> -->
					<!--                             <a href="./show-product.html" class="btn btn-dark">Show Product</a> -->
					<!--                         </td> -->
					<!--                     </tr> -->

					<!--                     <tr> -->
					<!--                         <td><img src="../assets/images/product_04.jpg" alt="image"></td> -->
					<!--                         <td>Shoes</td> -->
					<!--                         <td>$200</td> -->
					<!--                         <td class="text-truncate" style="max-width: 150px;">Lorem ipsum dolor sit amet consectetur -->
					<!--                             adipisicing elit. Sunt, sequi? -->
					<!--                             <br> -->
					<!--                             <br> -->
					<!--                             <a href="./show-product.html" class="btn btn-dark">Show Product</a> -->
					<!--                         </td> -->
					<!--                     </tr> -->

					<!--                     <tr> -->
					<!--                         <td><img src="../assets/images/product_05.jpg" alt="image"></td> -->
					<!--                         <td>Shoes</td> -->
					<!--                         <td>$130</td> -->
					<!--                         <td class="text-truncate" style="max-width: 150px;">Lorem ipsum dolor sit amet consectetur -->
					<!--                             adipisicing elit. Sunt, sequi? -->
					<!--                             <br> -->
					<!--                             <br> -->
					<!--                             <a href="./show-product.html" class="btn btn-dark">Show Product</a> -->
					<!--                         </td> -->
					<!--                     </tr> -->

					<!--                     <tr> -->
					<!--                         <td><img src="../assets/images/product_06.jpg" alt="image"></td> -->
					<!--                         <td>Shoes</td> -->
					<!--                         <td>$50</td> -->
					<!--                         <td class="text-truncate" style="max-width: 150px;">Lorem ipsum dolor sit amet consectetur -->
					<!--                             adipisicing elit. Sunt, sequi? -->
					<!--                             <br> -->
					<!--                             <br> -->
					<!--                             <a href="./show-product.html" class="btn btn-dark">Show Product</a> -->
					<!--                         </td> -->
					<!--                     </tr> -->

					<!--                     <tr> -->
					<!--                         <td><img src="../assets/images/product_01.jpg" alt="image"></td> -->
					<!--                         <td>Shoes</td> -->
					<!--                         <td>$70</td> -->
					<!--                         <td class="text-truncate" style="max-width: 150px;">Lorem ipsum dolor sit amet consectetur -->
					<!--                             adipisicing elit. Sunt, sequi? -->
					<!--                             <br> -->
					<!--                             <br> -->
					<!--                             <a href="./show-product.html" class="btn btn-dark">Show Product</a> -->
					<!--                         </td> -->
					<!--                     </tr> -->

					<!--                     <tr> -->
					<!--                         <td><img src="../assets/images/product_02.jpg" alt="image"></td> -->
					<!--                         <td>Shoes</td> -->
					<!--                         <td>$30</td> -->
					<!--                         <td class="text-truncate" style="max-width: 150px;">Lorem ipsum dolor sit amet consectetur -->
					<!--                             adipisicing elit. Sunt, sequi? -->
					<!--                             <br> -->
					<!--                             <br> -->
					<!--                             <a href="./show-product.html" class="btn btn-dark">Show Product</a> -->
					<!--                         </td> -->
					<!--                     </tr> -->

					<!--                     <tr> -->
					<!--                         <td><img src="../assets/images/product_03.jpg" alt="image"></td> -->
					<!--                         <td>Shoes</td> -->
					<!--                         <td>$80</td> -->
					<!--                         <td class="text-truncate" style="max-width: 150px;">Lorem ipsum dolor sit amet consectetur -->
					<!--                             adipisicing elit. Sunt, sequi? -->
					<!--                             <br> -->
					<!--                             <br> -->
					<!--                             <a href="./show-product.html" class="btn btn-dark">Show Product</a> -->
					<!--                         </td> -->
					<!--                     </tr> -->

					<!--                     <tr> -->
					<!--                         <td><img src="../assets/images/product_04.jpg" alt="image"></td> -->
					<!--                         <td>Shoes</td> -->
					<!--                         <td>$150</td> -->
					<!--                         <td class="text-truncate" style="max-width: 150px;">Lorem ipsum dolor sit amet consectetur -->
					<!--                             adipisicing elit. Sunt, sequi? -->
					<!--                             <br> -->
					<!--                             <br> -->
					<!--                             <a href="./show-product.html" class="btn btn-dark">Show Product</a> -->
					<!--                         </td> -->
					<!--                     </tr> -->
				</tbody>
			</table>
		</div>
		<!-- End Products -->
	</div>

	<script src=" vendor/jquery/jquery.min.js">
		
	</script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>

</html>