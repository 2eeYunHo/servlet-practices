<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	//pageContext.setAttribute("count", ((List)request.getAttribute("list")).size());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>JSTL(forEach Tag) Test</h4>
	
	<c:set var="count" value ='${fn:length(list) }' /> 
	<!-- var변수선언 =count| fn:는 함수사용선언 length를 사용하겠다 선언함 -->
	
	<c:forEach items='${list }' var='vo' varStatus='status'>
		<strong>[${fn:length(list)-status.index }]</strong>  <span>(${status.index }:${status.count }) [${vo.no }:${vo.name }]</span><br/>
		<!-- varStatus는 루프가 몇번돌았는지확인하며, 이름을 지정 -->
		
	</c:forEach>
	<h4>기본기능(core)</h4>

	<h4>형식화(format)</h4>

	<h4>함수처리(function)</h4>

</body>
</html>