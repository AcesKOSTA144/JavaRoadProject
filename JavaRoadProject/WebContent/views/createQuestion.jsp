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
			<a href="qnaList.jsp">목록으로</a>
			<h3>New Question</h3>
			<br>
			<form action="${ctx }/WriteQuestion.do" method="post">
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
				
	
					
				<div align="center">
					<input class="btn" type="reset" value="취소">  
					<input class="btn btn-sucess" type="submit" value="등록">
				
				
				
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