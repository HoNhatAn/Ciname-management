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
						<div class="contact-form-wrap" style="text-align: center;">
							<div class="widget-title mb-50">
								<h2>Cập Nhật Thông Tin</h2>
							</div>
							<div class="contact-form" style="border: none; opacity: 0.8">
								<form:form method="post" action="doimatkhau"
									modelAttribute="doimatkhau">
									<div class="col-md-12">
										<form:input type="text" path="email" id="email"
											readonly="true" value="${username}" />
									</div>
									<div class="form-group">
										<form:input type="password" class="form-control" id="matKhauCu"
											path="matKhauCu" placeholder="Mật Khẩu Cũ"/>
										<form:errors path="matKhauCu" cssClass="error" />
									</div>
									<div class="form-group">
										<form:input type="password" class="form-control" id="matKhauMoi"
											path="matKhauMoi" placeholder="Mật Khẩu Mới"/>
										<form:errors path="matKhauMoi" cssClass="error" />
									</div>
									<div class="form-group">
										<form:input path="xacNhan" type="password"
											class="form-control" id="xacNhan" placeholder="Xác Nhận Mật Khẩu Mới" />
										<form:errors path="xacNhan" cssClass="error" />
									</div>


									<button type="submit" class="btn btn-success">Cập Nhật</button>
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
								<span>DZFullStack Cinema :</span> Tận hưởng từng khoảnh khắc của
								bạn
							</p>
							<div class="contact-info-list">
								<ul>
									<li>
										<div class="icon">
											<i class="fas fa-map-marker-alt"></i>
										</div>
										<p>
											<span>Địa Chỉ :</span> 32 Xuân Diệu, Thuận Phước, Hải Châu,
											Đà Nẵng
										</p>
									</li>
									<li>
										<div class="icon">
											<i class="fas fa-phone-alt"></i>
										</div>
										<p>
											<span>Số Điện Thoại :</span> 0337706254
										</p>
									</li>
									<li>
										<div class="icon">
											<i class="fas fa-envelope"></i>
										</div>
										<p>
											<span>Email :</span> dzfullstack@gmail.com
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
