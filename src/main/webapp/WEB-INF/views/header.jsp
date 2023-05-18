<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<html class="no-js" lang="">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Movfix - Online Movies & TV Shows Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="shortcut icon" type="image/x-icon"
	href="<c:url value='/resources/img/favicon.png'/>">
<!-- Place favicon.ico in the root directory -->

<!-- CSS here -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
 <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="<c:url value='/resources/css/animate.min.css'/>" />
<link rel="stylesheet"
	href="<c:url value='/resources/css/bootstrap.min.css'/>" />
<link rel="stylesheet"
	href="<c:url value='/resources/css/animate.min.css'/>">
<link rel="stylesheet"
	href="<c:url value='/resources/css/magnific-popup.css'/>">
<link rel="stylesheet"
	href="<c:url value='/resources/css/fontawesome-all.min.css'/>">
<link rel="stylesheet"
	href="<c:url value='/resources/css/owl.carousel.min.css'/>">
<link rel="stylesheet"
	href="<c:url value='/resources/css/flaticon.css'/>">
<link rel="stylesheet"
	href="<c:url value='/resources/css/odometer.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/aos.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/slick.css'/>">
<link rel="stylesheet"
	href="<c:url value='/resources/css/default.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/style.css'/>">
<link rel="stylesheet"
	href="<c:url value='/resources/css/responsive.css'/>">
