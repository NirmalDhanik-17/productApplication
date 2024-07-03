<html>
<head>
<%@include file="./base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.reduce-gap {
	padding: 0 5px; /* Adjust the padding as needed */
	margin: 0;
	display: flex;
	align-items: center;
}
.reduce-gap a {
	margin-right: 10px; /* Adjust this value to control the spacing */
}
</style>
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center">Welcome to Product App</h1>

				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">Product ID</th>
							<th scope="col">Product Name</th>
							<th scope="col">Product Description</th>
							<th scope="col">Product Price</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach items="${product}" var="p">
							<tr>
								<th scope="row">${p.id }</th>
								<td>${p.name }</td>
								<td>${p.description }</td>
								<td class="font-weight-bold">&#x20B9; ${p.price }</td>
								<td><a href="delete/${p.id}"><i
										class="fa-solid fa-trash text-danger" ></i></a>
								<a href="update/${p.id}">
								<i class="fa-solid fa-pen-nib text-primary" ></i></a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

				<div class="container text-center">
					<a href="add-product" class="btn btn-outline-sucess">Add
						Product</a>
				</div>

			</div>
		</div>
	</div>
</body>

</html>