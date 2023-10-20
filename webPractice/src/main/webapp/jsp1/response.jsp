<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp1/response.jsp</title>
</head>
<body>
<%
//HttpServletResponse => java 내장객체
// => 서버에서 처리한 결과를 저장 =>웹서버 전달=> http=> 사용자
// 웹애플리케이션 서버 HttpServletResponse 객체생성 response
// HttpServletResponse response=new HttpServletResponse();
// response => jsp 내장객체 -> 객체 생성 기억장소 할당
// response 응답정보 저장, 서버에서 사용자에서 설정정보 변경 명령 내림
// 서버에서 사용자에게 header값을 변경해라 명령
response.setHeader("accept-language", "en-US");
// 서버에서 사용자의 응답내용을 text/html; charset=UTF-8 변경 명령
response.setContentType("text/html; charset=UTF-8");
// 서버에서 쿠키값을 사용 컴퓨터에 파일로 저장하는 명령 
// response.addCookie("쿠키값");
// jsp 하이퍼링크 : 서버에서 다른페이지로 이동해 명령 
response.sendRedirect("request.jsp");
%>
</body>
</html>



