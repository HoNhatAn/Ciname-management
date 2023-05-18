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
</head>
<body>

	<%@include file="header.jsp"%>
	<!-- header-area-end -->


	<!-- main-area -->
	<main>
		<section class="contact-area contact-bg"
			data-background="<c:url value='/resources/img/banner/banner_bg01.jpg'/>"
			style="background-image: url(&quot;img/bg/contact_bg.jpg&quot;);">
			<div class="container">
				<div class="row">
					<div class="col-xl-8 col-lg-7">
						<div class="contact-form-wrap">
							<div class="widget-title mb-50">
								<h5 class="title">Đăng Nhập</h5>
							</div>
							<c:if test="${not empty message}">
								<div style="color: red;">${message}</div>
							</c:if>
							<div class="contact-form" style="border: none; opacity: 0.8">
								<form:form method="post" action="login"
									modelAttribute="taikhoan">
									<div class="col-md-12">
										<form:input path="username" id="id_username"
											placeholder="Nhập vào địa chỉ email" />
										<form:errors path="username" cssClass="error" />
									</div>
									<div class="col-md-12">
										<form:input type="password" id="id_password"
											placeholder="Nhập vào mật khẩu" path="password" />
										<form:errors path="password" cssClass="error" />
									</div>
									<div class="row">
										<div class="col-md-6 ">
											<button type="submit" class="btn">Đăng Nhập</button>
										</div>
										<div class="col-md-6 text-right">
											<a href="./register" class="btn">Đăng Ký</a>
										</div>

									</div>
								</form:form>
							</div>
						</div>
					</div>
					<div class="col-xl-4 col-lg-5">
						<div class="widget-title mb-50">
							<h5 class="title">Thông Tin Về Chúng Tôi</h5>
						</div>
						<div class="contact-info-wrap">
							<p>
								<span>PARADISE Cinema :</span> Tận hưởng từng khoảnh khắc của
								bạn
							</p>
							<div class="contact-info-list">
								<ul>
									<li>
										<div class="icon">
											<i class="fas fa-map-marker-alt"></i>
										</div>
										<p>
											<span>Address :</span> 32 Xuân Diệu, Thuận Phước, Hải Châu,
											Đà Nẵng
										</p>
									</li>
									<li>
										<div class="icon">
											<i class="fas fa-phone-alt"></i>
										</div>
										<p>
											<span>Phone :</span> 0337706254
										</p>
									</li>
									<li>
										<div class="icon">
											<i class="fas fa-envelope"></i>
										</div>
										<p>
											<span>Email :</span> Nhom5anhem@gmail.com
										</p>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<!--end row-->
				</div>
			</div>

		</section>
		<!-- top-rated-movie-end -->
	</main>
	<!-- main-area-end -->


	<!-- footer-area -->
	<%@include file="footer.jsp"%>
</body>
</html>
