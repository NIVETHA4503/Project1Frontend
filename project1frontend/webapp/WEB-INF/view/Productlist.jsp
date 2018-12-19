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
<h3>All Products:</h3>

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
<td>
<a href="<c:url value='/all/getproduct?id=${p.id}'></c:url>"><span class="glyphicon glyphicon-info-sign"></span></a>
<a href="<c:url value='/admin/deleteproduct?id=${p.id}'></c:url>"><span class="glyphicon glyphicon-trash"></span></a>
</td>

</tr>
</c:forEach>
</table>


</div>
</body>
</html>