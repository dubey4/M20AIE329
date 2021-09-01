<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Cars</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
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
</head>
<body>

<div class="mt-2 container" align="Center">
		<h3 class="h3" style="color: blue;">View Cars</h3>
	</div>


	<div class="mt-5 col-md-12 container">
		<a href="insertcarv" class="btn btn-primary">Add Car</a>
	</div>

	<div class="mt-5 col-md-12 container-fluid">

		<table id="car" class="table table-striped table-bordered"
			style="width: 100%">
			<thead>
				<tr>
					<th scope="col">Name</th>
					<th scope="col">Description</th>
					<th scope="col">Actions</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="car" items="${cars}">
					<tr>
						<td>${car.name}</td>
						<td>${car.desc}</td>
						<td><a href="updatecarv?id=${car.id}" class="btn btn-primary">Update Car</a> &nbsp;&nbsp; <a href="deletecar?id=${car.id}" class="btn btn-primary">Delete Car</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<script type="text/javascript">
		
	var myTable =$('#car').DataTable();
	myTable.draw();
		
	</script>


</body>
</html>