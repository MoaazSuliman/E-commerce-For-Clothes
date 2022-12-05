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
<link rel="stylesheet" href="../assets/css/all.min.css">
<link rel="stylesheet" href="../assets/css/dashboard.css">
<!-- JSTL -->
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
					<li><a href="createProduct">Create Product</a></li>
				</div>

				<div class="hover d-g users">
					<i class="fa-solid fa-users"></i>
					<li><a href="#">Users</a></li>
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
						<td>Email</td>
						<td>Password</td>
						<td>Address</td>
						<td>Action</td>
					</tr>
				</thead>
				<tbody class="text-dark">
					<c:forEach items="${users}" var="user">
						<tr>
							<td>${user.name }</td>
							<td>${user.email }</td>
							<td>${user.password }</td>
							<td>${user.address}</td>
							<td class="text-truncate" style="max-width: 150px;"><br>
								<br> <a href="deleteUser/${user.id}" class="btn btn-danger">Delete</a></td>
						</tr>
					</c:forEach>
					<!-- 					<tr> -->
					<!-- 						<td>Mohammed</td> -->
					<!-- 						<td>Mohammed@gmail.com</td> -->
					<!-- 						<td>1234567</td> -->
					<!-- 						<td>Giza</td> -->
					<!-- 					</tr> -->

					<!-- 					<tr> -->
					<!-- 						<td>Ahmed</td> -->
					<!-- 						<td>Ahmed@gmail.com</td> -->
					<!-- 						<td>123456789</td> -->
					<!-- 						<td>Cairo</td> -->
					<!-- 					</tr> -->

					<!-- 					<tr> -->
					<!-- 						<td>Mohammed</td> -->
					<!-- 						<td>Mohammed@gmail.com</td> -->
					<!-- 						<td>1234567</td> -->
					<!-- 						<td>Giza</td> -->
					<!-- 					</tr> -->
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