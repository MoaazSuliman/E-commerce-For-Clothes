

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="../assets/css/all.min.css">
<link rel="stylesheet" href="../assets/css/style.css">
<!--     JSTL -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>

<body>
	<div class="title">
		<h3 class="text-center mt-5 mb-2">Login</h3>
	</div>
	<!-- 	Start Of Form -->
	<form class="col-lg-6 col-md-8 col-sm-10 form" action="/login"
		method="post">
		<div class="mb-3">
			<label for="exampleInputEmail1" class="form-label">Email
				address</label> <input type="email" class="email-inp form-control"
				id="exampleInputEmail1" aria-describedby="emailHelp" name="email"
				value="${email}">
		</div>
		<div class="mb-3">
			<label for="exampleInputPassword1" class="form-label">Password</label>
			<input type="password" class="pass-inp form-control"
				id="exampleInputPassword1" name="password" value="${password }">
		</div>
		<div class="mb-3 form-check">
			<input type="checkbox" class="bg-dark checkbox form-check-input"
				id="exampleCheck1"> <label class="form-check-label"
				for="exampleCheck1">remember me</label>
		</div>
		<c:if test="${invalid==1}">
			<div class="bg-danger"
				style="border-radius: 20px; width: 100%; height: 50px; position: relative;">
				<span
					style="font-size: x-large; position: absolute; margin-left: 25%;">${errorMsg}</span>
			</div>
			<br>
			<br>
		</c:if>
		<button type="submit" class="btn">Login</button>
	</form>
	<!-- End Of Form -->
	<script src="../vendor/jquery/jquery.min.js">
		
	</script>
	<script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>

</html>