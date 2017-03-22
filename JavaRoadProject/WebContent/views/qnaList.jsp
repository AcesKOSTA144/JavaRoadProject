<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.sql.*" %>
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
					<h1>
						<a href="index.html">자바로드</a>
					</h1>
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

		<!-- Banner -->
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h3>Question and Answer</h3>
					</div>
					
					<div class="table-responsive">
					<table class="table table-striped table-bordered table-hover">
						<colgroup>
							<col width="100" />
							<col width="200" />
							<col width="100" />
							<col width="200" />
							<col width="200" />
							<col width="*" />
							<col width="100" />
						</colgroup>
						<thead><br><br>
							<tr>
								<th class="text-center">번호</th>
								<th class="text-center">제목</th>
								<th class="text-center">닉네임</th>
								<th class="text-center">작성시간</th>
								
							</tr>
						</thead>
						<tbody>
						<c:choose>
							<c:when test="${questions eq null || empty questions }">
							<tr>
								<th colspan="7" class="text-center">등록된 질문이 없습니다.</th>
							</tr>
							 </c:when>
							 <c:otherwise>
							 	<c:forEach items="${questions }" var="question" varStatus="sts">
								<tr>
					
									<td class="text-center">${sts.count }</td>
									<td class="text-center">${question.title }</td>
									<td><a href="QnADetail.do?id=${question.id }">${question.title }</a></td>
									<td class="text-center">${question.member_nickname}</td>
																		
								</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
						</tbody>
					</table>
					<a class="btn btn-sm btn-success" href ="createQuestion.jsp">질문 등록</a>
									
					</div>
									
 
				</div>

			</div>

		</div>


		<!-- Features -->
		<div id="features-wrapper">
			<div class="container">
				<div class="row">
					<div class="4u 12u(medium)"></div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="12u">
				<div id="copyright">
					<ul class="menu">
						<li>&copy; JavaRoad All rights reserved</li>
						<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
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