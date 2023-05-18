<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<!-- footer-area -->
	<footer>
		<div class="footer-top-wrap">
			<div class="container">
				<div class="footer-menu-wrap">
					<div class="row align-items-center">
						<div class="col-lg-3">
							<div class="footer-logo">
								<a href="index.html"><img
									src="<c:url value='/resources/img/logo/logo.png'/>" alt=""></a>
							</div>
						</div>
						<div class="col-lg-9">
							<div class="footer-menu">
								<nav>
									<ul class="navigation">
									<li class="active menu-item-has-children"><a
											href="/QuanLyRapChieuPhim">Trang Chủ</a></li>
										<c:set var="str2" value="ADMIN" />
										<c:if test="${role.equalsIgnoreCase(str2)}">
										<li><a href="/QuanLyRapChieuPhim/quanlyphim">Trang ADMIN</a></li>
										 </c:if>
										<li class="menu-item-has-children"><a href="">Phim
												Đang Chiếu</a></li>
										<li><a href="tv-show.html">Phim Sắp Chiếu</a></li>
									</ul>
									<div class="footer-search">
										<form:form action="timkiem" method="post">
											<input type="text" placeholder="Tìm kiếm phim"
												name="timkiem">
											<button type="submit">
												<i class="fas fa-search"></i>
											</button>
										</form:form>
									</div>
								</nav>
							</div>
						</div>
					</div>
				</div>
				<div class="footer-quick-link-wrap">
					<div class="row align-items-center">
						<div class="col-md-7">
							<div class="quick-link-list">
								<ul>
									<li><a href="#">FAQ</a></li>
									<li><a href="#">Help Center</a></li>
									<li><a href="#">Terms of Use</a></li>
									<li><a href="#">Privacy</a></li>
								</ul>
							</div>
						</div>
						<div class="col-md-5">
							<div class="footer-social">
								<ul>
									<li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
									<li><a href="#"><i class="fab fa-twitter"></i></a></li>
									<li><a href="#"><i class="fab fa-pinterest-p"></i></a></li>
									<li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- footer-area-end -->





	<!-- JS here -->
	<script src="<c:url value='/resources/js/vendor/jquery-3.6.0.min.js'/>"></script>
	<script src="<c:url value='/resources/js/popper.min.js'/>"></script>
	<script src="<c:url value='/resources/js/bootstrap.min.js'/>"></script>
	<script src="<c:url value='/resources/js/isotope.pkgd.min.js'/>"></script>
	<script src="<c:url value='/resources/js/imagesloaded.pkgd.min.js'/>"></script>
	<script
		src="<c:url value='/resources/js/jquery.magnific-popup.min.js'/>"></script>
	<script src="<c:url value='/resources/js/owl.carousel.min.js'/>"></script>
	<script src="<c:url value='/resources/js/jquery.odometer.min.js'/>"></script>
	<script src="<c:url value='/resources/js/jquery.appear.js'/>"></script>
	<script src="<c:url value='/resources/js/slick.min.js'/>"></script>
	<script src="<c:url value='/resources/js/ajax-form.js'/>"></script>
	<script src="<c:url value='/resources/js/wow.min.js'/>"></script>
	<script src="<c:url value='/resources/js/aos.js'/>"></script>
	<script src="<c:url value='/resources/js/plugins.js'/>"></script>
	<script src="<c:url value='/resources/js/main.js'/>"></script>
</body>
</html>