<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pet Registration Form</title>
</head>
<body>
<h2>Pet Registration Form</h2>
<p>Adding Pet to Owner ${owner.ownerId}: ${owner.firstName} ${owner.lastName}<p>
<mvc:form modelAttribute = "pet" action = "petResult.mvc">
	<table>
		<tr>
			<td><mvc:label path = "name">Pet Name</mvc:label></td>
			<td><mvc:input path = "name" /></td>
		</tr>
		<tr>
			<td><mvc:label path = "species">Species</mvc:label></td>
			<td><mvc:input path = "species" /></td>
		</tr>
		<tr>
			<td><mvc:label path = "age">Age</mvc:label></td>
			<td><mvc:input path = "age" /></td>
		</tr>
		<tr>
			<td><mvc:label path = "coloring">Coloring</mvc:label></td>
			<td><mvc:input path = "coloring" /></td>
		</tr>
		<tr>
			<td><mvc:label path = "owner">Owner ID</mvc:label></td>
			<td><mvc:label path = "owner">${pet.owner.ownerId}</mvc:label>
		</tr>
		<tr>
			<td colspan = "2">
				<input type = "submit" value = "Submit" />
			</td>
		</tr>
	</table>
</mvc:form>
<a href = "viewAllPets.mvc">View All Pets</a>
<a href = "homepage.mvc">Return Home</a>
</body>
</html>