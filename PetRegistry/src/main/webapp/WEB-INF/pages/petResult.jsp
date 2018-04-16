<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pet Registration Result</title>
<style><%@include file="/WEB-INF/css/cssFile.css"%></style>
</head>
<body>
<div  class = "page-wrapper">
	<h1>Pet Registration Confirmation</h1>
	<div class = "page-divider"></div>
	<div class = "result-style">
		<h2>Pet Registered</h2>
		<ul>
			<li>
				<label>Pet Name</label>
				<p>${p.name}</p>
			</li>
			<li>
				<label>Species</label>
				<p>${p.species}</p>
			</li>
			<li>
				<label>Age</label>
				<p>${p.age}</p>
			</li>
			<li>
				<label>Coloring</label>
				<p>${p.coloring}</p>
			</li>
			<li>
				<label>Owner Name</label>
				<c:forEach items = "${allOwners}" var = "owner">
					<c:if test = "${p.ownerId == owner.ownerId}">
						<p>${owner.firstName} ${owner.lastName}</p>
					</c:if>
				</c:forEach>
			</li>
		</ul>
	</div>
	<div class="wrapper">
	  <span class="square">
	    <a class="tenth before after" href="viewAllPets.mvc">View All Pets</a>
	  </span>
	</div>
	<div class="wrapper">
	  <span class="square">
	    <a class="tenth before after" href="homepage.mvc">Return Home</a>
	  </span>
	</div>
</div>
</body>
</html>