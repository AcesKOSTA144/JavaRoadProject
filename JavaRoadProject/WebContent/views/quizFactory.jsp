<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="ctx">${pageContext.request.contextPath }</c:set>

<!DOCTYPE html>
<!--
	Verti by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>JavaRoad - CodeList</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="${ctx }/css/main.css" />
<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="${ctx }/css/btn.css"> 
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
					<div style="float: right;"><%@ include file="header.jspf"%></div>
					<p style="clear: both;"></p>
					<ul>
						<li><a href="index.jsp">코스</a></li>
						<li><a href="left-sidebar.html">코드 플레이그라운드</a></li>
						<li><a href="qnaList.jsp">Q&amp;A</a></li>
						<li><a
							href="${ctx }/member/ranking.do?memberId=${loginMember.memberId}">랭킹페이지</a></li>
						<!-- <li><a href="login.jsp">Login</a></li> -->
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

							<table class="table table-hover table-condensed">

								<thead>
									<tr>
										<td colspan="5"><h2>New Quiz</h2></td>
										<td colspan="2" align="right"><h2>태그명 :${tag}</h2></td>
									</tr>
									<tr>

										<td colspan="7"><div align="right">
												<select id="sort" name="sort"
													style="border-right: #ff0000 1px solid; border-left: #00ff00 1px solid; border-top: #ffff00 1px solid; border-bottom: #0000ff 1px solid;">
													<option value="#">추천순</option>
													<option value="#">내 퀴즈</option>
												</select>
											</div></td>
									</tr>
									<tr>

													<td colspan="7"><hr></td>

												</tr>
								</thead>
								<tbody>
									<c:choose>
										<c:when test="${quizs eq null || empty quizs }">
											<tr>
												<td colspan="5" align="center">등록된 코드가 없습니다.</td>
											</tr>
										</c:when>
										<c:otherwise>
											<c:forEach items="${quizs}" var="quiz" varStatus="status">
												<tr>
													<td><h1>${status.count }&nbsp;&nbsp;&nbsp;${quiz.title }</h1></td>
													<td colspan="4"></td>

													<td><c:if
															test="${quiz.member.memberId eq loginMember.memberId}">
															<a class="button_delete"
																href="deleteQuiz.do?id=${quiz.id }">삭제</a>
														</c:if></td>
													<td><a class="button_report"
														href="deleteQuiz.do?id=${quiz.id }">신고하기</a></td>
												</tr>
												<tr>
													<td rowspan="3"><textarea id="question"
															style="border-right: #ff0000 1px solid; border-left: #00ff00 1px solid; border-top: #ffff00 1px solid; border-bottom: #0000ff 1px solid;"
															name="question" class="form-control" rows="4" cols="100"
															readonly>${quiz.question }</textarea></td>
															<td colspan="3"></td>
													<td rowspan="3" width="100" style="vertical-align: middle"
														align="right"><h1>
															작성자 :<br>작성 날짜 :
														</h1></td>
													<td rowspan="3" width="200" style="vertical-align: middle"
														align="right"><h1>${quiz.member.nickname }<br>${quiz.timeStemp }</h1></td>

												</tr>

												<tr>



												</tr>
												<tr>
												</tr>
												<tr>
													<td rowspan="4"><form action="#.do" method="POST">

															<input type="radio" name="options" value="option1" />${quiz.option1 }<br />
															<input type="radio" name="options" value="option2" />${quiz.option2 }<br />
															<input type="radio" name="options" value="option3" />${quiz.option3 }<br />
															<!-- <input type="submit" /> -->
															<!-- *정답맞는지확인구현  -->
														</form></td>
														<td colspan="3"></td>
													<td rowspan="3" align="right" style="vertical-align: middle"><a
														class="fa fa-caret-square-o-up"
														href="modifyCode.do?uid=${quiz.id }"></a></td>
													<td rowspan="3" align="center"><h2>${quiz.likes }</h2></td>
													<td rowspan="3" align="left" style="vertical-align: middle"><a class="fa fa-caret-square-o-down"
														href="modifyCode.do?did=${quiz.id }"></a></td>

												</tr>
												<tr>

													<td rowspan="3"></td>
													<td rowspan="3"></td>

												</tr>
												<tr>

													<td></td>
													<td></td>
												</tr>
												<tr>

													<td colspan="7"><hr></td>

												</tr>
												<tr>

													<td colspan="7"><hr></td>

												</tr>
											</c:forEach>
										</c:otherwise>
									</c:choose>
								</tbody>
							</table>



							<hr>



							<form action="${ctx}/quiz/registerQuiz.do" method="POST">
								<table class="table table-hover table-condensed">

									<tr>
										<td colspan="3"><h2>New Quiz</h2></td>
									</tr>
									<tr>
										<td colspan="3"><textarea id="question" name="question"
												class="form-control" rows="4"
												style="border-right: #ff0000 1px solid; border-left: #00ff00 1px solid; border-top: #ffff00 1px solid; border-bottom: #0000ff 1px solid;">퀴즈 내용을 입력 해 주세요 </textarea></td>
									</tr>
									<tr>
										<td colspan="3">정답을 선택한 후에 저장 해 주세요.</td>
									</tr>
									<tr>
										<td><input type="radio" name="option" value="option1">
										</td>
										<td><input type="text" name="option1" value=""
											style="border-right: #ff0000 1px solid; border-left: #00ff00 1px solid; border-top: #ffff00 1px solid; border-bottom: #0000ff 1px solid;">

										</td>
									</tr>
									<tr>
										<td><input type="radio" name="option" value="option2">
										<td><input type="text" name="option2" width="100"
											height="17" value=""
											style="border-right: #ff0000 1px solid; border-left: #00ff00 1px solid; border-top: #ffff00 1px solid; border-bottom: #0000ff 1px solid;">

										</td>
									</tr>
									<tr>
										<td><input type="radio" name="option" value="option3"></td>
										<td><input type="text" name="option3" width="100"
											height="17" value=""
											style="border-right: #ff0000 1px solid; border-left: #00ff00 1px solid; border-top: #ffff00 1px solid; border-bottom: #0000ff 1px solid;">
										</td>
									</tr>
								</table>
								<a class='button_confirm' href='${ctx}/quiz/newQuiz.do'>New Quiz Confirm</a>
							</form>



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