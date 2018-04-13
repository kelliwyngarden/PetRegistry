<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Owner Registration Result</title>
</head>
<body>
<h2>Owner Registration Result</h2>
	<table>
		<tr>
			<td>First Name</td>
			<td>${o.firstName}</td>
		</tr>
		<tr>
			<td>Last Name</td>
			<td>${o.lastName}</td>
		</tr>
		<tr>
			<td>Phone Number</td>
			<td>${o.phone}</td>
		</tr>
		<tr>
			<td>Email</td>
			<td>${o.email}</td>
		</tr>
		<tr>
			<td>Address</td>
			<td>${o.address}</td>
		</tr>
	</table>
<a href = "viewOwners.mvc">View All Owners</a>
</body>
</html>