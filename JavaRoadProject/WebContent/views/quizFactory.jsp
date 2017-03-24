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
						<a href="${ctx }/views/index.jsp">자바로드</a>
					</h1>
					<span>걸어서 자바속으로</span>
				</div>
				<!-- Nav -->
				<nav id="nav">
					<div style="float: right;"><%@ include file="header.jspf"%></div>
					<p style="clear: both;"></p>
					<ul>
						<li><a href="${ctx }/views/index.jsp">코스</a></li>
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
													<option value="${ctx}/quiz/quizFactoryOrderByLike.do?memberId=${loginMember.memberId}">추천순</option>
													<option value="#">내 퀴즈</option>
												</select>
											</div></td>
									</tr>
									<tr>

										<td colspan="7"><hr></td>

									</tr>
								</thead>
							</table>

							<c:choose>
								<c:when test="${quizs eq null || empty quizs }">
									<table class="table table-hover table-condensed">
										<tbody>
											<tr>
												<td colspan="5" align="center">등록된 퀴즈가 없습니다.</td>
											</tr>
										</tbody>
									</table>
								</c:when>
								<c:otherwise>
									<c:forEach items="${quizs}" var="quiz" varStatus="status">
										<form action="${ctx}/quiz/modifyQuiz.do" method="POST">
											<table class="table table-hover table-condensed">
												<tbody>

													<tr>
														<td><h1>${status.count }&nbsp;&nbsp;&nbsp;<input
																	type="text" id="title" name="title"
																	value="${quiz.title }" disabled="disabled"
																	style="border-right: #ff0000 1px solid; border-left: #00ff00 1px solid; border-top: #ffff00 1px solid; border-bottom: #0000ff 1px solid;"><br />
															</h1> <br></td>
														<td colspan="4"></td>

														<td><c:if
																test="${quiz.member.memberId eq loginMember.memberId}">
																<a class="button_modify" onclick="btn_on();">수정</a>
																<a class="button_delete"
																	href="${ctx }/quiz/deleteQuiz.do?id=${quiz.id }&tag=${quiz.tag }&memberId=${quiz.member.memberId}">삭제</a>
															</c:if></td>
														<td><a class="button_report"
															href="reportQuiz.do?id=${quiz.id }">신고하기</a></td>
													</tr>

													<tr>
														<td rowspan="3" colspan="4"><textarea id="question"
																style="border-right: #ff0000 1px solid; border-left: #00ff00 1px solid; border-top: #ffff00 1px solid; border-bottom: #0000ff 1px solid;"
																name="question" class="form-control" rows="4" cols="100"
																disabled="disabled">${quiz.question }</textarea></td>

														<td rowspan="3" width="100" style="vertical-align: middle"
															align="right"><h1>
																작성자 :<br>최종 수정 날짜 :
															</h1></td>
														<td rowspan="3" width="200" style="vertical-align: middle"
															align="right"><h1>${quiz.member.nickname }<br>${quiz.timeStemp }</h1></td>

													</tr>

													<tr>



													</tr>
													<tr>
													</tr>

													<tr>
														<td><input type="radio" name="options"
															value="option1"></td>
														<td colspan="3"><input type="text" id="option1"
															size="60" name="option1" value="${quiz.option1 }"
															disabled="disabled"
															style="border-right: #ff0000 1px solid; border-left: #00ff00 1px solid; border-top: #ffff00 1px solid; border-bottom: #0000ff 1px solid;">

														</td>
														<td rowspan="3" align="right"
															style="vertical-align: middle"><a
															class="fa fa-caret-square-o-up"
															href="modifyCode.do?uid=${quiz.id }"></a></td>
														<td rowspan="3" align="center"><h2>${quiz.likes }</h2></td>
														<td rowspan="3" align="left"
															style="vertical-align: middle"><a
															class="fa fa-caret-square-o-down"
															href="modifyCode.do?did=${quiz.id }"></a></td>
													</tr>
													<tr>
														<td><input type="radio" name="options"
															value="option2"></td>
														<td colspan="3"><input type="text" id="option2"
															size="60" name="option2" value="${quiz.option2 }"
															disabled="disabled"
															style="border-right: #ff0000 1px solid; border-left: #00ff00 1px solid; border-top: #ffff00 1px solid; border-bottom: #0000ff 1px solid;">

														</td>
													</tr>
													<tr>
														<td><input type="radio" name="options"
															value="option3"></td>
														<td colspan="3"><input type="text" id="option3"
															name="option3" size="60" value="${quiz.option3 }"
															disabled="disabled"
															style="border-right: #ff0000 1px solid; border-left: #00ff00 1px solid; border-top: #ffff00 1px solid; border-bottom: #0000ff 1px solid;">
														</td>
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
														<td colspan="7"><input type="hidden" id="quizId"
															name="quizId" value="${quiz.id }"></td>
													</tr>
													<tr>
														<td colspan="7"><input type="hidden" id="tag"
															name="tag" value="${tag }"></td>
													</tr>
													<tr>
														<td colspan="7"><input type="hidden" id="memberId"
															name="memberId" value="${loginMember.memberId }">
													<tr>
														<td>
														<td colspan="7" align="right"><input type="submit"
															id="confirmModify" class='button_confirm'
															onclick="button_event2();" disabled="disabled"
															value="수정내용 저장" /></td>
													</tr>

													<tr>

														<td colspan="7"><hr></td>

													</tr>


												</tbody>

											</table>
										</form>

									</c:forEach>
								</c:otherwise>
							</c:choose>





							<hr>



							<form action="${ctx}/quiz/newQuiz.do" method="POST">
								<table class="table table-hover table-condensed">

									<tr>
										<td colspan="3"><h2>New Quiz</h2></td>
									</tr>
									<tr>
										<td colspan="3"><input type="text" id="title"
											name="title" value="제목을 입력해주세요"
											style="border-right: #ff0000 1px solid; border-left: #00ff00 1px solid; border-top: #ffff00 1px solid; border-bottom: #0000ff 1px solid;"></td>
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
										<td><input type="text" id="option1" name="option1"
											value="선택지 1을 작성해주세요"
											style="border-right: #ff0000 1px solid; border-left: #00ff00 1px solid; border-top: #ffff00 1px solid; border-bottom: #0000ff 1px solid;">

										</td>
									</tr>
									<tr>
										<td><input type="radio" name="option" value="option2">
										<td><input type="text" id="option2" name="option2"
											width="100" height="17" value="선택지2를 작성해주세요"
											style="border-right: #ff0000 1px solid; border-left: #00ff00 1px solid; border-top: #ffff00 1px solid; border-bottom: #0000ff 1px solid;">

										</td>
									</tr>
									<tr>
										<td><input type="radio" name="option" value="option3"></td>
										<td><input type="text" id="option3" name="option3"
											width="100" height="17" value="선택지3을 작성해주세요"
											style="border-right: #ff0000 1px solid; border-left: #00ff00 1px solid; border-top: #ffff00 1px solid; border-bottom: #0000ff 1px solid;">
										</td>
									</tr>
									<tr>
										<td colspan="3"><input type="hidden" id="tag" name="tag"
											value="${tag }"></td>
									</tr>
									<tr>
										<td colspan="3"><input type="hidden" id="memberId"
											name="memberId" value="${loginMember.memberId }">
								</table>
								<input type="submit" class='button_confirm'
									onclick="button_event();" value="New Quiz Confirm">
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
	<script>
		$("form").submit(function() {
			var checked_radio = $('input:radio[name="option"]:checked').val();

			if (!checked_radio) {
				alert('답을 선택 해 주세요');
				return false;
			}

		});

		function button_event() {
			var checked_radio = $('input:radio[name="option"]:checked').val();

			if (!checked_radio) {
				alert('답을 선택 해 주세요');
				return false;
			}

			if (confirm("퀴즈를 추가 하시겠습니까?") == true) { //확인
				document.form.submit();
			} else { //취소
				return;
			}
		}

		function get_text() {
			var select = $(':input[name="option"]:checked').val();
			if (select == "option1") {
				var answer = document.getElementByName('option1').value;
				alert(answer);
			} else if (select == "option2") {
				var answer = document.getElementByName('option2').value;
				alert(answer);
			} else if (select == "option3") {
				var answer = document.getElementByName('option3').value;
				alert(answer);
			}
		}
	</script>

	<script>
		$("form").submit(function() {
			var checked_radio = $('input:radio[name="options"]:checked').val();

			if (!checked_radio) {
				alert('답을 선택 해 주세요');
				return false;
			}

		});

		function button_event2() {
			var checked_radio = $('input:radio[name="options"]:checked').val();

			if (!checked_radio) {
				alert('답을 선택 해 주세요');
				return false;
			}

			if (confirm("퀴즈를 수정 하시겠습니까?") == true) { //확인
				document.form.submit();
			} else { //취소
				return;
			}
		}

		function get_text() {
			var select = $(':input[name="options"]:checked').val();
			if (select == "option1") {
				var answer = document.getElementByName('option1').value;
				alert(answer);
			} else if (select == "option2") {
				var answer = document.getElementByName('option2').value;
				alert(answer);
			} else if (select == "option3") {
				var answer = document.getElementByName('option3').value;
				alert(answer);
			}
		}
	</script>

	<script type="text/javascript">
		var confirmModify;
		var title;
		var question;
		var option1;
		var option2;
		var option3;
		//버튼활성화
		function btn_on() {
			confirmModify = document.getElementById('confirmModify');
			title = document.getElementById('title');
			question = document.getElementById('question');
			option1 = document.getElementById('option1');
			option2 = document.getElementById('option2');
			option3 = document.getElementById('option3');
			confirmModify.disabled = false;
			title.disabled = false;
			question.disabled = false;
			option1.disabled = false;
			option2.disabled = false;
			option3.disabled = false;
		}
	</script>


	<script src="${ctx }/js/jquery.min.js"></script>
	<script src="${ctx }/js/jquery.dropotron.min.js"></script>
	<script src="${ctx }/js/skel.min.js"></script>
	<script src="${ctx }/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="${ctx }/js/main.js"></script>
</body>
</html>