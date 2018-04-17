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
<style><%@include file="/WEB-INF/css/cssFile.css"%></style>
</head>
<body>
<div class = "page-wrapper">
	<h1>View All Pets</h1>
	<div class = "page-divider"></div>
	<c:choose>
		<c:when test="${empty requestScope.allPets}">
			<div class = "result-style">
				<h2>No pets entered. Please select an owner and add pet information.</h2>
			</div>
		</c:when>
		<c:otherwise>
			<mvc:form modelAttribute = "pet" action = "petUpdate.mvc">
			<c:forEach items = "${allPets}" var = "pet">
				<div class = "result-style">
					<h2>Pet Entry</h2>
					<div>
						<ul>
							<li class = "split align-left">
								<label>Select Pet</label>
								<p><input type = "radio" name = "petId" value = "${pet.petId}"></p>
							</li>
							<li class = "split align-right">
								<label>Pet Name</label>
								<p>${pet.name}</p>
							</li>
						</ul>
						<div class = "clear"></div>
					</div>
					<div>
						<ul>
							<li class = "split align-left">
								<label>Species</label>
								<p>${pet.species}</p>
							</li>
							<li class = "split align-right">
								<label>Age</label>
								<p>${pet.age}</p>
							</li>
						</ul>
						<div class = "clear"></div>
					</div>
					<div>
						<ul>
							<li class = "split align-left">
								<label>Color</label>
								<p>${pet.coloring}</p>
							</li>
							<c:forEach items = "${allOwners}" var = "owner">
								<c:if test = "${pet.ownerId == owner.ownerId}">
									<li class = "split align-right">
										<label>Owner</label>
										<p>${owner.firstName} ${owner.lastName}</p>
									</li>
								</c:if>
							</c:forEach>
						</ul>
						<div class = "clear"></div>
					</div>
				</div>
			</c:forEach>
			<div class = "result-style">
				<input type = "submit" value = "Edit this Pet" name = "doThis">
				<input type = "submit" value = "Remove this Pet" name = "doThis">
			</div>
	</mvc:form>
	</c:otherwise>
	</c:choose>
	<div class="wrapper">
	  <span class="square">
	    <a class="tenth before after" href="viewOwners.mvc">View All Owners</a>
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

<!-- <li> -->
<!--     <input type="text" name="field1" class="field-style field-split align-left" placeholder="Name" /> -->
<!--     <input type="email" name="field2" class="field-style field-split align-right" placeholder="Email" /> -->

<!-- </li> -->