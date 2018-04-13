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
	<h2>Edit Pet Result</h2>
	<table>
		<tr>
			<td>Pet Name</td>
			<td>${p.name}</td>
		</tr>
		<tr>
			<td>Species</td>
			<td>${p.species}</td>
		</tr>
		<tr>
			<td>Age</td>
			<td>${p.age}</td>
		</tr>
		<tr>
			<td>Coloring</td>
			<td>${p.coloring}</td>
		</tr>
	</table>
	<a href = "viewAllPets.mvc">View All Pets</a>
</body>
</html>