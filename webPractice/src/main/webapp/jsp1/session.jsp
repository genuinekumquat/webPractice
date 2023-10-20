<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp1/session.jsp</title>
</head>
<body>
<%
// HttpSession 자바내장객체 => WAS 서버 객체생성 함
// 클라이언트가 서버에 접속하자마자 서버에서 객체생성 기억장소 할당
//             sessionID부여 (session 기억장소 이름 부여)
// session 내장객체 : 클라이언트와 서버간의 연결 정보를 저장
//           : 클라이언트와 서버간 연결 종료되면 session 유지
// session 내장객체 기억장소 없어지면 클라이언트와 서버간 연결 완전히 종료
// 1) 사용자 브라우저 모두 닫았을때
// 2) 30분 이상 작업을 하지 않았을때 
// 3) session삭제명령(로그아웃명령) 
%>
세션ID : <%=session.getId() %><br>
세션생성시간 : <%=session.getCreationTime() %><br>
세션최근접근시간 : <%=session.getLastAccessedTime() %><br>
세션유지시간 : <%=session.getMaxInactiveInterval() %>초<br>
세션유지시간 3600초 변경 : 
<%
session.setMaxInactiveInterval(3600);
%>
<br>
세션유지시간 : <%=session.getMaxInactiveInterval() %>초<br>
session삭제명령 :
<%
// session.invalidate();
%>
<br>
session 내장객체 안에 값을 저장 (로그인 했다는 표시 값) :
<%
session.setAttribute("id", "kim");
%>
<br>
session 내장객체 안에 저장된 값을 가져오기 : 
<%=session.getAttribute("id") %><br>
</body>
</html>



