<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>All Customers</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>

<h2 align ="center" >Welcome ${user.name}!</h2>
<br/>
<center>
<a href="Logout">logout</a>
</center>
<br/>
<br/>
<br/>

<div class="container">
  <div class="row">
    <div class="col-sm-6">

	<table border="2" class="table table-striped">

		<thead>
			<tr>
				<th>id</th>
				<th>name</th>
				<th>email</th>
				<th>phoneno</th>
				<th>address</th>
				<th>salary</th>
				
				<c:if test="${user.profile == 'admin'}">
				<th>update</th>
				<th>delete</th>
				</c:if>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${customers}" var="customer">
				<tr>
				    <td>${customer.id}</td>
					<td>${customer.name}</td>
					<td>${customer.email }</td>
					<td>${customer.phoneno }</td>
					<td>${customer.address }</td>
					<td>${customer.salary}</td>
					
					
						<c:if test="${user.profile == 'admin'}">
							<td><a href="update?id=${customer.id }">update</a></td>
							<td><a href="delete?id=${customer.id }">delete</a></td>
						</c:if>
					

				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
</div>
</div>

	<c:if test="${user.profile == 'admin' || user.profile == 'mgr'}">
	<center>
		<a href="addcustomer">addcustomer</a>
		</center>
	
	</c:if>
</body>
</html>
