<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap"
	rel="stylesheet">
<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="assets/css/all.min.css">
<link rel="stylesheet" href="assets/css/dashboard.css">
<link rel="stylesheet" href="assets/css/templatemo-sixteen.css">
<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!--     JSTL -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>
<body>


	<div class="col-lg-8 col-md-7 col-sm-7">
		<table class="table text-light text-center">
			<thead class="bg-danger" style="border-radius: 20px;">
				<tr>
					<td>Name</td>
					<td>Detail</td>
					<td>Price</td>
					<td>Image</td>
					<td>D	ate</td>
				</tr>
			</thead>
			<tbody class="text-dark product-details">
				<c:forEach items="${sales}" var="sale">
					<tr>

						<td>${sale.product.name}</td>
						<td>${sale.product.detail}</td>
						<td>${sale.product.price}$</td>
						<td><img src="${ sale.product.url}" alt="image"
							style="height: 120px;"></td>
						<td>${sale.date }</td>
					</tr>
				</c:forEach>
			</tbody>

		</table>
		<h4 style="text-align: center;"></h4>
		<p
			style="background-color: red; font-size: x-large; font-weight: bold; height: 50px; border-radius: 20px;">
			<span style="margin-left: 40%;">Total Price : ${total}$</span>
		</p>
	</div>

	</div>



</body>
</html>