<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
         <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ include file="header.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
${products}

<div class="container">
<table class="table table-bordered">
<thead>
<tr>
<th>Product Name</th>
<th>Price</th>
<th>Action</th>
</tr>
</thead>
<c:forEach items="${products}" var="p">
<tr>
<td>${p.productname }</td>
<td>${p.price}</td>
<td></td>
</tr>
</c:forEach>
</table>



</body>
</html>