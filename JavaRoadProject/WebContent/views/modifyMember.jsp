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
						<a href="index.html">자바로드</a>
					</h1>
					<span>걸어서 자바속으로</span>
				</div>
				<!-- Nav -->
				<nav id="nav">
					<div style="float: right;"><%@ include file="header.jspf"%></div>
					<p style="clear: both;"></p>
					<ul>
						<li class="current"><a href="index.html">코스</a></li>
						<li><a href="left-sidebar.html">코드 플레이그라운드</a></li>
						<li><a href="right-sidebar.html">Q&amp;A</a></li>
						<li><a href="no-sidebar.html">랭킹페이지</a></li>
						<!-- <li><a href="login.jsp">Login</a></li> -->
					</ul>
				</nav>
			</header>
		</div>
	</div>


	<div id="banner-wrapper">
		<div id="banner" class="box container">
			<div class="row">

				<form action="${ctx }/member/ModifyMember.do" method="post">

					<input id="memberId" name="memberId" type="hidden"
						value="${member.memberId}">
					<table class="table">
					
					<tr>
					<td><a href="${ctx }/member/myPage.do?memberId=${member.memberId }">내 정보보기로 </a></td>
					<td></td>
					<td></td>
					</tr>
					
					<tr>
					<td><h3>회원정보 수정</h3></td>
					<td></td>
					<td></td>
					</tr>
					
					<tr>
					<td><h3>회원 아이디</h3></td>
					<td></td>
					<td><h1>${member.memberId }</h1></td>
					</tr>
					
						<tr>
							<td><h1>회원 비밀번호</h1></td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
							<td><input id="password" name="password"
								class="form-control" type="password" value="" size="70" style="border-right: #ff0000 1px solid; border-left: #00ff00 1px solid; border-top: #ffff00 1px solid; border-bottom: #0000ff 1px solid;"></td>
						</tr>
						<tr>
							<td><h1>닉네임</h1></td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
							<td><input id="nickname" name="nickname"
								class="form-control" type="text" value="${member.nickname}" size="70" style="border-right: #ff0000 1px solid; border-left: #00ff00 1px solid; border-top: #ffff00 1px solid; border-bottom: #0000ff 1px solid;"></td>
						</tr>
						<tr>
							<td colspan="3"><hr></td>
						</tr>
						
						<tr>

							<td><h3>목표 설정</h3></td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
							<td></td>
						</tr>

						<tr>

							<td><h1>현재 진도</h1></td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
							<td><h1>${member.currentProgress }</h1></td>
						</tr>


						<tr>

							<td><h1>목표 날짜</h1></td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
							<td>
								<div>
									<input type="date" id="userdate" name="userdate"
										value="${member.timeLimit }" size="70" style="border-right: #ff0000 1px solid; border-left: #00ff00 1px solid; border-top: #ffff00 1px solid; border-bottom: #0000ff 1px solid;">
								</div>
							</td>
						</tr>

						<tr>
							<td><h1>목표 설정</h1></td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
							<td><select id="goalProgress" name="goalProgress" style = "border-right: #ff0000 1px solid;border-left: #00ff00 1px solid;border-top: #ffff00 1px solid; border-bottom: #0000ff 1px solid;">
									<option value="">목표선택</option>
									<option value="1">Hello World</option>
									<option value="2">변수</option>
									<option value="3">주석</option>
									<option value="4">숫자 (Number)</option>
									<option value="5">부울 (boolean)</option>
									<option value="6">문자 (char)</option>
									<option value="7">문자열 (String)</option>
									<option value="8">StringBuffer</option>
									<option value="9">배열 (Array)</option>
									<option value="10">리스트 (List)</option>
									<option value="11">제네릭스 (Generics)</option>
									<option value="12">맵 (Map)</option>
									<option value="13">if 문</option>
									<option value="14">switch/case 문</option>
									<option value="15">while 문</option>
									<option value="16">for 문</option>
									<option value="17">for each 문</option>
									<option value="18">클래스</option>
									<option value="19">메소드 (Method)</option>
									<option value="20">Call by value</option>
									<option value="21">상속</option>
									<option value="22">생성자</option>
									<option value="23">인터페이스</option>
									<option value="24">다형성</option>
									<option value="25">추상클래스</option>
									<option value="26">콘솔 입출력</option>
									<option value="27">파일 입출력</option>
									<option value="28">패키지 (Package)</option>
									<option value="29">접근제어자 (Access Modifier)</option>
									<option value="30">정적 변수와 메소드 (static)</option>
									<option value="31">예외처리 (Exception)</option>
									<option value="32">쓰레드(Thread)</option>
							</select></td>
						</tr>
					</table>
					<div align="right">
					 <input	class="btn btn-success" type="submit" value="저장">
					</div>

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
</html>