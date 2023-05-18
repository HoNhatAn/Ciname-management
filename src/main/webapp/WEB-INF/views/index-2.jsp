<%@page import="org.springframework.ui.Model"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

		<!-- slider-area -->
		<section class="slider-area slider-bg"
			data-background="<c:url value='/resources/img/banner/banner_bg01.jpg'/>">
			<div class="slider-active">
				<div class="slider-item">
					<div class="container">
						<div class="row align-items-center">
							<div class="col-lg-6 order-0 order-lg-2">
								<div class="slider-img text-center text-lg-right"
									data-animation="fadeInRight" data-delay="1s">
									<img src="<c:url value='/resources/img/banner/pacificrim2.jpg'/>" alt="">
								</div>
							</div>
							<div class="col-lg-6">
								<div class="banner-content">
									<h6 class="sub-title" data-animation="fadeInUp"
										data-delay=".2s">HOT</h6>
									<h2 class="title" data-animation="fadeInUp" data-delay=".4s">
										PACIFIC <span>RIM 2</span>
									</h2>
									<div class="banner-meta" data-animation="fadeInUp"
										data-delay=".6s">
										<ul>
											<li class="quality"><span>Pg 18</span> <span>hd</span></li>
											<li class="category"><a href="#">Hành Động, Khoa Học Viễn Tưởng</a></li>
											<li class="release-time"><span><i
													class="far fa-calendar-alt"></i> 2021</span> <span><i
													class="far fa-clock"></i> 128 min</span></li>
										</ul>
									</div>
									<a href="https://www.youtube.com/watch?v=8BAhwgjMvnM"
										class="banner-btn btn popup-video" data-animation="fadeInUp"
										data-delay=".8s"><i class="fas fa-play"></i> Trailer</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="slider-item">
					<div class="container">
						<div class="row align-items-center">
							<div class="col-lg-6 order-0 order-lg-2">
								<div class="slider-img text-center text-lg-right"
									data-animation="fadeInRight" data-delay="1s">
									<img src="<c:url value='/resources/img/banner/avatar2.jpg'/>" alt="">
								</div>
							</div>
							<div class="col-lg-6">
								<div class="banner-content">
									<h6 class="sub-title" data-animation="fadeInUp"
										data-delay=".2s">HOT</h6>
									<h2 class="title" data-animation="fadeInUp" data-delay=".4s">
										<span>AVATAR 2</span>: THE WAY OF WATER (2022)
									</h2>
									<div class="banner-meta" data-animation="fadeInUp"
										data-delay=".6s">
										<ul>
											<li class="quality"><span>Pg 18</span> <span>3D</span></li>
											<li class="category"><a href="#">Phiêu Lưu, Khoa Học Viễn Tưởng</a></li>
											<li class="release-time"><span><i
													class="far fa-calendar-alt"></i> 2022</span> <span><i
													class="far fa-clock"></i> 198 min</span></li>
										</ul>
									</div>
									<a href="https://www.youtube.com/watch?v=o5F8MOz_IDw"
										class="banner-btn btn popup-video" data-animation="fadeInUp"
										data-delay=".8s"><i class="fas fa-play"></i> Trailer</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="slider-item">
					<div class="container">
						<div class="row align-items-center">
							<div class="col-lg-6 order-0 order-lg-2">
								<div class="slider-img text-center text-lg-right"
									data-animation="fadeInRight" data-delay="1s">
									<img src="<c:url value='/resources/img/banner/endgame.jpg'/>" alt="">
								</div>
							</div>
							<div class="col-lg-6">
								<div class="banner-content">
									<h6 class="sub-title" data-animation="fadeInUp"
										data-delay=".2s">HOT</h6>
									<h2 class="title" data-animation="fadeInUp" data-delay=".4s">
										AVENGER <span>END GAME</span>
									</h2>
									<div class="banner-meta" data-animation="fadeInUp"
										data-delay=".6s">
										<ul>
											<li class="quality"><span>Pg 16</span> <span>HD</span></li>
											<li class="category"><a href="#">Hành động, Khoa học viễn tưởng</a></li>
											<li class="release-time"><span><i
													class="far fa-calendar-alt"></i> 2021</span> <span><i
													class="far fa-clock"></i> 125 min</span></li>
										</ul>
									</div>
									<a href="https://www.youtube.com/watch?v=TcMBFSGVi1c&t=4s&ab_channel=MarvelEntertainment"
										class="banner-btn btn popup-video" data-animation="fadeInUp"
										data-delay=".8s"><i class="fas fa-play"></i> TRAILER</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- slider-area-end -->

		<!-- up-coming-movie-area -->
		<section class="ucm-area ucm-bg2"
			data-background="<c:url value='/resources/img/bg/ucm_bg02.jpg'/>">
			<div class="container">
				<div class="row align-items-end mb-55">
					<div class="col-lg-6">
						<div
							class="section-title title-style-three text-center text-lg-left">
							<h2 class="title">MOVIE SELECTION</h2>
						</div>
					</div>
	
				</div>
				<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade show active" id="tvShow" role="tabpanel"
						aria-labelledby="tvShow-tab">
							<c:if test="${PhimList.size()<5}">
								<div class="owl-carousel" style="display: flex;flex-direction: row; justify-content:flex-start; ">

							<c:forEach items="${PhimList }" var="item" >
							<div class="movie-item movie-item-two mb-30" style="margin-left:6%;max-width: 21%">
								<div class="movie-poster">
									<a href="./chitiet/${item.id}"><img
										src="${item.avatar}" alt=""></a>
								</div>
								<div class="movie-content">
									<div class="rating"> 
										<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i>
									</div>
									<h5 class="title">
										<a href="./chitiet/${item.id}">${item.ten_phim}</a>
									</h5>
									<span class="rel">Adventure</span>
									<div class="movie-content-bottom">
										<ul>
											<li class="tag"><a href="#">HD</a> <a href="#">English</a>
											</li>
											<li><span class="like"><i
													class="fas fa-thumbs-up"></i> 3.5</span></li>
										</ul>
									</div>
								</div>
							</div>
							
							</c:forEach>
						</div>
							</c:if>
							
							<c:if test="${PhimList.size()>=5}">
							<div class="ucm-active-two owl-carousel">

							<c:forEach items="${PhimList }" var="item">
							<div class="movie-item movie-item-two mb-30"   style="background-repeat: no-repeat">
	
								<div class="movie-poster">
									<a href="./chitiet/${item.id}"><img
										src="${item.avatar}" alt=""></a>
								</div>
								<div class="movie-content">
									<div class="rating"> 
										<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i>
									</div>
									<h5 class="title">
										<a href="./chitiet/${item.id}">${item.ten_phim}</a>
									</h5>
									<span class="rel">Adventure</span>
									<div class="movie-content-bottom">
										<ul>
											<li class="tag"><a href="#">HD</a> <a href="#">English</a>
											</li>
											<li><span class="like"><i
													class="fas fa-thumbs-up"></i> 3.5</span></li>
										</ul>
									</div>
								</div>
							</div>
							
							</c:forEach>
						</div>
							
								</c:if>
					</div>
				</div>
			</div>
		</section>
		<!-- up-coming-movie-area-end -->

		<!-- gallery-area -->
		
		<!-- gallery-area-end -->
		<!-- top-rated-movie-end -->
	</main>
	<!-- main-area-end -->


	<!-- footer-area -->
	<%@include file="footer.jsp"%>
</body>
</html>
