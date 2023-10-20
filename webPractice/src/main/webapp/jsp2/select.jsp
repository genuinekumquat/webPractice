<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp2/select.jsp</title>
</head>
<body>
<%
// 디비연결 => 학생정보 조회 => 출력
// 1단계 JDBC 프로그램 가져오기 
Class.forName("com.mysql.cj.jdbc.Driver");
//2단계 디비 연결
String dbUrl="jdbc:mysql://localhost:3306/jspdb?serverTimezone=Asia/Seoul";
String dbUser="root";
String dbPass="1234";
Connection con=DriverManager.getConnection(dbUrl, dbUser, dbPass);
//3단계 문자열 -> sql구문 변경
String sql = "select * from student";
PreparedStatement pstmt=con.prepareStatement(sql);
//4단계 sql구문 실행 => 실행결과 java ResultSet 내장객체에 저장
ResultSet rs=pstmt.executeQuery();
//5단계 : 결과 출력, 저장
// 결과 접근 -> 행 접근 -> 열 접근
// rs.next() 다음행  rs.last() 마지막행 ,....
// -> 다음행에 접근하면 데이터 있으면 true 리턴, 없으면 false리턴
// out.println(rs.next()); //true
// out.println(rs.next()); //true
// out.println(rs.next()); //false
// while(rs.next()==true){
// 	// 다음행 접근 -> 데이터 있으면 true -> 반복문 동작
// 	// -> 열 접근
// 	out.println(rs.getInt("num")); //1번열 ,"num"열
// 	out.println(rs.getString("name")); //2번열, "name"열
// 	out.println("<br>");
// }
// 다음행 접근 -> 데이터 있으면 false-> 반복문 빠져나옴

while(rs.next()){
	%>
	
	<%=rs.getInt("num") %>
	<%=rs.getString("name") %>
	<br>
	
	<%
}
//마무리 단계
%>
</body>
</html>


