<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp3/list.jsp</title>
</head>
<body>
<h1>회원목록</h1>
<%
//세션에서 로그인 정보를 가져오기
String id=(String)session.getAttribute("id");

if(id == null){
	//로그인 안함
	response.sendRedirect("login.jsp");
}else{
	//로그인 함 => admin이 아니면 main.jsp
	if(!(id.equals("admin"))){
		response.sendRedirect("main.jsp");
	}
}


//1단계 JDBC 프로그램 가져오기 
Class.forName("com.mysql.cj.jdbc.Driver");
// 2단계 디비 연결
String dbUrl="jdbc:mysql://localhost:3306/jspdb?serverTimezone=Asia/Seoul";
String dbUser="root";
String dbPass="1234";
Connection con=DriverManager.getConnection(dbUrl, dbUser, dbPass);

// 3단계 문자열 -> sql구문 변경
//  select * from members 
String sql = "select * from members";
PreparedStatement pstmt=con.prepareStatement(sql);
//4단계 sql구문 실행 => 실행결과 ResultSet 내장객체에 저장
ResultSet rs =pstmt.executeQuery();
%>
<table border="1">
<tr><td>아이디</td><td>비밀번호</td><td>이름</td><td>가입날짜</td></tr>
<%
//5단계 : while  행 접근 -> 데이터 있으면 true 
//-> 아이디 비밀번호 이름 가입날짜 출력
while(rs.next()){
	%>
<tr><td><%=rs.getString("id") %></td>
    <td><%=rs.getString("pass") %></td>
    <td><%=rs.getString("name") %></td>
    <td><%=rs.getTimestamp("date") %></td></tr>	
	<%
}
%>

</table>
</body>
</html>



