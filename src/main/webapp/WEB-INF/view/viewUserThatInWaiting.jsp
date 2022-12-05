<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1" --%>
<%--     pageEncoding="ISO-8859-1"%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap"
	rel="stylesheet">
<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="../assets/css/all.min.css">
<link rel="stylesheet" href="../assets/css/dashboard.css">
<!-- JSTL -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Insert title here</title>
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
		<div class="col-lg-8 col-md-7 col-sm-7">
			<table class="table text-light text-center">
				<thead class="bg-danger">
					<tr>
						<td>UserName</td>
						<td>UserEmail</td>
						<td>Action</td>
						<td>Action</td>
					</tr>
				</thead>
				<tbody class="text-dark">
					<c:forEach items="${waits}" var="wait">
						<tr>
							<td>${wait.user.name}</td>
							<td>${wait.user.email }</td>
							<td class="text-truncate" style="max-width: 150px;"><br>
								<br> <a href="/showUserProducts/${wait.user.id}"
								class="btn btn-dark">Show Products</a></td>
							<td class="text-truncate" style="max-width: 150px;"><br>
								<br> <a href="/deleteAllUserProductsThatAreTrue/${wait.user.id}"
								class="btn btn-danger">Delete Products</a></td>
						</tr>
					</c:forEach>
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