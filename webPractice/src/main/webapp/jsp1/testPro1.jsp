<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp1/testPro1.jsp</title>
</head>
<body>
<h1>jsp1/testPro1.jsp</h1>
<!-- 요청주소: http://localhost:8080/webProject/jsp1/
                   testPro1.jsp?id=kim&num=5 -->
<!--      testPro1.jsp 보고싶다고 요청하면서 name = value -->
<!--       id=kim , num=5  값을 들고 서버에 요청하러감   
=> 1) 사용자가 전달한 내용을 서버에 저장하기 위해서 
        저장공간 만들기 
 request(사용자가 요청한 정보, id=kim , num=5  값이 저장),
 response(처리 결과 저장하는 응답 정보) 
  저장공간 만들기(객체생성,기억장소 할당)
=> 2) web.xml 무조건 참조(서버의 설정 정보 저장)
=> 3)  처리를 담당하는 담당자 지정(서블릿 기억장소 할당)
=>     .jsp => .java(html출력) 처리작업           

개발자가 request에 id=kim , num=5 값이 저장되어있다는 것을 알고 있고
request에서 그 값을 가져와서(request.getParameter()) 출력 = 명령
-->
<!-- // java,jsp 명령 = 출력 명령
java,jsp명령 1개 출력 ; 생략-->
아이디 : <%=request.getParameter("id")%><br>
좋아하는 숫자 : <%=request.getParameter("num") %><br>
</body>
</html>





