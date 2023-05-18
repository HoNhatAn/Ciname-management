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
					<div class="col-lg-6">
						<div class="ucm-nav-wrap">
							<ul class="nav nav-tabs" id="myTab" >
								<li class="nav-item" role="presentation"><a
									class="nav-link" id="movies-tab" data-toggle="tab"
									href="#movies" role="tab" aria-controls="movies"
									aria-selected="false">Movies HOT</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade show active" id="tvShow" role="tabpanel"
						aria-labelledby="tvShow-tab">
						<div class="ucm-active-two owl-carousel">
							<div class="movie-item movie-item-two mb-30">
								<div class="movie-poster">
									<a href="movie-details.html"><img
										src="<c:url value='/resources/img/poster/s_ucm_poster01.jpg'/>" alt=""></a>
								</div>
								<div class="movie-content">
									<div class="rating">
										<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i>
									</div>
									<h5 class="title">
										<a href="movie-details.html">Message in a Bottle</a>
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
							<div class="movie-item movie-item-two mb-30">
								<div class="movie-poster">
									<a href="./chitiet"><img
										src="<c:url value='/resources/img/poster/s_ucm_poster02.jpg'/>" alt=""></a>
								</div>
								<div class="movie-content">
									<div class="rating">
										<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i>
									</div>
									<h5 class="title">
										<a href="movie-details.html">The Parkar Legend</a>
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
							<div class="movie-item movie-item-two mb-30">
								<div class="movie-poster">
									<a href="movie-details.html"><img
										src="<c:url value='/resources/img/poster/bacsima.jpg'/>" alt=""></a>
								</div>
								<div class="movie-content">
									<div class="rating">
										<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i>
									</div>
									<h5 class="title">
										<a href="movie-details.html">The Tonoy 88 Bottle</a>
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
							<div class="movie-item movie-item-two mb-30">
								<div class="movie-poster">
									<a href="movie-details.html"><img
										src="<c:url value='/resources/img/poster/s_ucm_poster04.jpg'/>" alt=""></a>
								</div>
								<div class="movie-content">
									<div class="rating">
										<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i>
									</div>
									<h5 class="title">
										<a href="movie-details.html">The Ackle Bottle</a>
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
							<div class="movie-item movie-item-two mb-30">
								<div class="movie-poster">
									<a href="movie-details.html"><img
										src="<c:url value='/resources/img/poster/s_ucm_poster05.jpg'/>" alt=""></a>
								</div>
								<div class="movie-content">
									<div class="rating">
										<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i>
									</div>
									<h5 class="title">
										<a href="movie-details.html">Message in a Bottle</a>
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
							<div class="movie-item movie-item-two mb-30">
								<div class="movie-poster">
									<a href="movie-details.html"><img
										src="<c:url value='/resources/img/poster/s_ucm_poster06.jpg'/>" alt=""></a>
								</div>
								<div class="movie-content">
									<div class="rating">
										<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i>
									</div>
									<h5 class="title">
										<a href="movie-details.html">The Dog Woof</a>
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
						</div>
					</div>
					<div class="tab-pane fade" id="movies" role="tabpanel"
						aria-labelledby="movies-tab">
						<div class="ucm-active-two owl-carousel">
							<div class="movie-item movie-item-two mb-30">
								<div class="movie-poster">
									<a href="movie-details.html"><img
										src="<c:url value='/resources/img/poster/s_ucm_poster06.jpg'/>" alt=""></a>
								</div>
								<div class="movie-content">
									<div class="rating">
										<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i>
									</div>
									<h5 class="title">
										<a href="movie-details.html">Message in a Bottle</a>
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
							<div class="movie-item movie-item-two mb-30">
								<div class="movie-poster">
									<a href="movie-details.html"><img
										src="<c:url value='/resources/img/poster/s_ucm_poster07.jpg'/>" alt=""></a>
								</div>
								<div class="movie-content">
									<div class="rating">
										<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i>
									</div>
									<h5 class="title">
										<a href="movie-details.html">The Parkar Legend</a>
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
							<div class="movie-item movie-item-two mb-30">
								<div class="movie-poster">
									<a href="movie-details.html"><img
										src="<c:url value='/resources/img/poster/s_ucm_poster08.jpg'/>" alt=""></a>
								</div>
								<div class="movie-content">
									<div class="rating">
										<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i>
									</div>
									<h5 class="title">
										<a href="movie-details.html">The Tonoy 88 Bottle</a>
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
							<div class="movie-item movie-item-two mb-30">
								<div class="movie-poster">
									<a href="movie-details.html"><img
										src="<c:url value='/resources/img/poster/s_ucm_poster09.jpg'/>" alt=""></a>
								</div>
								<div class="movie-content">
									<div class="rating">
										<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i>
									</div>
									<h5 class="title">
										<a href="movie-details.html">The Ackle Bottle</a>
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
							<div class="movie-item movie-item-two mb-30">
								<div class="movie-poster">
									<a href="movie-details.html"><img
										src="<c:url value='/resources/img/poster/s_ucm_poster02.jpg'/>" alt=""></a>
								</div>
								<div class="movie-content">
									<div class="rating">
										<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i>
									</div>
									<h5 class="title">
										<a href="movie-details.html">Message in a Bottle</a>
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
							<div class="movie-item movie-item-two mb-30">
								<div class="movie-poster">
									<a href="movie-details.html"><img
										src="<c:url value='/resources/img/poster/s_ucm_poster01.jpg'/>" alt=""></a>
								</div>
								<div class="movie-content">
									<div class="rating">
										<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i>
									</div>
									<h5 class="title">
										<a href="movie-details.html">The Dog Woof</a>
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
						</div>
					</div>
					<div class="tab-pane fade" id="anime" role="tabpanel"
						aria-labelledby="anime-tab">
						<div class="ucm-active-two owl-carousel">
							<div class="movie-item movie-item-two mb-30">
								<div class="movie-poster">
									<a href="movie-details.html"><img
										src="<c:url value='/resources/img/poster/s_ucm_poster01.jpg'/>" alt=""></a>
								</div>
								<div class="movie-content">
									<div class="rating">
										<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i>
									</div>
									<h5 class="title">
										<a href="movie-details.html">Message in a Bottle</a>
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
							<div class="movie-item movie-item-two mb-30">
								<div class="movie-poster">
									<a href="movie-details.html"><img
										src="<c:url value='/resources/img/poster/s_ucm_poster02.jpg'/>" alt=""></a>
								</div>
								<div class="movie-content">
									<div class="rating">
										<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i>
									</div>
									<h5 class="title">
										<a href="movie-details.html">The Parkar Legend</a>
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
							<div class="movie-item movie-item-two mb-30">
								<div class="movie-poster">
									<a href="movie-details.html"><img
										src="<c:url value='/resources/img/poster/s_ucm_poster03.jpg'/>" alt=""></a>
								</div>
								<div class="movie-content">
									<div class="rating">
										<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i>
									</div>
									<h5 class="title">
										<a href="movie-details.html">The Tonoy 88 Bottle</a>
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
							<div class="movie-item movie-item-two mb-30">
								<div class="movie-poster">
									<a href="movie-details.html"><img
										src="<c:url value='/resources/img/poster/s_ucm_poster04.jpg'/>" alt=""></a>
								</div>
								<div class="movie-content">
									<div class="rating">
										<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i>
									</div>
									<h5 class="title">
										<a href="movie-details.html">The Ackle Bottle</a>
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
							<div class="movie-item movie-item-two mb-30">
								<div class="movie-poster">
									<a href="movie-details.html"><img
										src="<c:url value='/resources/img/poster/s_ucm_poster05.jpg'/>" alt=""></a>
								</div>
								<div class="movie-content">
									<div class="rating">
										<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i>
									</div>
									<h5 class="title">
										<a href="movie-details.html">Message in a Bottle</a>
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
							<div class="movie-item movie-item-two mb-30">
								<div class="movie-poster">
									<a href="movie-details.html"><img
										src="<c:url value='/resources/img/poster/s_ucm_poster06.jpg'/>" alt=""></a>
								</div>
								<div class="movie-content">
									<div class="rating">
										<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i>
									</div>
									<h5 class="title">
										<a href="movie-details.html">The Dog Woof</a>
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
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- up-coming-movie-area-end -->

		<!-- gallery-area -->
		<div class="gallery-area position-relative">
			<div class="gallery-bg"></div>
			<div class="container-fluid p-0 fix">
				<div class="row gallery-active">
					<div class="col-12">
						<div class="gallery-item">
							<img src="<c:url value='/resources/img/images/nowayhome.jpg'/>" alt="">
						</div>
					</div>
					<div class="col-12">
						<div class="gallery-item">
							<img src="<c:url value='/resources/img/images/doctor.jpg'/>" alt="">
						</div>
					</div>
					<div class="col-12">
						<div class="gallery-item">
							<img src="<c:url value='/resources/img/images/f&f.jpg'/>" alt="">
						</div>
					</div>
					<div class="col-12">
						<div class="gallery-item">
							<img src="<c:url value='/resources/img/images/avatar2.jpg'/>" alt="">
						</div>
					</div>
				</div>
			</div>
			<div class="slider-nav"></div>
		</div>
		<!-- gallery-area-end -->

		<!-- top-rated-movie -->
		<section class="top-rated-movie tr-movie-bg2"
			data-background="<c:url value='/resources/img/bg/tr_movies_bg.jpg'/>">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-8">
						<div class="section-title title-style-three text-center mb-70">
							<h2 class="title">TOP RATED MOVIE</h2>
						</div>
					</div>
				</div>
				<div class="row movie-item-row">
					<div class="custom-col-">
						<div class="movie-item movie-item-two">
							<div class="movie-poster">
								<img src="<c:url value='/resources/img/poster/s_ucm_poster01.jpg'/>" alt="">
								<ul class="overlay-btn">
									<li><a href="https://www.youtube.com/watch?v=R2gbPxeNk2E"
										class="popup-video btn">Watch Now</a></li>
									<li><a href="movie-details.html" class="btn">Details</a></li>
								</ul>
							</div>
							<div class="movie-content">
								<div class="rating">
									<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i>
								</div>
								<h5 class="title">
									<a href="movie-details.html">Message in a Bottle</a>
								</h5>
								<span class="rel">Adventure</span>
								<div class="movie-content-bottom">
									<ul>
										<li class="tag"><a href="#">HD</a> <a href="#">English</a>
										</li>
										<li><span class="like"><i class="fas fa-thumbs-up"></i>
												3.5</span></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="custom-col-">
						<div class="movie-item movie-item-two">
							<div class="movie-poster">
								<img src="<c:url value='/resources/img/poster/s_ucm_poster02.jpg'/>" alt="">
								<ul class="overlay-btn">
									<li><a href="https://www.youtube.com/watch?v=R2gbPxeNk2E"
										class="popup-video btn">Watch Now</a></li>
									<li><a href="movie-details.html" class="btn">Details</a></li>
								</ul>
							</div>
							<div class="movie-content">
								<div class="rating">
									<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i>
								</div>
								<h5 class="title">
									<a href="movie-details.html">The Parkar Legend</a>
								</h5>
								<span class="rel">Adventure</span>
								<div class="movie-content-bottom">
									<ul>
										<li class="tag"><a href="#">HD</a> <a href="#">English</a>
										</li>
										<li><span class="like"><i class="fas fa-thumbs-up"></i>
												3.5</span></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="custom-col-">
						<div class="movie-item movie-item-two">
							<div class="movie-poster">
								<img src="<c:url value='/resources/img/poster/s_ucm_poster03.jpg'/>" alt="">
								<ul class="overlay-btn">
									<li><a href="https://www.youtube.com/watch?v=R2gbPxeNk2E"
										class="popup-video btn">Watch Now</a></li>
									<li><a href="movie-details.html" class="btn">Details</a></li>
								</ul>
							</div>
							<div class="movie-content">
								<div class="rating">
									<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i>
								</div>
								<h5 class="title">
									<a href="movie-details.html">The Ackle Bottle</a>
								</h5>
								<span class="rel">Adventure</span>
								<div class="movie-content-bottom">
									<ul>
										<li class="tag"><a href="#">HD</a> <a href="#">English</a>
										</li>
										<li><span class="like"><i class="fas fa-thumbs-up"></i>
												3.5</span></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="custom-col-">
						<div class="movie-item movie-item-two">
							<div class="movie-poster">
								<img src="<c:url value='/resources/img/poster/s_ucm_poster04.jpg'/>" alt="">
								<ul class="overlay-btn">
									<li><a href="https://www.youtube.com/watch?v=R2gbPxeNk2E"
										class="popup-video btn">Watch Now</a></li>
									<li><a href="movie-details.html" class="btn">Details</a></li>
								</ul>
							</div>
							<div class="movie-content">
								<div class="rating">
									<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i>
								</div>
								<h5 class="title">
									<a href="movie-details.html">The Speed 2</a>
								</h5>
								<span class="rel">Adventure</span>
								<div class="movie-content-bottom">
									<ul>
										<li class="tag"><a href="#">HD</a> <a href="#">English</a>
										</li>
										<li><span class="like"><i class="fas fa-thumbs-up"></i>
												3.5</span></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="custom-col-">
						<div class="movie-item movie-item-two">
							<div class="movie-poster">
								<img src="<c:url value='/resources/img/poster/s_ucm_poster05.jpg'/>" alt="">
								<ul class="overlay-btn">
									<li><a href="https://www.youtube.com/watch?v=R2gbPxeNk2E"
										class="popup-video btn">Watch Now</a></li>
									<li><a href="movie-details.html" class="btn">Details</a></li>
								</ul>
							</div>
							<div class="movie-content">
								<div class="rating">
									<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i>
								</div>
								<h5 class="title">
									<a href="movie-details.html">The Legend Emo</a>
								</h5>
								<span class="rel">Adventure</span>
								<div class="movie-content-bottom">
									<ul>
										<li class="tag"><a href="#">HD</a> <a href="#">English</a>
										</li>
										<li><span class="like"><i class="fas fa-thumbs-up"></i>
												3.5</span></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="custom-col-">
						<div class="movie-item movie-item-two">
							<div class="movie-poster">
								<img src="<c:url value='/resources/img/poster/s_ucm_poster06.jpg'/>" alt="">
								<ul class="overlay-btn">
									<li><a href="https://www.youtube.com/watch?v=R2gbPxeNk2E"
										class="popup-video btn">Watch Now</a></li>
									<li><a href="movie-details.html" class="btn">Details</a></li>
								</ul>
							</div>
							<div class="movie-content">
								<div class="rating">
									<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i>
								</div>
								<h5 class="title">
									<a href="movie-details.html">Envato Bottle 88</a>
								</h5>
								<span class="rel">Adventure</span>
								<div class="movie-content-bottom">
									<ul>
										<li class="tag"><a href="#">HD</a> <a href="#">English</a>
										</li>
										<li><span class="like"><i class="fas fa-thumbs-up"></i>
												3.5</span></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="custom-col-">
						<div class="movie-item movie-item-two">
							<div class="movie-poster">
								<img src="<c:url value='/resources/img/poster/s_ucm_poster07.jpg'/>s" alt="">
								<ul class="overlay-btn">
									<li><a href="https://www.youtube.com/watch?v=R2gbPxeNk2E"
										class="popup-video btn">Watch Now</a></li>
									<li><a href="movie-details.html" class="btn">Details</a></li>
								</ul>
							</div>
							<div class="movie-content">
								<div class="rating">
									<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i>
								</div>
								<h5 class="title">
									<a href="movie-details.html">Message Bottle II</a>
								</h5>
								<span class="rel">Adventure</span>
								<div class="movie-content-bottom">
									<ul>
										<li class="tag"><a href="#">HD</a> <a href="#">English</a>
										</li>
										<li><span class="like"><i class="fas fa-thumbs-up"></i>
												3.5</span></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="custom-col-">
						<div class="movie-item movie-item-two">
							<div class="movie-poster">
								<img src="<c:url value='/resources/img/poster/s_ucm_poster08.jpg'/>" alt="">
								<ul class="overlay-btn">
									<li><a href="https://www.youtube.com/watch?v=R2gbPxeNk2E"
										class="popup-video btn">Watch Now</a></li>
									<li><a href="movie-details.html" class="btn">Details</a></li>
								</ul>
							</div>
							<div class="movie-content">
								<div class="rating">
									<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i>
								</div>
								<h5 class="title">
									<a href="movie-details.html">The Message B.</a>
								</h5>
								<span class="rel">Adventure</span>
								<div class="movie-content-bottom">
									<ul>
										<li class="tag"><a href="#">HD</a> <a href="#">English</a>
										</li>
										<li><span class="like"><i class="fas fa-thumbs-up"></i>
												3.5</span></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="custom-col-">
						<div class="movie-item movie-item-two">
							<div class="movie-poster">
								<img src="<c:url value='/resources/img/poster/s_ucm_poster09.jpg'/>" alt="">
								<ul class="overlay-btn">
									<li><a href="https://www.youtube.com/watch?v=R2gbPxeNk2E"
										class="popup-video btn">Watch Now</a></li>
									<li><a href="movie-details.html" class="btn">Details</a></li>
								</ul>
							</div>
							<div class="movie-content">
								<div class="rating">
									<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i>
								</div>
								<h5 class="title">
									<a href="movie-details.html">Tiger World Q.</a>
								</h5>
								<span class="rel">Adventure</span>
								<div class="movie-content-bottom">
									<ul>
										<li class="tag"><a href="#">HD</a> <a href="#">Bluray</a>
										</li>
										<li><span class="like"><i class="fas fa-thumbs-up"></i>
												3.5</span></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="custom-col-">
						<div class="movie-item movie-item-two">
							<div class="movie-poster">
								<img src="<c:url value='/resources/img/poster/s_ucm_poster10.jpg'/>" alt="">
								<ul class="overlay-btn">
									<li><a href="https://www.youtube.com/watch?v=R2gbPxeNk2E"
										class="popup-video btn">Watch Now</a></li>
									<li><a href="movie-details.html" class="btn">Details</a></li>
								</ul>
							</div>
							<div class="movie-content">
								<div class="rating">
									<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i>
								</div>
								<h5 class="title">
									<a href="movie-details.html">Avenger World IV</a>
								</h5>
								<span class="rel">Adventure</span>
								<div class="movie-content-bottom">
									<ul>
										<li class="tag"><a href="#">HD</a> <a href="#">English</a>
										</li>
										<li><span class="like"><i class="fas fa-thumbs-up"></i>
												3.5</span></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="tr-movie-btn text-center mt-25">
					<a href="#" class="btn">BROWSE ALL MOVIES</a>
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
