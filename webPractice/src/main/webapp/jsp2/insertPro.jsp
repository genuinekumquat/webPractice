<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp2/insertPro.jsp</title>
</head>
<body>
<h1>서버에 가져온 학생정보를 출력</h1>
<%
//http://localhost:8080/webProject/jsp2/
//     insertPro.jsp?num=1&name=홍길동
//http 사용자가 들고온 정보를 =>  서버 저장공간 request에 저장

// request에 저장된 값 중에 한글 포함되어 있으면 한글 설정 명령
request.setCharacterEncoding("utf-8");
// request에서 num=1 ,name=홍길동  가져오는 명령 => 변수에 저장
String snum = request.getParameter("num");
String name = request.getParameter("name");
//문자열을 정수형으로 변환
int num = Integer.parseInt(snum);
// 변수 출력

%>
학생번호 : <%=num %><br>
학생이름 : <%=name %><br>
<%
//데이터베이스 연결 => jspdb데이터베이스 student테이블 저장
// JDBC : 자바와 데이터베이스 연결하는 프로그램 설치
// webapp - WEB-INF - lib - mysql-connector-java-8.0.17.jar
// 1단계 : 설치한 프로그램에서 Driver.class 자바실행파일 가져오기
// com\mysql\cj\jdbc  Driver.class
Class.forName("com.mysql.cj.jdbc.Driver");
// 2단계 : 데이터베이스 연결 => 연결정보를 저장하는 변수에 저장
// (DriverManager가 Driver를 이용해서 디비연결)
// 디비연결 할 주소(Mysql에서 제공하는 주소)
String dbUrl="jdbc:mysql://localhost:3306/jspdb?serverTimezone=Asia/Seoul";
String dbUser="root";
String dbPass="1234";
Connection con=DriverManager.getConnection(dbUrl, dbUser, dbPass);
// 3단계 : SQL구문 만들기 insert,update,delete,select
// String sql = "insert into student(num,name) values(1,'홍길동')";
// String sql = "insert into student(num,name) values("+num+",'"+name+"')";
String sql = "insert into student(num,name) values(?,?)";
// 문자열 -> SQL구문 변경
// (con 연결정보를 이용해서 prepareStatement호출하면 
//  문자열 -> SQL구문 변경하는 PreparedStatement 프로그램 생성 )
PreparedStatement pstmt=con.prepareStatement(sql);
// 미완성 인식 => ?에 값을 넣기 
pstmt.setInt(1, num);      //(물음표 순서,값)
pstmt.setString(2, name);  // setString 자동으로 'name' 붙음
		
// 4단계 : SQL구문 실행 => 결과 저장
pstmt.executeUpdate();
// 5단계 : 결과 출력, 저장
// 마무리 단계
%>
연결성공<%=con %><br>
sql구문실행 <%=pstmt %><br>
<%
// cmd
// mysql -uroot -p1234 jspdb
// select * from student;
%>
</body>
</html>


