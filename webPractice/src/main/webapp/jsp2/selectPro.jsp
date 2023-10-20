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
<title>jsp2/selectPro.jsp</title>
</head>
<body>
<%
//사용자가 입력한 정보를 http가 들고와서 서버에 request 에 저장
//http://localhost:8080/
//    webProject/jsp2/selectPro.jsp?num=2
// request num 가져와서 -> 정수형 변수에 저장
int num = Integer.parseInt(request.getParameter("num"));
// 1단계 JDBC 프로그램 가져오기 
Class.forName("com.mysql.cj.jdbc.Driver");
//2단계 디비 연결
String dbUrl="jdbc:mysql://localhost:3306/jspdb?serverTimezone=Asia/Seoul";
String dbUser="root";
String dbPass="1234";
Connection con=DriverManager.getConnection(dbUrl, dbUser, dbPass);
//3단계 문자열 -> sql구문 변경
// select * from student where 조건열 = 값
String sql = "select * from student where num = ?";
PreparedStatement pstmt=con.prepareStatement(sql);
pstmt.setInt(1, num);

//4단계 sql구문 실행 => 실행결과 ResultSet 내장객체에 저장
ResultSet rs =pstmt.executeQuery();

//5단계 : if  행 접근 -> 데이터 있으면 true -> 열 접근 ->출력
if(rs.next()){
	%>
	<%=rs.getInt("num")%>
	<%=rs.getString("name")%>
	<%
}
%>
</body>
</html>

