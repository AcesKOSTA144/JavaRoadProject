<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="ctx">${pageContext.request.contextPath }</c:set>
    
<!DOCTYPE html>
<!--
	Verti by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>JavaRoad - MyCodeList</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="${ctx }/css/main.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
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
								<h1><a href="${ctx }/views/main.jsp">자바로드</a></h1>
								<span>걸어서 자바속으로</span>
							</div>

						<!-- Nav -->
							<nav id="nav">
								<ul>
									<li><a href="#">코스</a></li>
									<li class="current"><a href="${ctx }/codeList.do">코드 플레이그라운드</a></li>
									<li><a href="right-sidebar.html">Q&amp;A</a></li>
									<li><a href="no-sidebar.html">랭킹페이지</a></li>
								</ul>
							</nav>
					</header>
				</div>
		</div>
			<!-- Features -->
			<div id="main-wrapper">
				<div class="container">
					<div id="content">
						<div class="container-fluid">
							<div class="row">
								<div class="col-md-12">
									<footer>
										<a href="${ctx }/views/codeRun.jsp" class="button icon fa fa-code">New Code</a>
										<a href="myCodeList.do" class="button icon fa fa-camera-retro">내 코드보기</a>
									</footer>
									<h1></h1>
									<h1></h1>
									<table class="table table-hover table-condensed">
										<colgroup>
											<col width="80" align="center">
											<col width="40%">
											<col width="80">
											<col width="50">
											<col width="8%">
										</colgroup>
										<thead>
											<tr>
												<th>태그명</th>
												<th>코드 제목</th>
												<th>닉네임</th>
												<th>추천수</th>
												<th></th>
											</tr>
										</thead>
										<tbody>
											<c:choose>
												<c:when test="${Codes eq null || empty Codes }">
													<tr>
														<td colspan="6" align="center">등록된 코드가 없습니다. </td>
													</tr>
												</c:when>
												<c:otherwise>
													<c:forEach items="${Codes}" var="code" varStatus="status">
														<tr>
															<td>${status.count }</td>
															<td><a href="#">${code.title }</a></td>
															<td>${code.memberNickname }</td>
															<td align="left">${code.likes }
															</td>
															<td>
															<a class="btn btn-xs btn-danger" href="deleteCode.do?id=${code.id }">DELETE</a>
															</td>
														</tr>
													</c:forEach>
												</c:otherwise>
					                        </c:choose>
										</tbody>
									</table>
									<c:if test="${isAdmin }">
									<a class="btn btn-sm btn-success" href="registerForm.jsp">강좌등록</a>
									</c:if>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		<!-- Footer -->
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