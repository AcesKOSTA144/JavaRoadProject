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
		<title>JavaRoad</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="${ctx }/css/main.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	</head>
	<body class="homepage">
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header-wrapper">
					<header id="header" class="container">

						<!-- Logo -->
							<div id="logo">
								<h1><a href="#">자바로드</a></h1>
								<span>걸어서 자바속으로</span>
							</div>

						<!-- Nav -->
							<nav id="nav">
							<div style = "float: right"><%@ include file="header.jspf"%></div><p style = "clear:both;"></p>
								<ul>
									<li><a href="#">코스</a></li>
									<li><a href="${ctx }/codeList.do">코드 플레이그라운드</a></li>
									<li><a href="right-sidebar.html">Q&amp;A</a></li>
									<li><a href="no-sidebar.html">랭킹페이지</a></li>
								</ul>
							</nav>
							<div></div><p style = "clear:both;"></p>
					</header>
				</div>
		</div>
			<!-- Banner -->
				<div id="banner-wrapper">
					<div id="banner" class="box container">
						<div class="row">
							<div class="7u 12u(medium)">
								<h2>자바로드</h2>
								<p>걸어서 자바속으로..</p>
							</div>
							<div class="5u 12u(medium)">
								<ul>
									<li><a href="#" class="button big icon fa-arrow-circle-right">학습시작</a></li>
									<li><a href="#" class="button alt big icon fa-question-circle">More info</a></li>
								</ul>
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