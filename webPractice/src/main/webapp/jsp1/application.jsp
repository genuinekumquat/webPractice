<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp1/application.jsp</title>
</head>
<body>
<%
// application 내장객체 : 서버 정보를 저장하는 내장객체
// => 서버 start하면 기억장소 할당
// => 서버 stop하면 기억장소 해제

//out내장객체 : 출력정보를 저장하는 내장객체
out.println("출력");
%>
서버정보 : <%=application.getServerInfo() %><br>
물리적인경로 : <%=application.getRealPath("/") %><br>
</body>
</html>


