<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp1/request.jsp</title>
</head>
<body>
<%
// HttpServletRequest request => 사용자가 요청한 정보를 서버 저장
// HttpServletRequest => java 내장객체
// 웹애플리케이션 서버 HttpServletRequest 객체생성 request
// HttpServletRequest request=new HttpServletRequest();
// request => jsp 내장객체 -> 객체 생성 기억장소 할당
// 이름= 값
// request.getParameter("태그이름");
// 이름=값,이름=값
// request.getParameterValues("태그이름");
%>
서버 도메인명 : <%=request.getServerName() %><br>
서버 포트 : <%=request.getServerPort() %><br>
서버 URL : <%=request.getRequestURL() %><br>
서버 URI : <%=request.getRequestURI() %><br>
서버 프로토콜 : <%=request.getProtocol() %><br>
서버 요청방식 : <%=request.getMethod() %><br>
프로젝트 경로  : <%=request.getContextPath() %><br>
서버 물리적 경로 : <%=request.getRealPath("/") %><br>
사용자 IP 주소 : <%=request.getRemoteAddr() %><br>
http 헤더 정보(언어) : <%=request.getHeader("accept-language") %><br>
http 헤더 정보(브라우저) : <%=request.getHeader("user-agent") %><br>
</body>
</html>