<style type="text/css">
.navbar-wrap > ul > li .submenu{
padding: 0 0;
min-width: 150px;
}
.error{
	color: red;
	font: bold;
	font-size: 20px;
}
</style>
</head>
<body>
	
	<!-- preloader -->
	<div id="preloader">
		<div id="loading-center">
			<div id="loading-center-absolute">
				<img src="<c:url value='/resources/img/preloader.svg'/>" alt="">
			</div>
		</div>
	</div>
	<!-- preloader-end -->

	<!-- Scroll-top -->
	<button class="scroll-top scroll-to-target" data-target="html">
		<i class="fas fa-angle-up"></i>
	</button>
	<!-- Scroll-top-end-->

	<!-- header-area -->
	<header class="header-style-two">
		<div class="header-top-wrap"></div>
		<div id="sticky-header" class="menu-area">
			<div class="container custom-container">
			<c:if test="${datcho!=null}">
		<div id="datcho" style="float: right;">Đặt Chỗ Thành Công</div>
		<%session.setAttribute("datcho", null);%>
	</c:if>
	<script>
	setTimeout(function() {
			const tb = document.getElementById('datcho');
						tb.remove();}, 3000);
	</script>	
					<c:if test="${doimk!=null}">
		<div id="doimk" style="float: right;">Đổi Mật Khẩu Thành Công</div>
		<%session.setAttribute("doimk", null);%>
	</c:if>
	<script>
	setTimeout(function() {
			const tb = document.getElementById('doimk');
						tb.remove();}, 3000);
	</script>	
			
			
			<c:if test="${capnhatthongtin!=null}">
		<div id="thongbaocapnhat" style="float: right;">Cập Nhật Thành
			Công</div>
		<%session.setAttribute("capnhatthongtin", null);%>
	</c:if>
	<script>
	setTimeout(function() {
			const tb = document.getElementById('thongbaocapnhat');
						tb.remove();}, 3000);
	</script>
													
	<c:if test="${tb!=null}">
	<div id="thongbao" style="float: right;">Đăng Nhập Thành Công</div>
														<%
														session.setAttribute("tb", null);
														%>
													</c:if>
													<script>
														setTimeout(
																function() {
																	const tb = document
																			.getElementById('thongbao');
																	tb.remove();
																}, 3000);
													</script>
	<c:if test="${dangkythanhcong!=null}">
	<div id="dky" style="float: right;">Đăng Ký Thành Công</div>
														<%
														session.setAttribute("dangkythanhcong", null);
														%>
													</c:if>
													<script>
														setTimeout(
																function() {
																	const tb = document
																			.getElementById('dky');
																	tb.remove();
																}, 3000);
													</script>														
			
				<div class="row">
					<div class="col-12">
						<div class="mobile-nav-toggler">
							<i class="fas fa-bars"></i>
						</div>
						<div class="menu-wrap">
							<nav class="menu-nav show">
								<div class="logo">
									<a href="/QuanLyRapChieuPhim"> <img
										src="<c:url value='/resources/img/logo/logoo.png'/>"
										alt="Logo">
									</a>
								</div>
								<div class="navbar-wrap main-menu d-none d-lg-flex">
									<ul class="navigation">
										<li class="active menu-item-has-children"><a
											href="/QuanLyRapChieuPhim">Trang Chủ</a></li>
										<c:set var="str2" value="ADMIN" />
										<c:if test="${role.equalsIgnoreCase(str2)}">
										<li><a href="/QuanLyRapChieuPhim/quanlyphim">Trang ADMIN</a></li>
										 </c:if>
										<li class="menu-item-has-children"><a href="https://www.facebook.com/Hau.VT07">Group Facebook</a></li>
									</ul>
								</div>
								<div class="header-action d-none d-md-block">
									<ul>
										<li class="d-none d-xl-block">
											<div class="footer-search">
												<form:form action="timkiem" method="post">
													<input type="text" placeholder="Tìm kiếm phim" name="timkiem">
													<button type="submit">
														<i class="fas fa-search"></i>
													</button>
												</form:form>
											</div>
										</li>
										<li class="header-lang">
											<form action="#">
												<div class="icon">
													<i class="flaticon-globe"></i>
												</div>
												<select id="lang-dropdown">
													<option value="">En</option>
													<option value="">VN</option>
													<option value="">AR</option>
													<option value="">TU</option>
												</select>
											</form>
										</li>



										<!-- **************************************** -->


										<c:choose>
											<c:when test="${username!=null }">
												
												<%-- 	<b style="float: right; margin-right: 10px">Xin chào
				${username}</b>
			<a style="float: right; margin-right: 10px" href="./logout">Đăng
				Xuất</a>  --%>
												<div class="navbar-wrap main-menu d-none d-lg-flex">
													<ul class="navigation">
														<li class="active menu-item-has-children ml-4"><a
															href=""><img alt=""
																src="<c:url value="/resources/img/icons8-user-30.png"/>" /></a>
															<ul class="submenu">
																<li><a
																	href="/QuanLyRapChieuPhim/cap-nhat-thong-tin">Thông Tin Cá Nhân</a></li>
																<li><a href="/QuanLyRapChieuPhim/doimatkhau">Đổi
																		Mật Khẩu</a></li>
																<c:set var="str2" value="USER" />
																<c:if test="${role.equalsIgnoreCase(str2)}"	>	
																<li><a href="/QuanLyRapChieuPhim/lichsudatcho">Lịch sử Giao Dịch</a></li></c:if>
																<li><a href="/QuanLyRapChieuPhim/logout">Đăng
																		Xuất</a></li>
															</ul></li>
													</ul>
												</div>
											</c:when>
											<c:otherwise>
												<li class="header-btn"><a
													href="/QuanLyRapChieuPhim/login" class="btn">ĐĂNG NHẬP</a></li>
											</c:otherwise>
										</c:choose>
									</ul>
								</div>
							</nav>
						</div>

						<!-- Mobile Menu  -->
						<div class="mobile-menu">
							<div class="close-btn">
								<i class="fas fa-times"></i>
							</div>

							<nav class="menu-box">
								<div class="nav-logo">
									<a href="index.html"><img
										src="<c:url value='/resources/img/logo/logoo.png'/>" alt=""
										title=""></a>
								</div>
								<div class="menu-outer">
									<!--Here Menu Will Come Automatically Via Javascript / Same Menu as in Header-->
								</div>
							</nav>
						</div>
						<div class="menu-backdrop"></div>
						<!-- End Mobile Menu -->

					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- header-area-end -->
</html>