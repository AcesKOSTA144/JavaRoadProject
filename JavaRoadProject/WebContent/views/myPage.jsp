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
						<a href="index.jsp">자바로드</a>
					</h1>
					<span>걸어서 자바속으로</span>
				</div>
				<!-- Nav -->
				<nav id="nav">
					<div style="float: right;"><%@ include file="header.jspf"%></div>
					<p style="clear: both;"></p>
					<ul>
						<li><a href="index.jsp">코스</a></li>
						<li><a href="left-sidebar.html">코드 플레이그라운드</a></li>
						<li><a href="qnaList.jsp">Q&amp;A</a></li>
						<li><a
							href="${ctx }/member/ranking.do?memberId=${loginMember.memberId}">랭킹페이지</a></li>
						<li><a href="${ctx }/member/quizFactory.do?tag=for">quiz</a></li>
						<!-- <li><a href="login.jsp">Login</a></li> -->
					</ul>
				</nav>
			</header>
		</div>
	</div>
	<div id="banner-wrapper">
		<div id="banner" class="box container">
			<div class="row">
				<form action="${ctx }/member/myPage.do" method="post">
					<table>
						<tr>
							<td><h2>"${member.nickname }"&nbsp;&nbsp;님의 정보입니다.</h2></td>
							<td></td>
							<td></td>
							<td></td>

						</tr>
						<tr>
							<td colspan="4"><hr></td>
						</tr>

					</table>
					<table>

						<tr>
							<td><h1>아이디</h1></td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
							<td><h1>${member.memberId }</h1></td>
							<c:choose>
								<c:when test="${member.currentProgress eq '29'}">
									<td rowspan="3" style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/Certification.jpg" width="130px"></td>
								</c:when>
								<c:otherwise>
									<td rowspan="3" style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/Certificationblack.jpg"
										width="130px"></td>
								</c:otherwise>
							</c:choose>
						</tr>
						<tr>
							<td><h1>보유한 포인트</h1></td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
							<td><h1>${member.point }</h1></td>
						</tr>
						<tr>
							<td><h1>개인 랭크</h1></td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
							<td><h1>${rank }</h1></td>
						</tr>

					</table>
					<hr>
					<table>
						<tr>
							<td><h1>학습 진도</h1></td>



							<c:choose>
								<c:when test="${member.currentProgress eq '0'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar00.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.currentProgress eq '1'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar01.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.currentProgress eq '2'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar02.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.currentProgress eq '3'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar03.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.currentProgress eq '4'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar04.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.currentProgress eq '5'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar05.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.currentProgress eq '6'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar06.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.currentProgress eq '7'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar07.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.currentProgress eq '8'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar08.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.currentProgress eq '9'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar09.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.currentProgress eq '10'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar10.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.currentProgress eq '11'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar11.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.currentProgress eq '12'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar12.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.currentProgress eq '13'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar13.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.currentProgress eq '14'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar14.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.currentProgress eq '15'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar15.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.currentProgress eq '16'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar16.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.currentProgress eq '17'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar17.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.currentProgress eq '18'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar18.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.currentProgress eq '19'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar19.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.currentProgress eq '20'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar20.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.currentProgress eq '21'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar21.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.currentProgress eq '22'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar22.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.currentProgress eq '23'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar23.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.currentProgress eq '24'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar24.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.currentProgress eq '25'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar25.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.currentProgress eq '26'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar26.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.currentProgress eq '27'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar27.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.currentProgress eq '28'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar28.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.currentProgress eq '29'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar29.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.currentProgress eq '30'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar30.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.currentProgress eq '31'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar31.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:otherwise>
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar32.jpg" width="260"
										height="17"></td>
								</c:otherwise>
							</c:choose>

							<td></td>
						</tr>
						<tr>
							<td colspan="3"></td>
						</tr>

						<tr>
							<td style="vertical-align: middle;"><h1>학습 목표</h1></td>

							<c:choose>
								<c:when test="${member.goalProgress eq '0'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar00.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.goalProgress eq '1'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar01.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.goalProgress eq '2'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar02.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.goalProgress eq '3'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar03.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.goalProgress eq '4'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar04.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.goalProgress eq '5'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar05.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.goalProgress eq '6'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar06.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.goalProgress eq '7'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar07.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.goalProgress eq '8'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar08.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.goalProgress eq '9'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar09.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.goalProgress eq '10'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar10.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.goalProgress eq '11'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar11.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.goalProgress eq '12'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar12.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.goalProgress eq '13'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar13.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.goalProgress eq '14'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar14.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.goalProgress eq '15'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar15.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.goalProgress eq '16'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar16.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.goalProgress eq '17'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar17.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.goalProgress eq '18'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar18.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.goalProgress eq '19'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar19.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.goalProgress eq '20'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar20.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.goalProgress eq '21'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar21.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.goalProgress eq '22'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar22.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.goalProgress eq '23'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar23.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.goalProgress eq '24'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar24.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.goalProgress eq '25'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar25.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.goalProgress eq '26'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar26.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.goalProgress eq '27'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar27.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.goalProgress eq '28'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar28.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.goalProgress eq '29'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar29.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.goalProgress eq '30'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar30.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:when test="${member.goalProgress eq '31'}">
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar31.jpg" width="260"
										height="17"></td>
								</c:when>
								<c:otherwise>
									<td style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
										src="${ctx }/images/myPage/bar/bar32.jpg" width="260"
										height="17"></td>
								</c:otherwise>
							</c:choose>

							<td></td>
						</tr>
						<tr>
							<td><h1>이전 목표설정 시간</h1></td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${member.timeLimit }</td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
						</tr>
					</table>
					<hr>
					<table>
						<tr>
							<td></td>
							<td></td>
							<td><button type="button"
									onclick="location.href='${ctx }/member/ModifyMember.do?memberId=${member.memberId }'"
									class="btn">회원정보 수정및 목표 설정</button></td>
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