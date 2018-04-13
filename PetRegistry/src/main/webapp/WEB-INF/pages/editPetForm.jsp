<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<mvc:form modelAttribute = "pet" action = "editPetResult.mvc">
	<table>
		<tr>
			<td><mvc:label path = "name">Pet Name</mvc:label></td>
			<td><mvc:input path = "name" value = "${pet.name}"/></td>
		</tr>
		<tr>
			<td><mvc:label path = "species">Species</mvc:label></td>
			<td><mvc:input path = "species"  value = "${pet.species}"/></td>
		</tr>
		<tr>
			<td><mvc:label path = "age">Age</mvc:label></td>
			<td><mvc:input path = "age"  value = "${pet.age}"/></td>
		</tr>
		<tr>
			<td><mvc:label path = "coloring">Coloring</mvc:label></td>
			<td><mvc:input path = "coloring"  value = "${pet.coloring}"/></td>
		</tr>
		<tr>
			<td colspan = "2">
				<input type = "submit" value = "Submit" />
			</td>
		</tr>
	</table>
</mvc:form>
</body>
</html>