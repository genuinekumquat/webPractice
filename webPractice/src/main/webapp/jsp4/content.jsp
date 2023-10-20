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
<title>jsp4/content.jsp</title>
</head>
<body>
<%
//세션에서 로그인정보 가져오기
String id=(String)session.getAttribute("id");
%>
<h1>글내용보기(로그인 : <%=id %>)</h1>
<%
// http://localhost:8080/webProject/jsp4/content.jsp?num=1
// num=1 사용자가 선택한 정보를 http가 들고와서 서버에 request 에 저장
// request num 가져와서 -> int num 변수에 저장
int num= Integer.parseInt(request.getParameter("num"));
//1단계 JDBC 프로그램 가져오기 
Class.forName("com.mysql.cj.jdbc.Driver");
// 2단계 디비 연결
String dbUrl="jdbc:mysql://localhost:3306/jspdb?serverTimezone=Asia/Seoul";
String dbUser="root";
String dbPass="1234";
Connection con=DriverManager.getConnection(dbUrl, dbUser, dbPass);

// 3단계 조회수 1증가 
// -> update board set readcount = readcount + 1 where num=?
String sql2 = "update board set readcount = readcount + 1 where num=?";
PreparedStatement pstmt2=con.prepareStatement(sql2);
pstmt2.setInt(1, num);
// 4단계 실행
pstmt2.executeUpdate();

// 3단계 문자열 -> sql구문 변경
//  select * from board where num=?
String sql = "select * from board where num=?";
PreparedStatement pstmt=con.prepareStatement(sql);
pstmt.setInt(1, num);
//4단계 sql구문 실행 => 실행결과 ResultSet 내장객체에 저장
ResultSet rs =pstmt.executeQuery();
//5단계 : if  행 접근 -> 데이터 있으면 true 
//     -> 글번호 글쓴이 글쓴날짜 조회수 글제목 글내용 출력
if(rs.next()){
	%>
<table border="1">
<tr><td>글번호</td><td><%=rs.getInt("num") %></td></tr>
<tr><td>글쓴이</td><td><%=rs.getString("name") %></td></tr>
<tr><td>글쓴날짜</td><td><%=rs.getTimestamp("date") %></td></tr>
<tr><td>조회수</td><td><%=rs.getInt("readcount") %></td></tr>
<tr><td>글제목</td><td><%=rs.getString("subject") %></td></tr>
<tr><td>글내용</td><td><%=rs.getString("content") %></td></tr>
<tr><td colspan="2">
<%
// 로그인 필수 
// 로그인, 글쓴이 일치하면 => 글수정 , 글삭제 버튼 보이기
if(id != null){
	if(id.equals(rs.getString("name"))){
		%>
<input type="button" value="글수정" onclick="location.href='update.jsp?num=<%=rs.getInt("num")%>'">
<input type="button" value="글삭제" onclick="location.href='delete.jsp?num=<%=rs.getInt("num")%>'">		
		<%
	}
}
%>
<input type="button" value="글목록" onclick="location.href='list.jsp'">
</td></tr>
</table>	
	<%
}
%>

</body>
</html>



