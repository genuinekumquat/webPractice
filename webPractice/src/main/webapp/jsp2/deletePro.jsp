<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp2/deletePro.jsp</title>
</head>
<body>
<%
//사용자가 입력한 정보를 http가 들고와서 서버에 request 에 저장
//request 한글처리
request.setCharacterEncoding("utf-8");
// request num, name 가져와서 -> 변수에 저장
int num = Integer.parseInt(request.getParameter("num"));
String name = request.getParameter("name");
// 1단계 JDBC 프로그램 가져오기
Class.forName("com.mysql.cj.jdbc.Driver");
// 2단계 디비 연결
String dbUrl="jdbc:mysql://localhost:3306/jspdb?serverTimezone=Asia/Seoul";
String dbUser="root";
String dbPass="1234";
Connection con=DriverManager.getConnection(dbUrl, dbUser, dbPass);
// 3단계 문자열 -> sql구문 변경
//       delete from 테이블이름 where num = 값 and name = 값
String sql = "delete from student where num = ? and name = ?";
PreparedStatement pstmt=con.prepareStatement(sql);
pstmt.setInt(1, num);      //(물음표 순서,값)
pstmt.setString(2, name);  // setString 자동으로 'name' 붙음

// 4단계 sql구문 실행
pstmt.executeUpdate();
%>
sql구문실행 <%=pstmt %><br>
</body>
</html>