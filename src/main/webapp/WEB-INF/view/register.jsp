<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Register</title>
<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="../assets/css/all.min.css">
<link rel="stylesheet" href="../assets/css/style.css">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>

<body>
	<div class="title">
		<h3 class="text-center mt-3" style="margin: 10px;">Register</h3>
	</div>
	<!--     Start Of Form -->
	<form class="col-lg-6 col-md-8 col-sm-10 form mt-5" action="/register"
		method="post">
		<div class="mb-3">
			<label for="exampleInputPassword1" class="form-label">Name</label> <input
				type="text" class="pass-inp form-control" id="exampleInputPassword1"
				name="name" required="required" value="${name}">
		</div>
		<div class="mb-3">
			<label for="exampleInputEmail1" class="form-label">Email
				address</label> <input type="email" class="email-inp form-control"
				id="exampleInputEmail1" aria-describedby="emailHelp" name="email"
				required="required" value="${email}">
		</div>
		<div class="mb-3">
			<label for="exampleInputPassword1" class="form-label">Password</label>
			<input type="password" class="pass-inp form-control"
				id="exampleInputPassword1" name="password" required="required"
				value="${password}">
		</div>
		<div class="mb-3">
			<label for="exampleInputPassword1" class="form-label">Address</label>
			<input type="text" class="pass-inp form-control"
				id="exampleInputPassword1" name="address" required="required"
				value="${address}">
		</div>
		<c:if test="${invalid==1}">
			<div class="bg-danger"
				style="border-radius: 20px; width: 100%; height:auto;">
				<p
					style="font-size: x-large; width: fit-contant; text-align: center;">${errorMsg}</p>
			</div>
			<br>
			<br>
		</c:if>
		<button type="submit" class="btn">Register</button>
	</form>
	<!-- End Of Form -->


	<script src="../vendor/jquery/jquery.min.js">
		
	</script>
	<script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>

</html>