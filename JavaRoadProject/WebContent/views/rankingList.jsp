<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${ctx }/css/main.css">
<title>JavaRoadProject</title>
</head>
<body>

	<div id="page-wrapper">

		<!-- Header -->
		<div id="header-wrapper">

			<header id="header" class="container">

				<!-- Logo -->
				<div id="logo">
					<h1>
						<a href="${ctx }/views/index.jsp">자바로드</a>
					</h1>
					<span>걸어서 자바속으로</span>
				</div>

				<!-- Nav -->
				<nav id="nav">
					<div style="float: right;"><%@ include file="header.jspf"%></div>
					<p style="clear: both;"></p>
					<ul>
						<li class="current"><a href="${ctx }/views/index.jsp">코스</a></li>
						<li><a href="left-sidebar.html">코드 플레이그라운드</a></li>
						<li><a href="right-sidebar.html">Q&amp;A</a></li>
						<li><a href="${ctx }/member/ranking.do?memberId=${loginMember.memberId}">랭킹페이지</a></li>
						<!-- <li><a href="login.jsp">Login</a></li> -->
					</ul>
				</nav>
			</header>
		</div>
	</div>


	<div id="banner-wrapper">
		<div id="banner" class="box container">
			<div class="row">
				<form action="${ctx }/member/login.do" method="post">
					<table class="table table-hover table-condensed">

						<thead>
							<tr>
								<td colspan="3"><hr></td>
							</tr>
							<tr>
								<td style="float: middle" width="100">순위</td>
								<td style="float: middle" width="600">닉네임</td>
								<td style="float: middle" width="200">보유 포인트</td>
							</tr>
							<tr>
								<td colspan="3"><hr></td>
							</tr>
						</thead>
						<tbody>
							<c:if test="${loginMember.memberId eq member.memberId}">
								<tr>
									<td>${rank }</td>
									<td>${member.nickname }</td>
									<td>${member.point }</td>
								</tr>
							</c:if>
							<tr>
								<td colspan="3"><hr></td>
							</tr>

							<c:choose>
								<c:when test="${rankList eq null ||empty rankList }">
									<tr>
										<td colspan="6" align="center">등록된 맴버가 없습니다.</td>
									</tr>
								</c:when>
								<c:otherwise>
									<c:forEach items="${rankList}" var="member" varStatus="status">
										<tr>
											<td>${status.count}</td>
											<td>${member.nickname}</td>
											<td>${member.point }</td>
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</tbody>
					</table>

				</form>
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
</body>