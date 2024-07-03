<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h1 class="text-center mb-3">Change Product Detail</h1>
				
				<form action="${pageContext.request.contextPath}/handle-product" method="post">
				
					<input type="text" value="${product.id}" name="id"/>
					<div class="form-group">
						<label for="name">Product name</label> <input type="text"
							class="form-control" id="name" aria-describedby="emailHelp"
							name="name" placeholder="Enter the product name here" value="${product.name}">
					</div>

					<div class="form-group">
						<label for="description">Product description</label>
						<textarea class="form-control" id="description"
							aria-describedby="emailHelp" type="text" name="description"
							row="5" placeholder="Enter the product description here">${product.description}</textarea>
					</div>

					<div class="form-group">
						<label for="price">Product price</label> <input type="text"
							class="form-control" id="price" name="price"
							placeholder="Enter the product price"  value="${product.price}">
					</div>

					<div class="container text-center">
						<a href="${pageContext.request.contextPath}/"
							class="btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-primary">Update</button>

					</div>

				</form>
			</div>
		</div>
	</div>
</body>
</html>