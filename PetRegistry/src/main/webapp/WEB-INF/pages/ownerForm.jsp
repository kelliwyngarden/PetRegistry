<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix = "mvc" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored = "false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Owner Registration Form</title>
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
<div  class = "page-wrapper">
	<h1>Owner Registration Form</h1>
	<div class = "page-divider"></div>
	<mvc:form modelAttribute = "owner" action = "ownerResult.mvc" class="form-style">
		<h2>Adding New Owner</h2>
		<ul>
			<li>
				<mvc:label path = "firstName">First Name</mvc:label>
				<mvc:input path = "firstName"/>
				<mvc:errors path = "firstName" class = "errors"/>
				<span>Enter First Name</span>
			</li>
			<li>
				<mvc:label path = "lastName">Last Name</mvc:label>
				<mvc:input path = "lastName"/>
				<mvc:errors path = "lastName" class = "errors"/>
				<span>Enter Last Name</span>
			</li>
			<li>
				<mvc:label path = "phone">Phone Number</mvc:label>
				<mvc:input path = "phone"/>
				<mvc:errors path = "phone" class = "errors"/>
				<span>Enter Phone Number</span>
			</li>
			<li>
				<mvc:label path = "email">Email</mvc:label>
				<mvc:input path = "email"/>
				<mvc:errors path = "email" class = "errors"/>
				<span>Enter Email Address</span>
			</li>
			<li>
				<mvc:label path = "address">Address</mvc:label>
				<mvc:input path = "address"/>
				<mvc:errors path = "address" class = "errors"/>
				<span>Enter Address</span>
			</li>
			<li>
				<input type = "submit" value = "Submit" />		
			</li>
		</ul>
	</mvc:form>
	<div class="wrapper">
	  <span class="square">
	    <a class="tenth before after" href = "viewOwners.mvc">View All Owners</a>
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