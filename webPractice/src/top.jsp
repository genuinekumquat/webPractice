<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<head>
<style type="text/css">

/*  전체영역  밖여백 0, 안여백 0, box-sizing : border-box */
*{
	margin: 0px; padding: 0px; box-sizing: border-box;
}
/* a 밑줄 없앰 */
a{
	text-decoration: none;
}
/* ul 목록 스타일 none */
ul{
	list-style-type: none;
}
/* id="container" 밖여백 위아래 0px 왼쪽오른쪽 가운데 auto
   배경색 흰색 , 너비 1200px*/
#container{
	margin: 0px auto;  background-color: white; width: 1200px;
}   
/*   header   너비 100%, 높이 100px, 배경색 #045  */
header{
	width: 100%; height: 100px; background-color: #045;
}
/* id="logo" 너비 250px, 높이 100px, 줄간격 100px, 안 왼쪽여백 20px
   왼쪽으로 어울림 */
#logo{
	width: 250px; height: 100px; line-height: 100px; padding-left: 20px;
	float: left;
}   
/* id="logo" h1  글자굵기 700, 글자크기 40px, 글자색 흰색, 
   text-shadow : 0 -1px 0 #222 */
#logo h1{
	font-weight: 700; font-size: 40px; color: white;
	text-shadow: 0 -1px 0 #222;
}   
/*  nav  너비 900px, 높이 100px, 안 위쪽여백 40px, 오른쪽으로 어울림   */
nav{
	width: 900px; height: 100px; padding-top: 40px; float: right;
}
/* id="topMenu" 높이 60px   */
#topMenu{
	height: 60px;
}
/* id="topMenu" li 왼쪽으로 어울림, position:relative */
#topMenu li{
	float: left; position: relative;
}
/* id="topMenu" li a display : block, 글자크기 1.1em, 글자색 흰색,
   글자 굵기 600,  안여백 위아래 20px 왼오른 60px, */
 #topMenu li a {
 	display:block;
 	font-size: 1.1em; color: white; font-weight: 600; padding: 20px 60px;
 }  
/*  id="topMenu" li a:hover  글자색 #1fa8f8, text-shadow:0 -2px #222  */
#topMenu li a:hover {
	color: #1fa8f8;
	text-shadow: 0 -2px #222;
}

</style>
</head>
     <div id="container">
<header>
		<div id="logo">
			<a href="test8.html"><h1>Dream Jeju</h1></a>
		</div>
		<nav>
			<ul id="topMenu">
				<li><a href="test1.html">단체 여행</a></li>
				<li><a href="test2.html">맞춤 여행</a></li>
				<li><a href="test3.html">갤러리</a></li>
				<li><a href="test4.html">문의하기</a></li>
			</ul>
		</nav>
	</header>
	</div>