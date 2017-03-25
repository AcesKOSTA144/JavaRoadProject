<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="ctx" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Java Road - 걸어서 자바속으로</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
	<link id="callCss" rel="stylesheet" href="${ctx }/themes/current/bootstrap.min.css" type="text/css" media="screen"/>
	<link href="${ctx }/themes/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css">
	<link href="${ctx }/themes/css/font-awesome.css" rel="stylesheet" type="text/css">
	<link href="${ctx }/themes/css/base.css" rel="stylesheet" type="text/css">
	<style type="${ctx }/text/css" id="enject"></style>
</head>
<body>
<section id="headerSection">
	<div class="container">
		<div class="navbar">
			<div class="container">
				<button type="button" class="btn btn-navbar active" data-toggle="collapse" data-target=".nav-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				</button>
				<h1><a class="brand" href="${ctx }/views/main.jsp"> JavaRoad <small>  걸어서 자바속으로</small></a></h1>
				<div class="nav-collapse collapse">
					<ul class="nav pull-right">
						<li class=""><a href="main.jsp">Home	</a></li>
						<li class=""><a href="mainCourse.jsp">Main Course</a></li>  
						<li class=""><a href="qnaList.jsp">Q&A</a></li>
						<li class="active"><a href="${ctx }/codeList.do">Code Playground</a></li>
						<li class=""><a href="rankingList.jsp">Ranking</a></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">My Page<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="${ctx }/member/login.do">my page</a></li>
								<li><a href="${ctx }/views/newMember.jsp">Register</a></li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Log in<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><form class="well form-inline">
									  <input type="text" class="input-small" placeholder="Id" name="memberId" value="${memberId }"/>
									  <input type="password" class="input-small" placeholder="Password" name="password" value=""/>
									  <label class="checkbox" value="Y" name="saveIdYn" <c:if test="${memberId != null }">checked</c:if>>
										<input type="checkbox">Remember me
									  </label>
									  <button type="submit" class="btn">Sign in</button>
									</form></li>
							</ul>
						</li>
					</ul>
					
				</div>
				
			</div>
		</div>
	</div>
</section>
<!--Header Ends================================================ -->
<!-- Page banner -->
<!-- Page banner end -->
<section id="bodySection">
	<div id="wrapper">
		<div class="container">	
			<div class="row-fluid">
					<a href="${ctx }/views/codeRun.jsp"><span class="badge badge-info">New Code</span></a>&emsp;&emsp;&emsp;
					<a href="myCodeList.do"><span class="badge badge-success">내 코드보기</span></a>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
					<form class="thumbnails" action="searchCode.do" method="post" style="width:24%;display:inline-block;">
					  <input type="text" name="name" placeholder="닉네임을 입력해주세요" class="input-medium search-query">
					  <button type="submit" class="btn">Search</button>
					</form>
					<table class="table table-condensed">
						<colgroup>
							<col width="80">
							<col width="160">
							<col width="120">
							<col width="80">
							<col width="80">
						</colgroup>
					<thead>
					  <tr>
						<th style="text-align:center;">태그명</th>
						<th style="text-align:center;">코드 제목</th>
						<th style="text-align:center;">날짜</th>
						<th style="text-align:center;">닉네임</th>
						<th style="text-align:center;">추천수</th>
					  </tr>
					</thead>
					<tbody>
					  <c:choose>
							<c:when test="${Codes eq null || empty Codes }">
								<tr>
									<td>등록된 코드가 없습니다.</td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach items="${Codes}" var="code" varStatus="status">
								<fmt:formatDate var="newFormattedDate" value="${code.timeStamp }" pattern="yyyy-MM-dd HH:mm:ss "/>
									<tr>
										<td style="text-align:center;">${status.count }</td>  <!-- 태그명을 가져와야 합니다 -->
										<td style="text-align:center;"><a href="#">${code.title }</a></td>
										<td style="text-align:center;">${newFormattedDate }</td>
										<td style="text-align:center;">${code.memberNickname }</td>
										<td style="text-align:center;">
										<a href="modifyCode.do?uid=${code.id }" onclick="clickCheck();"><i class="icon-thumbs-up"></i></a>
										&emsp;${code.likes }&emsp;
										<a href="modifyCode.do?did=${code.id }" onclick=""><i class="icon-thumbs-down"></i></a>
										</td>
									</tr>
								</c:forEach>
							</c:otherwise>
                        </c:choose>
					</tbody>
				  </table>
				</div>
			</div>
		</div>
</section>
 <!-- Footer
  ================================================== -->
<section id="footerSection">
<div class="container">
    <footer class="footer well well-small">
		<div class="span3">
			<h4>Contact us</h4>
			<address style="margin-bottom:10px;">
			<strong><a href="index.html" title="business"><i class=" icon-home"></i> Java Road (p.) Ltd. </a></strong><br>
				서울특별시 금천구 가산디지털1로 151(가산동 371-47) 이노플렉스 1차 2층 
			</address>
			Phone: <i class="icon-phone-sign"></i> &nbsp; 070-5039-5815 <br>
			Email: <a href="contact.html" title="contact"><i class="icon-envelope-alt"></i> info@companyltd.com</a><br/>
	<p style="padding:18px 0 44px">&copy;Java Road 2017, all right reserved </p>
	</div>
	</footer>
    </div><!-- /container -->
</section>
<a href="#" class="btn" style="position: fixed; bottom: 38px; right: 10px; display: none; " id="toTop"> <i class="icon-arrow-up"></i> Go to top</a>
<!-- Placed at the end of the document so the pages load faster -->
    <script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>
	<script src="${ctx }/themes/js/jquery-1.8.3.min.js"></script>
	<script src="${ctx }/themes/js/bootstrap.min.js"></script>
	<script src="${ctx }/themes/js/bootstrap-tooltip.js"></script>
    <script src="${ctx }/themes/js/bootstrap-popover.js"></script>
	<script src="${ctx }/themes/js/business_ltd_1.0.js"></script>
	<script type="text/javascript">
		var submitted = false;
		function clickCheck(){
			if(submitted == true) {
				return;
			}
			submitted = true;
		}
	</script>
</body>
</html>