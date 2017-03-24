<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="ctx">${pageContext.request.contextPath }</c:set>

<!DOCTYPE html>
<html>
	<head>
		<title>JavaRoad - Code Run</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="${ctx }/css/main.css" />
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link href="${ctx }/css/bootstrap.min.css" rel="stylesheet">
		<link href="${ctx }/css/style.css" rel="stylesheet">
	    <link rel="stylesheet" href="${ctx }/css/codeRun/codemirror.css">
	    <link rel="stylesheet" href="${ctx }/css/codeRun/blackboard.css">
	    <link rel="stylesheet" href="${ctx }/css/codeRun/eclipse.css">
	    <script src="${ctx }/js/codeRun/codemirror.js"></script>
	    <script src="${ctx }/js/codeRun/clike.js"></script>
	    
	    <script>
	        window.onload = function() {
	            window.editor = CodeMirror.fromTextArea(code, {
	                mode: 'text/x-java',
	                lineNumbers: true,
	                lineWrapping: true,
	                theme : 'blackboard'
	            });
	            
	            window.editor = CodeMirror.fromTextArea(console, {
	                mode: 'xml',
	                lineNumbers: true,
	                lineWrapping: true,
	                theme : 'eclipse'
	            });
	        };
	        function saveCode(){
	        }
	    </script>
	</head>
	<body>
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header-wrapper">
					<header id="header" class="container">

						<!-- Logo -->
							<div id="logo">
								<h1><a href="${ctx }/main.jsp">자바로드</a></h1>
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
		<div id="main-wrapper" >
			<div class="container" >
				<div id="content" >
<form action="${ctx }/saveCode.do" method="post" enctype="multipart/form-data">

<div id="editor">
<div style="width:52%;display:inline-block;">
<textarea id="code" name="code">
public class Program
{
	public static void main(String[] args)                                      
	{
		System.out.println("Hello?");
	}
}
</textarea>
</div>
<div id="output" style="width:45%;display:inline-block;">
	<textarea id="console" name="console" style="resize: none;" rows="14" readonly>
		${result }
	</textarea>
</div>
</div>

<button type="button" class="btn btn-success">RUN</button>
<button type="submit" class="btn btn-primary">저장</button>
<button type="button" class="btn btn-danger">신고</button>
</form>

				</div>
			</div>
		</div>
	</body>
</html>