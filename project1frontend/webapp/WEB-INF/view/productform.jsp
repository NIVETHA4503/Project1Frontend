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
<c:url value="/admin/addproduct" var="url"></c:url>
<form:form action="${url}" modelAttribute="product" enctype="multipart/form-data">
<pre>
Enter Product name	:	<form:input path="productname"/><form:errors path="productname" cssStyle="color:red"/>
Enter Description	:	<form:input path="description"/><form:errors path="description" cssStyle="color:red"/>
Enter Price		:	<form:input path="price"/><form:errors path="price" cssStyle="color:red"/>
Enter Quantity		: 	<form:input path="quantity"/><form:errors path="quantity" cssStyle="color:red"/>
Select Category		:	<form:select path="category.categoryid">
<c:forEach items="${categories }" var="c">
<form:option value="${c.categoryid }">${c.categoryname }</form:option>
</c:forEach>
</form:select>
Upload image		:	<form:input path="image" type="file"/>
<input type="submit" value="Add Product" ></button>
</pre>
</form:form>

</div>

</body>
</html>