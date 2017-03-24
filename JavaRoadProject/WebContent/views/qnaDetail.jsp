<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx">${pageContext.request.contextPath }</c:set>
<!DOCTYPE html>

<html>
	<head>
	<title>JavaRoad - CodeList</title>
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
								<h1><a href="index.jsp">자바로드</a></h1>
								<span>걸어서 자바속으로</span>
							</div>

						<!-- Nav -->
							<nav id="nav">
							<div style = "float:right;"><%@ include file="header.jspf"%></div>
							<p style = "clear:both;"></p>
								<ul>
									<li class="current"><a href="index.html">코스</a></li>
									<li><a href="left-sidebar.html">코드 플레이그라운드</a></li>
									<li><a href="qnaList.jsp">Q&amp;A</a></li>
									<li><a href="no-sidebar.html">랭킹페이지</a></li>
								</ul>
							</nav>
					</header>
				</div>
			</div>
			
			<a href="/QnAList.do">목록으로</a>
			
					<div id="main-wrapper">
						<div class="container">
							<div id="content">
									<%-- <c:choose>
										<c:when test="${questions eq null || empty questions }">
											<tr>
												<td colspan="6" align="center">등록된 질문이 없습니다. </td>
											</tr>
										</c:when>
										<c:otherwise>
											<c:forEach items="${questions}" var="question" varStatus="status"> --%>
											<h2>제목</h2>
		
											<p>내용</p>
											
											<input value="tag1" readonly>&emsp;<input value="tag2" readonly>
											<div align="right">
											<input value="작성자 닉네임" readonly><br>
											<input value="작성시간" readonly>
											</div>
											<%-- </c:forEach>
										</c:otherwise>
			                        </c:choose> --%>
		                        			<hr>
		                        			<h3>답변</h3>
											<p>내용</p>
		
											<p>Phasellus odio risus, faucibus et viverra vitae, eleifend ac purus. Praesent mattis, enim
											quis hendrerit porttitor, sapien tortor viverra magna, sit amet rhoncus nisl lacus nec arcu.
											Suspendisse laoreet metus ut metus imperdiet interdum aliquam justo tincidunt. Mauris dolor urna,
											fringilla vel malesuada ac, dignissim eu mi. Praesent mollis massa ac nulla pretium pretium.
											Maecenas tortor mauris, consectetur pellentesque dapibus eget, tincidunt vitae arcu.
											Vestibulum purus augue, tincidunt sit amet iaculis id, porta eu purus.</p>
											
											<hr>
											<div class="descriptionarea">
											    <span class="namefortxtarea">수정할 내용을 적어주세요</span>
											    <textarea></textarea>
											    <span class="buttonfortxtarea"><button class= "btn btn-mini description_edit">Edit</button><button class= "btn btn-mini description_submit">Submit</button></span>
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