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

					<table border="1">
						<tr>
							<td style="vertical-align: middle"><h1>로그인</h1><br></td>
							<td>&nbsp;&nbsp;&nbsp;</td>
							<td></td>

						</tr>
						<tr>
							<td style="vertical-align: middle"><h1>아이디</h1></td>
							<td>&nbsp;&nbsp;&nbsp;</td>
							<td style="vertical-align: middle"><input type="text"
								name="memberId" size="70" value="${memberId }"
								style="border-right: #ff0000 1px solid; border-left: #00ff00 1px solid; border-top: #ffff00 1px solid; border-bottom: #0000ff 1px solid;">
							</td>

						</tr>
						<tr>
							<td><br></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td style="vertical-align: middle"><h1>비밀번호</h1></td>
							<td>&nbsp;&nbsp;&nbsp;</td>
							<td style="vertical-align: middle"><input type="password"
								name="password" size="70" value="" 
								style="border-right: #ff0000 1px solid; border-left: #00ff00 1px solid; border-top: #ffff00 1px solid; border-bottom: #0000ff 1px solid;"></td>

						</tr>
						<tr>
							<td><br></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td></td>
							<td></td>
							<td style="vertical-align: middle"><label><input
									type="checkbox" value="Y" name="saveIdYn"
									<c:if test= "${memberId != null }">checked</c:if>>아이디
									저장</label>
									<button type="button"
									onclick="location.href='${ctx}/views/newMember.jsp'"
									class="btn">사용자등록</button>
								<button type="submit" class="btn">로그인</button>
							</td>
						</tr>
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
	
	<!-- Scripts -->
			<script src="${ctx }/js/jquery.min.js"></script>
			<script src="${ctx }/js/jquery.dropotron.min.js"></script>
			<script src="${ctx }/js/skel.min.js"></script>
			<script src="${ctx }/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="${ctx }/js/main.js"></script>
</body>


</html>