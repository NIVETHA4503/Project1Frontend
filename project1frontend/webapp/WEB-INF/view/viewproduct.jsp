<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<b>Product Details</b>
<pre>
<b>Product Name:</b>${productAttr.productname }
<b>Description:</b>${productAttr.description }
<b>Price:</b>${productAttr.price}
<b>InStock:</b>${productAttr.quantity }
<button class="btn btn-lg btn-info">Add To Cart</button>
</pre>
<a href="<c:url value='/all/getallproducts'></c:url>">Previous Page</a>
</div>
</body>
</html>