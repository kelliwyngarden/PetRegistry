<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View All Pets</title>
</head>
<body>
<mvc:form modelAttribute = "pet" action = "petUpdate.mvc">
	<table>
		<tr>
		<th>Pet Id</th>
			<th>Pet Name</th>
			<th>Pet Species</th>
			<th>Pet Age</th>
			<th>Pet Coloring</th>
			<th>Owner Name</th>
		</tr>
		<c:forEach items = "${allPets}" var = "pet">
			<tr>
				<td><input type = "radio" name = "petId" value = "${pet.petId}">${pet.petId}</td>
				<td>${pet.name}</td>
				<td>${pet.species}</td>
				<td>${pet.age}</td>
				<td>${pet.coloring}</td>
			</tr>
		</c:forEach>
	</table>
	<input type = "submit" value = "Edit this Pet" name = "doThis">
	<input type = "submit" value = "Remove this Pet" name = "doThis">
</mvc:form>
</body>
</html>