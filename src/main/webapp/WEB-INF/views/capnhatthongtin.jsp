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
								<form:form method="post" action="cap-nhat-thong-tin"
									modelAttribute="khachhang">
									<form:hidden path="id" />
									<div class="col-md-12">
										<form:input type="text" path="ho_va_ten" id="ho_va_ten" placeholder="Họ Và Tên"/>
										<form:errors path="ho_va_ten" cssClass="error" />
									</div>
									<div class="col-md-12">
										<form:input type="text" id="email" path="email" placeholder="Email" readonly="true" />
										<form:errors path="email" cssClass="error" />
									</div>
					<%-- 				<div class="col-md-12">
										<form:hidden path="password" />
									</div>
									<div class="col-md-12">
										
										<form:hidden path="cfpassword" />
										
									</div> --%>
									<div class="col-md-12">
										
										<form:input path="so_dien_thoai" type="text"
											id="so_dien_thoai" placeholder="Số Điện Thoại" />
										<form:errors path="so_dien_thoai" cssClass="error" />
									</div>
									<div class="col-md-12">
										
										<form:input type="date" name="ngay_sinh" id="ngay_sinh"
											path="ngay_sinh" placeholder="Ngày Sinh"/>
										<form:errors path="ngay_sinh" cssClass="error" />
									</div>
									<div class="col-md-12" style="color: black; font-size: 30px;margin: 0px 0px">
										<label style="color: black;font-size: 30px" for="gioi_tinh">Giới Tính:</label>
																					<c:set var="gender2" value="Nam"></c:set>
											<c:if test="${khachhang.gioi_tinh.equalsIgnoreCase(gender2)}">
											 <input type="radio" name="Gender" value="Nam" checked="checked" style="width:20px"/>Nam 
											</c:if>
											<c:if test="${!khachhang.gioi_tinh.equalsIgnoreCase(gender2)}">
											 <input type="radio" name="Gender" value="Nam"  style="width:20px"/>Nam 
											</c:if>
											
											<c:set var="gender" value="Nữ"></c:set>
											<c:if test="${khachhang.gioi_tinh.equalsIgnoreCase(gender)}">
											<input type="radio" name="Gender" value="Nữ" style="width:20px" checked="checked"/>Nữ 
											</c:if>

											<c:if test="${!khachhang.gioi_tinh.equalsIgnoreCase(gender)}">
											<input type="radio" name="Gender" value="Nữ" style="width:20px"/>Nữ 
											</c:if>
											
	
										
										<%-- <form:errors path="gioi_tinh" cssClass="error" /> --%>
									</div>

									<div class="col-md-12">
						
										<form:input type="text" path="dia_chi" id="dia_chi" placeholder="Địa Chỉ"
											name="dia_chi" />
										<form:errors path="dia_chi" cssClass="error" />
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
