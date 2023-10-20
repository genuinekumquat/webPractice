<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp1/for.jsp</title>
</head>
<body>
<%-- <% jsp주석 %> --%>
<%
// java,jsp명령
/* 
java
주석
*/

int a[] = new int[5];
// System.out.println("콘솔 배열 주소 출력 "+a);
//웹 출력		
out.println("웹 배열 주소 출력 "+a);

a[0] = 10;
a[1] = 20;
a[2] = 30;
a[3] = 40;
a[4] = 50;
out.println("<br>");
out.println("배열 크기 "+a.length);
out.println("<br>");

for(int i=0; i< a.length; i++){
	out.println(a[i]+"<br>");
}

for(int i=0; i< a.length; i++){
	%>
	<%=a[i] %><br>
	<%
}

//문자열 배열 hobby  크기 3
String hobby[] = new String[3];
// 배열 값을 저장  "여행", "게임", "축구"
hobby[0] = "여행";
hobby[1] = "게임";
hobby[2] = "축구";

String h[] = {"여행", "게임", "축구"};

// 배열 크기 출력 
out.println(hobby.length+"<br>");
// for 배열 내용 출력
for(int i=0;i<hobby.length;i++){
	out.println(hobby[i]+"<br>");
}
for(int i=0;i<hobby.length;i++){
%>
	<%=hobby[i]%><br>
<%
}
%>
</body>
</html>




