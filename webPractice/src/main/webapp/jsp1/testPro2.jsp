<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--     jsp페이지 설정 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp1/testPro2.jsp</title>
</head>
<body>
<%
// 사용자가 요청이 들어오면 요청정보를 
// HttpServletRequest 자바내장객체 객체생성 기억장소 할당
// request JSP 내장객체 요청정보 저장

//request 사용하기 전에 한글처리 설정 필요
//post방식으로 넘어오면 한글처리 설정 필요
request.setCharacterEncoding("utf-8");

//자바,jsp 명령 여러개
//request.getParameter 리턴결과는 => String  
String sname = request.getParameter("name");
String sage=request.getParameter("age");
%>
<!-- 태그 중간에 하나의 값을 출력 -->
이름  <%=sname %><br>
나이  <%=sage %><br>
<%
// 나이가 20이상이면 "성인입니다." 20미만이면 "미성년"
// 문자열 >= 숫자 비교 -> 에러발생
// 문자열을 숫자로 변경하는 프로그램 이용
// Integer 자바내장객체 : 기본자료형 정수형을 자바내장객체 정의
//  Integer.parseInt() 메서드 정의 
int age = Integer.parseInt(sage);
if(age >= 20){
%>
	<%="성인입니다"%>
<%
}else{
%>	
	<%="미성년입니다"%>
<%	
}
%>

</body>
</html>