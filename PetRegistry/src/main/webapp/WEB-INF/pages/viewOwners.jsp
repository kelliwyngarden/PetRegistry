<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View All Owners</title>
<style><%@include file="/WEB-INF/css/cssFile.css"%></style>
</head>
<body>
<div class = "page-wrapper">
	<h1>View All Owners</h1>
	<div class = "page-divider"></div>
	<c:choose>
		<c:when test="${empty requestScope.allOwners}">
			<div class = "result-style">
				<h2>No owners entered. Please add owner information.</h2>
			</div>
		</c:when>
		<c:otherwise>
			<mvc:form modelAttribute = "owner" action = "editOwnerForm.mvc">
			<c:forEach items = "${allOwners}" var = "owner">
				<div class = "result-style">
					<h2>Owner Entry</h2>
					<div>
						<ul>
							<li class = "split align-left">
								<label>Select Owner</label>
								<p><input type ="radio" name = "ownerId" value = "${owner.ownerId}"></p>
							</li>
							<li class = "split align-right">
								<label>First Name</label>
								<p>${owner.firstName}</p>
							</li>
						</ul>
						<div class = "clear"></div>
					</div>
					<div>
						<ul>
							<li class = "split align-left">
								<label>Last Name</label>
								<p>${owner.lastName}</p>
							</li>
							<li class = "split align-right">
								<label>Phone Number</label>
								<p>${owner.phone}</p>
							</li>
						</ul>
						<div class = "clear"></div>
					</div>
					<div>
						<ul>
							<li class = "split align-left">
								<label>Email</label>
								<p>${owner.email}</p>
							</li>
							<li class = "split align-right">
								<label>Address</label>
								<p>${owner.address}</p>
							</li>
						</ul>
						<div class = "clear"></div>
					</div>
				</div>
			</c:forEach>
			<div class = "result-style">
				<input type = "submit" value = "Add Pet" name = "doThis">
				<input type = "submit" value = "Edit Owner Information" name = "doThis"><br/>
				<br/>
				<input type = "submit" value = "Delete Owner" name = "doThis">
			</div>
	</mvc:form>
	</c:otherwise>
	</c:choose>
	<div class="wrapper">
	  <span class="square">
	    <a class="tenth before after" href="ownerForm.mvc">Add Pet Owner</a>
	  </span>
	</div>
	<div class="wrapper">
	  <span class="square">
	    <a class="tenth before after" href="homepage.mvc">Return Home</a>
	  </span>
	</div>
</body>
</html>