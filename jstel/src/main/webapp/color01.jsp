<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	String color = request.getParameter("c");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test = '${param.c=="r" }'>
			<h1 style='color:#ff0000'>Hello World</h1>
		</c:when>
		
		<c:when test = '${param.c=="g" }'>
			<h1 style='color:#00ff00'>Hello World</h1>
		</c:when>
		
		<c:when test = '${param.c=="b" }'>
			<h1 style='color:#0000ff'>Hello World</h1>
		</c:when>
		
		<c:otherwise>
			<h1>Hello World</h1>
		</c:otherwise>
	</c:choose>
<!--<%
		if("r".equals(color)){
	%>
		<h1 style='color:#ff0000'>Hello World</h1>
	<%} else if("g".equals(color)) { %>
		<h1 style='color:#00ff00'>Hello World</h1>
	<%} else if("b".equals(color)) { %>
		<h1 style='color:#0000ff'>Hello World</h1>
	<%} else { %>
		<h1>Hello World</h1>
	<%} %> -->	
</body>
</html>