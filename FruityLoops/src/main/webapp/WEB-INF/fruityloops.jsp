<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Fruity Loops</title>
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="/css/style.css">
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script>
</head>
<body>
	<div class= "container">
		<h1 id = "fruitstore">Fruit Store</h1>
		<table class="table table-hover" id = "table">
			<thead>
				<tr>
					<th>Name</th>
					<th>Price</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var = "fruit" items = "${listOfFruits}">
					<tr>
						<td><c:out value= "${fruit.name}"></c:out></td>
						<td><c:out value= "${fruit.price}"></c:out></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	
</body>
</html>