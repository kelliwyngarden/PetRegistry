<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Owner Information</title>
<style><%@include file="/WEB-INF/css/cssFile.css"%></style>
<script type="text/javascript">
//auto expand textarea
function adjust_textarea(h) {
    h.style.height = "20px";
    h.style.height = (h.scrollHeight)+"px";
}
</script>
</head>
<body>
<div class = "page-wrapper">
	<h1>Edit Owner Form</h1>
	<div class = "page-divider"></div>
	<mvc:form modelAttribute = "owner" action = "editOwnerResult.mvc" class = "form-style">
	<h2>Editing Owner</h2>
		<ul>
			<li>
				<mvc:label path = "firstName">First Name</mvc:label>
				<mvc:input path = "firstName" value = "${owner.firstName}"/>
			</li>
			<li>
				<mvc:label path = "lastName">Last Name</mvc:label>
				<mvc:input path = "lastName"  value = "${owner.lastName}"/>
			</li>
			<li>
				<mvc:label path = "phone">Phone Number</mvc:label>
				<mvc:input path = "phone"  value = "${owner.phone}"/>
			</li>
			<li>
				<mvc:label path = "email">Email</mvc:label>
				<mvc:input path = "email"  value = "${owner.email}"/>
			</li>
			<li>
				<mvc:label path = "address">Address</mvc:label>
				<mvc:input path = "address" value = "${owner.address}"/>
			</li>
			<li>
				<input type = "submit" value = "Submit" />
			</li>
		</ul>
		<mvc:input type = "hidden" path = "ownerId" value = "${owner.ownerId}"/>
	</mvc:form>
	<div class="wrapper">
	  <span class="square">
	    <a class="tenth before after" href="viewOwners.mvc">Cancel Edit</a>
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