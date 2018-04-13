<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Registered Owners</title>
</head>
<body>
	<c:forEach items = "${all}" var = "owner">
		<table>
			<tr>
				<td>First Name</td>
				<td>${owner.firstName}</td>
			</tr>
			<tr>
				<td>Last Name</td>
				<td>${owner.lastName}</td>
			</tr>
			<tr>
				<td>Phone Number</td>
				<td>${owner.phone}</td>
			</tr>
			<tr>
				<td>Email</td>
				<td>${owner.email}</td>
			</tr>
			<tr>
				<td>Address</td>
				<td>${owner.address}</td>
			</tr>
		</table>
		<br/>
		<hr style = "text-align: left; margin-left: 0; width: 25%">
		<br/>
	</c:forEach>
	<a href = "petForm.mvc">Add Pet</a> <br />
	<a href = "ownerForm.mvc">Add New Pet Owner</a>
</body>
</html>