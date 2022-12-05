<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product</title>
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../assets/css/all.min.css">
    <link rel="stylesheet" href="../assets/css/templatemo-sixteen.css">
</head>

<body>
    <div class="container">
        <div class="product-item product row">
            <img src="${product.url}" alt="image" class="col-lg-4 col-md-6 col-sm-12">
            <div class="down-content">
                <a href="#">
                    <h4>${product.name}</h4>
                </a>
                <h6>${product.price}</h6>
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