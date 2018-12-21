<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
        <%@ include file="header.jsp" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
     <!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<c:url value="/admin/updateproduct" var="url"></c:url>
<form:form action="${url}" modelAttribute="Product">
<pre>
<form:hidden path="id"></form:hidden>
Enter Product name	:	<form:input path="productname"/>
Enter Description	:	<form:input path="description"/>
Enter Price		:	<form:input path="price"/>
Enter Quantity		: 	<form:input path="quantity"/>

<input type="submit" value="Update Product" ></button>
</pre>
</form:form>

</div>

</body>
</html>