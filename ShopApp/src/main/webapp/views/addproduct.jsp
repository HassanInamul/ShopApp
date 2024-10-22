<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%-- <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>
<%@ page isELIgnored="false"%>

	<!DOCTYPE html>
	<html lang="en">
	<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<title>Zap Shopping App</title>
	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
		crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="stylesheet" type="text/css" href="style1.css">
	<style>
	h2 {
		font-size: 16px;
		margin-bottom: 5px;
	}
	
	p {
		font-size: 12px;
		margin: 0;
	}
	</style>
	</head>
	<body>
	
	
		<nav class="navbar navbar-expand-lg navbar-light bg-warning">
			<div class="container">
				<a class="navbar-brand fs-1 fw-medium" href="#">Zap Shopping Web App</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNav"
					aria-controls="navbarNav" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav ms-auto">
						<li class="nav-item"><a class="nav-link" href="home">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="viewallproducts">All Products</a></li>
						
						<li class="nav-item"><a class="nav-link" href="home">Contact</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>
	
		<div class="container mt-5">
			<div class="row justify-content-center">
				<div class="col-md-6">
					<div class="card">
						<div class="card-body">
							<h2 class="mb-3 text-center fs-3 font-weight-bold">Add a New Product</h2>
							<form:form action="handleForm" method="post" modelAttribute="product">
								<div class="mb-1">
									<label for="pid" class="form-label">Product ID</label> <input
										type="text" class="form-control" id="pid" name="pid"
										required>
								</div>
	
								<div class="mb-1">
									<label for="pname" class="form-label">Product Name</label>
									<input type="text" class="form-control" id="pnamee"
										name="pname" required>
								</div>
	
								<div class="mb-1">
									<label for="pdesc" class="form-label">Product
										Description</label>
									<textarea class="form-control" id="pdesc" name="pdesc"
										rows="2" required></textarea>
								</div>
	
								<div class="mb-1">
									<label for="price" class="form-label">Product Price</label> 
									<input type="text" class="form-control"
										id="price" name="price" required>
								</div>
								<div class="mb-1">
									<label for="stock" class="form-label">Product Stock</label> 
									<input type="text" class="form-control"
										id="stock" name="stock" required>
								</div>
	
								<button type="submit" class="btn btn-primary">Submit</button>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	
	
	
		<!-- Add the Bootstrap JS and Popper.js scripts -->
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
			crossorigin="anonymous"></script>
	</body>
	</html>
