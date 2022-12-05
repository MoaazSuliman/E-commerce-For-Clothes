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
					<li><a href="">Messages</a></li>
				</div>
				<div class="hover d-g products active">
					<i class="fas fa-shopping-cart"></i>
					<li><a href="/showUsersThatInWaiting">Sales</a></li>
				</div>
			</ul>
		</div>
		<!-- End RightBar -->
		<!-- Start Form -->
		<form class="create-form col-lg-8 col-md-7 col-sm-7"
			action="createProduct" method="post">
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Name</label> <input
					type="text" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" name="name">
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Price</label>
				<input type="number" class="form-control" id="exampleInputPassword1"
					name="price">
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Details</label>
				<input type="text" class="form-control" id="exampleInputPassword1"
					name="detail">
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Image
					Url</label> <input type="text" class="form-control" label="url"
					id="exampleInputPassword1" name="url">
			</div>
			<button type="submit" class="btn btn-dark w-100">Create
				Product</button>
		</form>
		<!-- End Form -->

		<script src=" vendor/jquery/jquery.min.js">
			
		</script>
		<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>

</html>