<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx">${pageContext.request.contextPath }</c:set>
<!DOCTYPE html>

<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>JavaRoad</title>
		
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="${ctx }/css/main.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="${ctx }/css/ie8.css" /><![endif]-->
	</head>
	<body class="homepage">
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header-wrapper">
					<header id="header" class="container">

						<!-- Logo -->
							<div id="logo">
								<h1><a href="index.html">자바로드</a></h1>
								<span>걸어서 자바속으로</span>
							</div>

						<!-- Nav -->
							<nav id="nav">
								<ul>
									<li class="current"><a href="index.html">코스</a></li>
									<li><a href="left-sidebar.html">코드 플레이그라운드</a></li>
									<li><a href="qnaList.jsp">Q&amp;A</a></li>
									<li><a href="no-sidebar.html">랭킹페이지</a></li>
								</ul>
							</nav>
					</header>
				</div>

			<input id="id" name="id" type="hidden" value="">
			<a href="QnAList.do">목록으로</a>
			<h3>New Question</h3>
			<br>
			<form action="WriteQuestion.do" method="post">
				<table class="table">
					<colgroup>
				<col width="150">
				<col width="*">
					</colgroup>
					
					<tr>
					<th>제목</th>
					<td><input id="title" name="title"
					class="form-control" type="text" value=""></td>
					</tr>
					
					<tr>
					<th>내용</th>
					<td><textarea id="contents" name="contents"
					class="form-control" rows="7"></textarea>
					</tr>
					
					<tr>
					<th>태그</th>
					<td><input id="tag" name="tag"
					class="form-control" type="text" value=""></td>
					</tr>
					
										
				</table>
				
				<scRIPT language="Javascript">

function firstChange() {
 var x = document.form.first.options.selectedIndex;
 var groups=document.form.first.options.length;
 var group=new Array(groups);
 for (i=0; i<groups; i++)
  group[i]=new Array();
 
 group[0][0]=new Option("대분류를 먼저 선택하세요","");
 group[1][0]=new Option("컴퓨터 회사 선택","");
 group[1][1]=new Option("삼성","ss");
 group[1][2]=new Option("대우","dw");
 group[1][3]=new Option("엘지","lg");
 group[2][0]=new Option("프린터 회사 선택","");
 group[2][1]=new Option("엡손","epson");
 group[2][2]=new Option("휴랫팩커드","hp");
 
 temp = document.form.second;
 for (m = temp.options.length-1 ; m > 0 ; m--)
  temp.options[m]=null
 for (i=0;i<group[x].length;i++){
  temp.options[i]=new Option(group[x][i].text,group[x][i].value)
 }
 temp.options[0].selected=true
}
function secondChange() {
 var first = document.form.first.options.selectedIndex;
 var x = document.form.second.options.selectedIndex;
 var groups=document.form.second.options.length;
 var group=new Array(groups);
 for (i=0; i<groups; i++)
  group[i]=new Array();
 if(first == 1) {
  group[0][0]=new Option("중분류를 먼저 선택하세요","");
  group[1][0]=new Option("삼성컴퓨터 선택","");
  group[1][1]=new Option("섬성 팬티엄III","ss3");
  group[1][2]=new Option("삼성 팬티엄IV","ss4");
  group[1][3]=new Option("삼성 센스 노트북","ssnote");
  group[2][0]=new Option("대우 컴퓨터 선택","");
  group[2][1]=new Option("대우 데스크탑 프로","dw");
  group[3][0]=new Option("엘지 컴퓨터 선택","");
  group[3][1]=new Option("LG IBM PC","lgpc");
  group[3][2]=new Option("LG IBM NOTEBOOK ","lgnote");
 } else if(first == 2) {
  group[0][0]=new Option("중분류를 먼저 선택하세요","");
  group[1][0]=new Option("엡손 프린터 선택","");
  group[1][1]=new Option("엡손 잉크","epson_ink");
  group[1][2]=new Option("엡손 레이져","epson_laser");
  group[2][0]=new Option("휴렛캑커드 프린터 선택","");
  group[2][1]=new Option("HP 잉크젯","hp_ink");
  group[2][2]=new Option("HP 레이져젯","hp_laser");
 }
 
 temp = document.form.third;
 for (m = temp.options.length-1 ; m > 0 ; m--)
  temp.options[m]=null
 for (i=0;i<group[x].length;i++){
  temp.options[i]=new Option(group[x][i].text,group[x][i].value)
 }
 temp.options[0].selected=true
}

</scRIPT>
</head>
 
<body>
<form name="form">
<select name=first onchange="firstChange();" size=1>
<OPTION value=''>대분류</OPTION>
<OPTION value=''>컴퓨터</OPTION>
<OPTION value=''>프린터</OPTION>
 
</SELECT>
<SELECT name=second onchange="secondChange();" size=1>
 <OPTION value=''>대분류를 먼저 선택하세요</OPTION>
</SELECT>
<SELECT name=third size=1>
 <OPTION value=''>중분류를 먼저 선택하세요</OPTION>
</SELECT>
				
						
				
						
					
					</select>
				<div align="center">
					<input class="btn" type="reset" value="취소">  <input 
					class="btn btn-sucess" type="submit" value="등록">
				
				
				
				</div>
							
			</form>
				<br>
							<!-- Features -->
				<div id="features-wrapper">
					<div class="container">
						<div class="row">
							<div class="4u 12u(medium)">

							

							</div>
						</div>
					</div>
				</div>

						<div class="row">
							<div class="12u">
								<div id="copyright">
									<ul class="menu">
										<li>&copy; JavaRoad All rights reserved</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
									</ul>
								</div>
							</div>
						</div>

		<!-- Scripts -->

			<script src="${ctx }/js/jquery.min.js"></script>
			<script src="${ctx }/js/jquery.dropotron.min.js"></script>
			<script src="${ctx }/js/skel.min.js"></script>
			<script src="${ctx }/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="${ctx }/js/main.js"></script>

	</body>
</html>