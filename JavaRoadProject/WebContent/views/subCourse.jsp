<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>​

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
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link href="${ctx }/css/bootstrap.min.css" rel="stylesheet">
		<link href="${ctx }/css/style.css" rel="stylesheet">
		<style>
		    .menu a{cursor:pointer;}
		    .menu .texthidden{display:none;}
		    
		    .descriptionarea {
			   min-width: 80%;
			   position: relative;
			   display: inline-block;
			   
			}
			
			.descriptionarea textarea{
				width:100%;
			    height:30%;
			    resize:none;
			}
			
			.descriptionarea span.namefortxtarea{
			    display: block;
			    text-align: left;
			    font-size:12px;
			}
			
			.descriptionarea span.buttonfortxtarea{
			    display: block;
			    text-align: right;
			}
		</style>
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
							<div style = "float: right"><%@ include file="header.jspf"%></div><p style = "clear:both;"></p>
								<ul>
									<li class="current"><a href="#">코스</a></li>
									<li><a href="${ctx }/codeList.do">코드 플레이그라운드</a></li>
									<li><a href="right-sidebar.html">Q&amp;A</a></li>
									<li><a href="no-sidebar.html">랭킹페이지</a></li>
								</ul>
							</nav>
					</header>
				</div>
		</div>
			<!-- Features -->
			<!-- Main -->
				<div id="main-wrapper">
					<div class="container">
						<div id="content">
							<!-- Content -->
								<article>

									<h2>Study Page</h2>

									<p>Phasellus quam turpis, feugiat sit amet ornare in, hendrerit in lectus.
									Praesent semper mod quis eget mi. Etiam eu ante risus. Aliquam erat volutpat.
									Aliquam luctus et mattis lectus sit amet pulvinar. Nam turpis nisi
									consequat etiam lorem ipsum dolor sit amet nullam.
									Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ac quam risus, at tempus
									justo. Sed dictum rutrum massa eu volutpat. Quisque vitae hendrerit sem. Pellentesque lorem felis,
									ultricies a bibendum id, bibendum sit amet nisl. Mauris et lorem quam. Maecenas rutrum imperdiet
									vulputate. Nulla quis nibh ipsum, sed egestas justo. Morbi ut ante mattis orci convallis tempor.
									Etiam a lacus a lacus pharetra porttitor quis accumsan odio. Sed vel euismod nisi. Etiam convallis
									rhoncus dui quis euismod. Maecenas lorem tellus, congue et condimentum ac, ullamcorper non sapien.
									Donec sagittis massa et leo semper a scelerisque metus faucibus. Morbi congue mattis mi.
									Phasellus sed nisl vitae risus tristique volutpat. Cras rutrum commodo luctus.
									
									</p>

									<div class="menu" >
									<a><img src="" alt="화살표"/></a>
									<div class="texthidden">
									<p>
									Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ac quam risus, at tempus
									justo. Sed dictum rutrum massa eu volutpat. Quisque vitae hendrerit sem. Pellentesque lorem felis,
									ultricies a bibendum id, bibendum sit amet nisl. Mauris et lorem quam. Maecenas rutrum imperdiet
									vulputate. Nulla quis nibh ipsum, sed egestas justo. Morbi ut ante mattis orci convallis tempor.
									Etiam a lacus a lacus pharetra porttitor quis accumsan odio. Sed vel euismod nisi. Etiam convallis
									rhoncus dui quis euismod. Maecenas lorem tellus, congue et condimentum ac, ullamcorper non sapien.
									Donec sagittis massa et leo semper a scelerisque metus faucibus. Morbi congue mattis mi.
									Phasellus sed nisl vitae risus tristique volutpat. Cras rutrum commodo luctus.

									Phasellus odio risus, faucibus et viverra vitae, eleifend ac purus. Praesent mattis, enim
									quis hendrerit porttitor, sapien tortor viverra magna, sit amet rhoncus nisl lacus nec arcu.
									Suspendisse laoreet metus ut metus imperdiet interdum aliquam justo tincidunt. Mauris dolor urna,
									fringilla vel malesuada ac, dignissim eu mi. Praesent mollis massa ac nulla pretium pretium.
									Maecenas tortor mauris, consectetur pellentesque dapibus eget, tincidunt vitae arcu.
									Vestibulum purus augue, tincidunt sit amet iaculis id, porta eu purus.
									</p>
									<div class="container">
								        <div class="col-md-6">
								            <div class="panel panel-primary">
								                <div class="panel-heading">
								                    <h3 class="panel-title">
								                        <span class="glyphicon glyphicon-circle-arrow-right"></span>원본과 수정본 중 투표해 주세요.</h3>
								                </div>
								                <div class="panel-body two-col">
								                    <div class="row">
								                        <div class="col-md-6">
								                            <div class="well well-sm">
								                                <div class="checkbox">
								                                    <label>
								                                        <input type="checkbox" name="group" value="original" >
								                                        Original
								                                    </label>
								                                </div>
								                            </div>
								                        </div>
								                        <div class="col-md-6">
								                            <div class="well well-sm">
								                                <div class="checkbox">
								                                    <label>
								                                        <input type="checkbox" name="group" value="copy">
								                                        Copy
								                                    </label>
								                                </div>
								                            </div>
								                        </div>
								                    </div>
								                </div>
								                <div class="panel-footer">
								                    <button type="button" class="btn btn-success btn-sm">
								                        <span class="glyphicon glyphicon-ok"></span>Vote</button>
								                    <button type="button" class="btn btn-primary btn-sm">
								                        View Result</button>
								                </div>
								            </div>
								        </div>
								        </div>
								        <div class="descriptionarea">
										    <span class="namefortxtarea">수정할 내용을 적어주세요</span>
										    <textarea></textarea>
										    <span class="buttonfortxtarea"><button class= "btn btn-mini description_edit">Edit</button><button class= "btn btn-mini description_submit">Submit</button></span>
										</div>
									</div>
									</div>
									
									<h3>More intriguing information</h3>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ac quam risus, at tempus
									justo. Sed dictum rutrum massa eu volutpat. Quisque vitae hendrerit sem. Pellentesque lorem felis,
									ultricies a bibendum id, bibendum sit amet nisl. Mauris et lorem quam. Maecenas rutrum imperdiet
									vulputate. Nulla quis nibh ipsum, sed egestas justo. Morbi ut ante mattis orci convallis tempor.
									Etiam a lacus a lacus pharetra porttitor quis accumsan odio. Sed vel euismod nisi. Etiam convallis
									rhoncus dui quis euismod. Maecenas lorem tellus, congue et condimentum ac, ullamcorper non sapien.
									Donec sagittis massa et leo semper a scelerisque metus faucibus. Morbi congue mattis mi.
									Phasellus sed nisl vitae risus tristique volutpat. Cras rutrum commodo luctus.</p>

								</article>
								<div align="center"><button>좌</button>&emsp;&emsp;&emsp;<button>우</button></div>
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
			<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.1.1.min.js"></script>
			<script>
			    // html dom 이 다 로딩된 후 실행된다.
			    $(document).ready(function(){
			        // menu 클래스 바로 하위에 있는 a 태그를 클릭했을때
			        $(".menu > a").click(function(){
			            var submenu = $(this).next(".texthidden");
			            // submenu 가 화면상에 보일때는 위로 보드랍게 접고 아니면 아래로 보드랍게 펼치기
			            if( submenu.is(":visible") ){
			                submenu.slideUp();
			            }else{
			                submenu.slideDown();
			            }
			        });
			    });
			</script>
	</body>
</html>