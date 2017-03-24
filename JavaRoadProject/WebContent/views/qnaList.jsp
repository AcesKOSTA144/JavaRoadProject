<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.sql.*" %>
<c:set var="ctx">${pageContext.request.contextPath }</c:set>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JavaRoad</title>

<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="${ctx }/css/main.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link href="${ctx }/css/bootstrap.min.css" rel="stylesheet">
		<link href="${ctx }/css/style.css" rel="stylesheet">
</head>
<body class="homepage">
	<div id="page-wrapper">

		<!-- Header -->
		<div id="header-wrapper">
			<header id="header" class="container">

				<!-- Logo -->
				<div id="logo">
					<h1>
						<a href="index.jsp">자바로드</a>
					</h1>
					<span>걸어서 자바속으로</span>
				</div>

				<!-- Nav -->
				<nav id="nav">
							<div style = "float:right;"><%@ include file="header.jspf"%></div>
							<p style = "clear:both;"></p>
					<ul>
						<li class="current"><a href="index.jsp">코스</a></li>
						<li><a href="left-sidebar.html">코드 플레이그라운드</a></li>
						<li><a href="${ctx }/QnAList.do">Q&amp;A</a></li>
						<li><a href="${ctx }/member/ranking.do?memberId=${member.memberId}">랭킹페이지</a></li>
					</ul>
				</nav>
			</header>
		</div>
	</div>
		<div id="banner-wrapper">
		
		<div id="banner" class="box container">
			<div class="row">
				<div class="col-md-12">
					<div class="table-responsive">
					<footer>
						<form action="QnASearch.do" method="post">
						<div style="float:right; width:300px; height:100px;" >
							<input type="text" name="name" placeholder="검색어를 입력하세요" style="width:80%; display:inline-block;">
							<button type="submit" class="btn btn-success">검색</button>
						</div>
						</form>
					</footer>
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
						<thead>
							<tr>
								<td style="float: middle" width="400">태그</td>
								<td style="float: middle" width="400">제목</td>
								<td style="float: middle" width="400">닉네임</td>
								<td style="float: middle" width="400">작성시간</td>
							</tr>
						</thead>
						<tbody>
						<c:choose>
							<c:when test="${questions eq null || empty questions }">
							<tr>
								<td colspan="7" align="center">등록된 질문이 없습니다.</td>
							</tr>
							 </c:when>
							 <c:otherwise>
							 	<c:forEach items="${questions }" var="question" varStatus="status">
							 	<fmt:formatDate var="newFormattedDate" value="${question.timeLimit }"
							 	pattern="yyyy-MM-dd HH:mm:ss"/>
								<tr>
									<td>${question.tag }</td>
									<td><a href="${ctx }/QnADetail.do?questionId=${question.questionId }">${question.title }</a></td>
									<td>${question.nickname}</td>
									<td>${newFormattedDate }</td>
								</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
						</tbody>
					</table>
					<button type="button" 
					onclick="location.href='${ctx}/views/createQuestion.jsp'" class="btn">질문 등록</button>
					</div>
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
		<script src="${ctx }/js/main.js"></script>
</body>
</html>