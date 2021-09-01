<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.11.0/css/dataTables.bootstrap4.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script
	src="https://cdn.datatables.net/1.11.0/js/jquery.dataTables.min.js"></script>

<script
	src="https://cdn.datatables.net/1.11.0/js/dataTables.bootstrap4.min.js"></script>

<title>Add Car</title>

</head>
<body>
<div class="mt-2 container" align="Center">
		<h3 class="h3" style="color: blue;">Add Car</h3>
	</div>

	<div class="mt-5 col-md-5 container">

		<form action="insertcar" method="post">

			<div class="form-group">
				<label for="name">Car Name*:</label> <input type="text"
					class="form-control" id="name" name="name">
			</div>

			<div class="form-group">
				<label for="address">Car Description*:</label> <input type="text"
					class="form-control" id="desc" name="desc">
			</div>

			<button type="submit" class="btn btn-primary">Add Car</button>
		</form>
	</div>

	<div class="mt-5 col-md-5 container">
	<c:if test="${not empty msg}">
		<div class="alert alert-success" role="alert">${msg}</div>
	</c:if>	
	</div>
	<div class="mt-5 col-md-12 container"  align="center">
		<a href="cars" class="btn btn-primary">View Cars</a>
	</div>
</body>
</html>