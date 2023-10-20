<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp1/testPro3.jsp</title>
</head>
<body>
<%
//한글처리
request.setCharacterEncoding("utf-8");
// 사용자가 입력한 내용을 서버에 전달하면
// 서버에 내장객체 생성되면서 request 기억장소 , response 기억장소
// request 사용자가 입력한 내용을 저장
String id = request.getParameter("id");
String pass = request.getParameter("pass");
String gender = request.getParameter("gender");
String grade = request.getParameter("grade");
String intro = request.getParameter("intro");
//하나의 이름에 여러개 값을 가져오기
//http://localhost:8080/webProject/jsp1/
// testPro3.jsp?id=&pass=&grade=1&intro=&
//  hobby=여행&hobby=게임&hobby=축구
String hobby[] = request.getParameterValues("hobby");
%>
아이디 <%=id %><br>
비밀번호  <%=pass %><br>
성별 <%=gender %><br>
등급  <%=grade %><br>
자기소개 <%=intro %><br>
<%-- 취미 개수(배열 개수) <%=hobby.length %> <br> --%>
취미 출력
<%
// hobby가 null이면 => hobby.length 에러발생
// hobby가 null이 아니면 => for hobby.length
if(hobby != null){
	for(int i=0;i<hobby.length;i++){
%>
		<%=hobby[i] %>
<%
	}
}	
%>
</body>
</html>

