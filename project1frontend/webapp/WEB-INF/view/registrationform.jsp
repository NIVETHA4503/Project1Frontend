<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
        <%@ include file="header.jsp" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">

<pre>
<c:url value="/all/register" var="url"></c:url>
<form:form action=""  method="post" modelAttribute="Customer">
CUSTOMER DETAILS
<form:label path="firstName">Enter First Name		:	</form:label> <form:input path="firstName"></form:input>
<form:label path="lastName">Enter Last Name			:	 </form:label><form:input path="lastName"></form:input>
<form:label path="phoneNumber">Enter Phone Number		:	 </form:label><form:input path="phoneNumber"></form:input>
<hr>
LOGIN CREDENTIALS
<form:label path="user.email">Enter Email			:	</form:label><form:input path="user.email" type="email"/>
<form:label path="user.password">Enter Password		:	</form:label><form:input path="user.password" type="password"/>
<form:hidden path="user.enabled" value="true"/><form:hidden path="user.authorities.role" value="ROLE_USER"></form:hidden>
<hr>
BILLING ADDRESS
<form:label path="billingAddress.apartmentNumber">Enter Apartment Number</form:label><form:input path="billingAddress.apartmentNumber"/>
<form:label path="billingAddress.streetName">Enter Street Name</form:label><form:input path="billingAddress.streetName"/>
<form:label path="billingAddress.city">Enter City</form:label><form:input path="billingAddress.city"/>
<form:label path="billingAddress.state">Enter State</form:label><form:input path="billingAddress.state"/>
<form:label path="billingAddress.country">Enter Country</form:label><form:input path="billingAddress.country"/>
<form:label path="billingAddress.zipCode">Enter ZipCode</form:label><form:input path="billingAddress.zipCode"/>
<hr>
SHIPPING ADDRESS
<form:label path="shippingAddress.apartmentNumber">Enter Apartment Number</form:label><form:input path="shippingAddress.apartmentNumber"/>
<form:label path="shippingAddress.streetName">Enter Street Name</form:label><form:input path="shippingAddress.streetName"/>
<form:label path="shippingAddress.city">Enter City</form:label><form:input path="shippingAddress.city"/>
<form:label path="shippingAddress.state">Enter State</form:label><form:input path="shippingAddress.state"/>
<form:label path="shippingAddress.country">Enter Country</form:label><form:input path="shippingAddress.country"/>
<form:label path="shippingAddress.zipCode">Enter ZipCode</form:label><form:input path="shippingAddress.zipCode"/>
<input type="submit" value="REGISTER">
</form:form>
</pre>
</div>
</body>
</html>

