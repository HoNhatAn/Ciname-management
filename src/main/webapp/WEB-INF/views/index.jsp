<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Movfix - Online Movies & TV Shows Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
<!-- Place favicon.ico in the root directory -->

<!-- CSS here -->
<link rel="stylesheet"
	href="<c:url value='/resources/css/bootstrap.min.css'/>" />
<link rel="stylesheet"
	href="<c:url value='/resources/css/animate.min.css'/>" />
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
	<!-- header-area -->
	<%@include file="header.jsp"%>
	<!-- header-area-end -->


	<!-- main-area -->
	<main>

		<!-- banner-area -->
		<section class="banner-area banner-bg"
			data-background="<c:url value='/resources/img/banner/banner_bg01.jpg'/>">
			<div class="container custom-container">
				<div class="row">
					<div class="col-xl-6 col-lg-8">
						<div class="banner-content">
							<h6 class="sub-title wow fadeInUp" data-wow-delay=".2s"
								data-wow-duration="1.8s">MOVIE</h6>
							<h2 class="title wow fadeInUp" data-wow-delay=".4s"
								data-wow-duration="1.8s">
								PACIFIC RIM <span>2</span> (2022)
							</h2>
							<div class="banner-meta wow fadeInUp" data-wow-delay=".6s"
								data-wow-duration="1.8s">
								<ul>
									<li class="quality"><span>Pg 16</span> <span>hd</span></li>
									<li class="category"><a href="#">Hành Động, </a> <a href="#">Viễn Tưởng</a>
									</li>
									<li class="release-time"><span><i
											class="far fa-calendar-alt"></i> 31/12/2022</span> <span><i
											class="far fa-clock"></i> 128 min</span></li>
								</ul>
							</div>
							<a href="https://www.youtube.com/watch?v=R2gbPxeNk2E"
								class="banner-btn btn popup-video wow fadeInUp"
								data-wow-delay=".8s" data-wow-duration="1.8s"><i
								class="fas fa-play"></i> Watch Now</a>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- banner-area-end -->

		<!-- up-coming-movie-area -->
		<section class="ucm-area ucm-bg" data-background="<c:url value='/resources/img/bg/ucm_bg.jpg'/>">
			<div class="ucm-bg-shape" data-background="<c:url value='/resources/img/bg/ucm_bg_shape.png'/>"></div>
			<div class="container">
				<div class="row align-items-end mb-">
					<div class="col-lg-6">
						<div class="section-title text-center text-lg-left">
							<h2 class="title">PHIM NỔI BẬT</h2>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="ucm-nav-wrap">
							<ul class="nav nav-tabs" id="myTab" role="tablist">
								<li class="nav-item" role="presentation"><a
									class="nav-link active" id="tvShow-tab" data-toggle="tab"
									href="#tvShow" role="tab" aria-controls="tvShow"
									aria-selected="true">TV Shows</a></li>
								<li class="nav-item" role="presentation"><a
									class="nav-link" id="movies-tab" data-toggle="tab"
									href="#movies" role="tab" aria-controls="movies"
									aria-selected="false">Movies</a></li>
								<li class="nav-item" role="presentation"><a
									class="nav-link" id="anime-tab" data-toggle="tab" href="#anime"
									role="tab" aria-controls="anime" aria-selected="false">Anime</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade show active" id="tvShow" role="tabpanel"
						aria-labelledby="tvShow-tab">
						<div class="ucm-active owl-carousel">
							<div class="movie-item mb-50">
								<div class="movie-poster">
									<a href="movie-details.html"><img
										src="<c:url value='/resources/img/poster/reply1988.jpg'/>" alt=""></a>
								</div>
								<div class="movie-content">
									<div class="top">
										<h5 class="title">
											<a href="movie-details.html">Lời Hồi Đáp 1988</a>
										</h5>
										<span class="date">06/11/2015</span>
									</div>
									<div class="bottom">
										<ul>
											<li><span class="quality">HD</span></li>
											<li><span class="duration"><i
													class="far fa-clock"></i> 20 Tập</span> <span class="rating"><i
													class="fas fa-thumbs-up"></i> 5.0</span></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="movie-item mb-50">
								<div class="movie-poster">
									<a href="movie-details.html"><img
									
										src="<c:url value='/resources/img/poster/bacsima.jpg'/>" alt=""></a>
								</div>
								<div class="movie-content">
									<div class="top">
										<h5 class="title">
											<a href="movie-details.html"> Bác Sĩ Ma </a>
										</h5>
										<span class="date">03/01/2022</span>
									</div>
									<div class="bottom">
										<ul>
											<li><span class="quality">4k</span></li>
											<li><span class="duration"><i
													class="far fa-clock"></i> 16 tập</span> <span class="rating"><i
													class="fas fa-thumbs-up"></i> 4.3</span></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="movie-item mb-50">
								<div class="movie-poster">
									<a href="movie-details.html"><img
										src="<c:url value='/resources/img/poster/vedepdichthuc.jpg'/>" alt=""></a>
								</div>
								<div class="movie-content">
									<div class="top">
										<h5 class="title">
											<a href="movie-details.html">Vẻ Đẹp Đích Thực</a>
										</h5>
										<span class="date">09/12/2020 </span>
									</div>
									<div class="bottom">
										<ul>
											<li><span class="quality">HD</span></li>
											<li><span class="duration"><i
													class="far fa-clock"></i> 16 tập</span> <span class="rating"><i
													class="fas fa-thumbs-up"></i> 4.8</span></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="movie-item mb-50">
								<div class="movie-poster">
									<a href="movie-details.html"><img
										src="<c:url value='/resources/img/poster/nhungbacsitaihoa.jpg'/>" alt=""></a>
								</div>
								<div class="movie-content">
									<div class="top">
										<h5 class="title">
											<a href="movie-details.html">Những Bác Sĩ Tài Hoa </a>
										</h5>
										<span class="date">12/03/2020</span>
									</div>
									<div class="bottom">
										<ul>
											<li><span class="quality">HD</span></li>
											<li><span class="duration"><i
													class="far fa-clock"></i> 12 Tập</span> <span class="rating"><i
													class="fas fa-thumbs-up"></i> 3.5</span></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="movie-item mb-50">
								<div class="movie-poster">
									<a href="movie-details.html"><img
										src="<c:url value='/resources/img/poster/vincenzo.jpg'/>" alt=""></a>
								</div>
								<div class="movie-content">
									<div class="top">
										<h5 class="title">
											<a href="movie-details.html">Vincenzo</a>
										</h5>
										<span class="date">02/05/2021
									<div class="bottom">
										<ul>
											<li><span class="quality">HD</span></li>
											<li><span class="duration"><i
													class="far fa-clock"></i> 20 Tập</span> <span class="rating"><i
													class="fas fa-thumbs-up"></i> 5.0</span></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="tab-pane fade" id="movies" role="tabpanel"
						aria-labelledby="movies-tab">
						<div class="ucm-active owl-carousel">
							<div class="movie-item mb-50">
								<div class="movie-poster">
									<a href="movie-details.html"><img
										src="<c:url value='/resources/img/poster/wakanda.jpg'/>" alt=""></a>
								</div>
								<div class="movie-content">
									<div class="top">
										<h5 class="title">
											<a href="movie-details.html">Chiến Binh Báo Đen: Wakanda Bất Diệt (2022)</a>
										</h5>
										<span class="date">11/11/2022</span>
									</div>
									<div class="bottom">
										<ul>
											<li><span class="quality">hd</span></li>
											<li><span class="duration"><i
													class="far fa-clock"></i> 148 min</span> <span class="rating"><i
													class="fas fa-thumbs-up"></i> 4.5</span></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="movie-item mb-50">
								<div class="movie-poster">
									<a href="movie-details.html"><img
										src="<c:url value='/resources/img/poster/spiderman.jpg'/>" alt=""></a>
								</div>
								<div class="movie-content">
									<div class="top">
										<h5 class="title">
											<a href="movie-details.html">Spider-Man: Người Nhện Không Còn Nhà (2021)</a>
										</h5>
										<span class="date">09/02/2022</span>
									</div>
									<div class="bottom">
										<ul>
											<li><span class="quality">4k</span></li>
											<li><span class="duration"><i
													class="far fa-clock"></i> 148 min</span> <span class="rating"><i
													class="fas fa-thumbs-up"></i> 4.0</span></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="movie-item mb-50">
								<div class="movie-poster">
									<a href="movie-details.html"><img
										src="<c:url value='/resources/img/poster/Avatar2.jpg'/>" alt=""></a>
								</div>
								<div class="movie-content">
									<div class="top">
										<h5 class="title">
											<a href="movie-details.html">Avatar 2: Dòng Chảy Của Nước (2022)</a>
										</h5>
										<span class="date">12/16/2022</span>
									</div>
									<div class="bottom">
										<ul>
											<li><span class="quality">3d</span></li>
											<li><span class="duration"><i
													class="far fa-clock"></i> 192 min</span> <span class="rating"><i
													class="fas fa-thumbs-up"></i> 5.0</span></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="movie-item mb-50">
								<div class="movie-poster">
									<a href="movie-details.html"><img
										src="<c:url value='/resources/img/poster/venu.jpg'/>" alt=""></a>
								</div>
								<div class="movie-content">
									<div class="top">
										<h5 class="title">
											<a href="movie-details.html">Vệ Nữ (2022)</a>
										</h5>
										<span class="date">12/02/2022</span>
									</div>
									<div class="bottom">
										<ul>
											<li><span class="quality">4k</span></li>
											<li><span class="duration"><i
													class="far fa-clock"></i> 128 min</span> <span class="rating"><i
													class="fas fa-thumbs-up"></i> 3.8</span></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="movie-item mb-50">
								<div class="movie-poster">
									<a href="movie-details.html"><img
										src="<c:url value='/resources/img/poster/narnia.jpg'/>" alt=""></a>
								</div>
								<div class="movie-content">
									<div class="top">
										<h5 class="title">
											<a href="movie-details.html">Biên Niên Sử Narnia: Sư Tử, Phù Thủy và Cái Tủ Áo (2005)</a>
										</h5>
										<span class="date">12/09/2005 </span>
									</div>
									<div class="bottom">
										<ul>
											<li><span class="quality">hd</span></li>
											<li><span class="duration"><i
													class="far fa-clock"></i> 143 min</span> <span class="rating"><i
													class="fas fa-thumbs-up"></i> 3.5</span></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="tab-pane fade" id="anime" role="tabpanel"
						aria-labelledby="anime-tab">
						<div class="ucm-active owl-carousel">
							<div class="movie-item mb-50">
								<div class="movie-poster">
									<a href="movie-details.html"><img
										src="<c:url value='/resources/img/poster/ucm_poster01.jpg'/>" alt=""></a>
								</div>
								<div class="movie-content">
									<div class="top">
										<h5 class="title">
											<a href="movie-details.html">Women's Day</a>
										</h5>
										<span class="date">2021</span>
									</div>
									<div class="bottom">
										<ul>
											<li><span class="quality">hd</span></li>
											<li><span class="duration"><i
													class="far fa-clock"></i> 128 min</span> <span class="rating"><i
													class="fas fa-thumbs-up"></i> 3.5</span></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="movie-item mb-50">
								<div class="movie-poster">
									<a href="movie-details.html"><img
										src="<c:url value='/resources/img/poster/ucm_poster02.jpg'/>" alt=""></a>
								</div>
								<div class="movie-content">
									<div class="top">
										<h5 class="title">
											<a href="movie-details.html">The Perfect Match</a>
										</h5>
										<span class="date">2021</span>
									</div>
									<div class="bottom">
										<ul>
											<li><span class="quality">4k</span></li>
											<li><span class="duration"><i
													class="far fa-clock"></i> 128 min</span> <span class="rating"><i
													class="fas fa-thumbs-up"></i> 3.5</span></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="movie-item mb-50">
								<div class="movie-poster">
									<a href="movie-details.html"><img
										src="<c:url value='/resources/img/poster/ucm_poster03.jpg'/>" alt=""></a>
								</div>
								<div class="movie-content">
									<div class="top">
										<h5 class="title">
											<a href="movie-details.html">The Dog Woof</a>
										</h5>
										<span class="date">2021</span>
									</div>
									<div class="bottom">
										<ul>
											<li><span class="quality">hd</span></li>
											<li><span class="duration"><i
													class="far fa-clock"></i> 128 min</span> <span class="rating"><i
													class="fas fa-thumbs-up"></i> 3.5</span></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="movie-item mb-50">
								<div class="movie-poster">
									<a href="movie-details.html"><img
										src="<c:url value='/resources/img/poster/ucm_poster04.jpg'/>" alt=""></a>
								</div>
								<div class="movie-content">
									<div class="top">
										<h5 class="title">
											<a href="movie-details.html">The Easy Reach</a>
										</h5>
										<span class="date">2021</span>
									</div>
									<div class="bottom">
										<ul>
											<li><span class="quality">8k</span></li>
											<li><span class="duration"><i
													class="far fa-clock"></i> 128 min</span> <span class="rating"><i
													class="fas fa-thumbs-up"></i> 3.5</span></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="movie-item mb-50">
								<div class="movie-poster">
									<a href="movie-details.html"><img
										src="<c:url value='/resources/img/poster/ucm_poster05.jpg'/>" alt=""></a>
								</div>
								<div class="movie-content">
									<div class="top">
										<h5 class="title">
											<a href="movie-details.html">The Cooking</a>
										</h5>
										<span class="date">2021</span>
									</div>
									<div class="bottom">
										<ul>
											<li><span class="quality">hd</span></li>
											<li><span class="duration"><i
													class="far fa-clock"></i> 128 min</span> <span class="rating"><i
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

		<!-- top-rated-movie -->
		<section class="top-rated-movie tr-movie-bg"
			data-background="<c:url value='/resources/img/bg/tr_movies_bg.jpg'/>">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-8">
						<div class="section-title text-center mb-50">
							<h2 class="title">Top Rated Movies</h2>
						</div>
					</div>
				</div>
				<div class="row tr-movie-active">
					<div
						class="col-xl-3 col-lg-4 col-sm-6 grid-item grid-sizer cat-two">
						<div class="movie-item mb-60">
							<div class="movie-poster">
								<a href="movie-details.html"><img
									src="<c:url value='/resources/img/poster/bacsima.jpg'/>" alt=""></a>
							</div>
							<div class="movie-content">
								<div class="top">
									<h5 class="title">
										<a href="movie-details.html">Bác Sĩ Ma</a>
									</h5>
									<span class="date">03/01/2022</span>
								</div>
								<div class="bottom">
									<ul>
										<li><span class="quality">hd</span></li>
										<li><span class="duration"><i class="far fa-clock"></i>
												16 Tập</span> <span class="rating"><i
												class="fas fa-thumbs-up"></i> 4.3</span></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div
						class="col-xl-3 col-lg-4 col-sm-6 grid-item grid-sizer cat-one cat-three">
						<div class="movie-item mb-60">
							<div class="movie-poster">
								<a href="movie-details.html"><img
									src="<c:url value='/resources/img/poster/reply1988.jpg'/>" alt=""></a>
							</div>
							<div class="movie-content">
								<div class="top">
									<h5 class="title">
										<a href="movie-details.html">Lời Hồi Đáp 1988</a>
									</h5>
									<span class="date">06/11/2015</span>
								</div>
								<div class="bottom">
									<ul>
										<li><span class="quality">HD</span></li>
										<li><span class="duration"><i class="far fa-clock"></i>
												20 Tập</span> <span class="rating"><i
												class="fas fa-thumbs-up"></i> 4.5</span></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div
						class="col-xl-3 col-lg-4 col-sm-6 grid-item grid-sizer cat-two">
						<div class="movie-item mb-60">
							<div class="movie-poster">
								<a href="movie-details.html"><img
									src="<c:url value='/resources/img/poster/nhungbacsitaihoa.jpg'/>" alt=""></a>
							</div>
							<div class="movie-content">
								<div class="top">
									<h5 class="title">
										<a href="movie-details.html">Những Bác Sĩ Tài Hoa</a>
									</h5>
									<span class="date">12/03/2020</span>
								</div>
								<div class="bottom">
									<ul>
										<li><span class="quality">HD</span></li>
										<li><span class="duration"><i class="far fa-clock"></i>
												12 Tập</span> <span class="rating"><i
												class="fas fa-thumbs-up"></i> 3.5</span></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div
						class="col-xl-3 col-lg-4 col-sm-6 grid-item grid-sizer cat-one cat-three">
						<div class="movie-item mb-60">
							<div class="movie-poster">
								<a href="movie-details.html"><img
									src="<c:url value='/resources/img/poster/vedepdichthuc.jpg'/>" alt=""></a>
							</div>
							<div class="movie-content">
								<div class="top">
									<h5 class="title">
										<a href="movie-details.html">Vẻ Đẹp Đích Thực</a>
									</h5>
									<span class="date">09/12/2020</span>
								</div>
								<div class="bottom">
									<ul>
										<li><span class="quality">HD</span></li>
										<li><span class="duration"><i class="far fa-clock"></i>
												16 Tập</span> <span class="rating"><i
												class="fas fa-thumbs-up"></i> 4.8</span></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div
						class="col-xl-3 col-lg-4 col-sm-6 grid-item grid-sizer cat-two">
						<div class="movie-item mb-60">
							<div class="movie-poster">
								<a href="movie-details.html"><img
									src="<c:url value='/resources/img/poster/vincenzo.jpg'/>" alt=""></a>
							</div>
							<div class="movie-content">
								<div class="top">
									<h5 class="title">
										<a href="movie-details.html">Vincenzo</a>
									</h5>
									<span class="date">02/05/2021</span>
								</div>
								<div class="bottom">
									<ul>
										<li><span class="quality">HD</span></li>
										<li><span class="duration"><i class="far fa-clock"></i>
												20 Tập</span> <span class="rating"><i
												class="fas fa-thumbs-up"></i> 5.0</span></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div
						class="col-xl-3 col-lg-4 col-sm-6 grid-item grid-sizer cat-one cat-three">
						<div class="movie-item mb-60">
							<div class="movie-poster">
								<a href="movie-details.html"><img
									src="<c:url value='/resources/img/poster/wakanda.jpg'/>" alt=""></a>
							</div>
							<div class="movie-content">
								<div class="top">
									<h5 class="title">
										<a href="movie-details.html">Chiến Binh Báo Đen: Wakanda Bất Diệt (2022)</a>
									</h5>
									<span class="date">11/11/2022</span>
								</div>
								<div class="bottom">
									<ul>
										<li><span class="quality">HD</span></li>
										<li><span class="duration"><i class="far fa-clock"></i>
												148 min</span> <span class="rating"><i
												class="fas fa-thumbs-up"></i> 4.5</span></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div
						class="col-xl-3 col-lg-4 col-sm-6 grid-item grid-sizer cat-two">
						<div class="movie-item mb-60">
							<div class="movie-poster">
								<a href="movie-details.html"><img
									src="<c:url value='/resources/img/poster/spiderman.jpg'/>" alt=""></a>
							</div>
							<div class="movie-content">
								<div class="top">
									<h5 class="title">
										<a href="movie-details.html">Spider Man: Người Nhện Không Còn Nhà (2021)</a>
									</h5>
									<span class="date">09/02/2021</span>
								</div>
								<div class="bottom">
									<ul>
										<li><span class="quality">HD</span></li>
										<li><span class="duration"><i class="far fa-clock"></i>
												148 min</span> <span class="rating"><i
												class="fas fa-thumbs-up"></i> 4.0</span></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div
						class="col-xl-3 col-lg-4 col-sm-6 grid-item grid-sizer cat-one cat-three">
						<div class="movie-item mb-60">
							<div class="movie-poster">
								<a href="movie-details.html"><img
									src="<c:url value='/resources/img/poster/Avatar2.jpg'/>" alt=""></a>
							</div>
							<div class="movie-content">
								<div class="top">
									<h5 class="title">
										<a href="movie-details.html">Avatar 2: Dòng Chảy Của Nước (2022)</a>
									</h5>
									<span class="date">12/16/2022</span>
								</div>
								<div class="bottom">
									<ul>
										<li><span class="quality">HD</span></li>
										<li><span class="duration"><i class="far fa-clock"></i>
												192 min</span> <span class="rating"><i
												class="fas fa-thumbs-up"></i> 5.0</span></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- top-rated-movie-end -->

		<!-- live-area -->
		<section class="live-area live-bg fix"
			data-background="<c:url value='/resources/img/bg/live_bg.jpg'/>">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-xl-5 col-lg-6">
						<div class="section-title title-style-two mb-25">
							<h2 class="title">Live Movie & TV Shows For Friends & Family</h2>
						</div>
						<div class="live-movie-content">
							<p>Lorem ipsum dolor sit amet, consecetur adipiscing elseddo
								eiusmod There are many variations of passages of lorem Ipsum
								available, but the majority have suffered alteration.</p>
							<div class="live-fact-wrap">
								<div class="resolution">
									<h2>HD 4K</h2>
								</div>
								<div class="active-customer">
									<h4>
										<span class="odometer" data-count="20"></span>K+
									</h4>
									<p>Active Customer</p>
								</div>
							</div>
							<a href="https://www.youtube.com/watch?v=R2gbPxeNk2E"
								class="btn popup-video"><i class="fas fa-play"></i> Watch
								Now</a>
						</div>
					</div>
					<div class="col-xl-7 col-lg-6">
						<div class="live-movie-img wow fadeInRight" data-wow-delay=".2s"
							data-wow-duration="1.8s">
							<img src="<c:url value='/resources/img/images/live_img.png'/>" alt="">
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- live-area-end -->

		<!-- tv-series-area -->
		<section class="tv-series-area tv-series-bg"
			data-background="<c:url value='/resources/img/bg/tv_series_bg.jpg'/>">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-8">
						<div class="section-title text-center mb-50">
							<span class="sub-title">Best TV Series</span>
							<h2 class="title">World Best TV Series</h2>
						</div>
					</div>
				</div>
				<div class="row justify-content-center">
					<div class="col-xl-3 col-lg-4 col-sm-6">
						<div class="movie-item mb-50">
							<div class="movie-poster">
								<a href="movie-details.html"><img
									src="<c:url value='/resources/img/poster/ucm_poster09.jpg'/>" alt=""></a>
							</div>
							<div class="movie-content">
								<div class="top">
									<h5 class="title">
										<a href="movie-details.html">Women's Day</a>
									</h5>
									<span class="date">2021</span>
								</div>
								<div class="bottom">
									<ul>
										<li><span class="quality">hd</span></li>
										<li><span class="duration"><i class="far fa-clock"></i>
												128 min</span> <span class="rating"><i
												class="fas fa-thumbs-up"></i> 3.5</span></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-4 col-sm-6">
						<div class="movie-item mb-50">
							<div class="movie-poster">
								<a href="movie-details.html"><img
									src="<c:url value='/resources/img/poster/ucm_poster10.jpg'/>" alt=""></a>
							</div>
							<div class="movie-content">
								<div class="top">
									<h5 class="title">
										<a href="movie-details.html">The Perfect Match</a>
									</h5>
									<span class="date">2021</span>
								</div>
								<div class="bottom">
									<ul>
										<li><span class="quality">4k</span></li>
										<li><span class="duration"><i class="far fa-clock"></i>
												128 min</span> <span class="rating"><i
												class="fas fa-thumbs-up"></i> 3.5</span></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-4 col-sm-6">
						<div class="movie-item mb-50">
							<div class="movie-poster">
								<a href="movie-details.html"><img
									src="<c:url value='/resources/img/poster/ucm_poster03.jpg'/>" alt=""></a>
							</div>
							<div class="movie-content">
								<div class="top">
									<h5 class="title">
										<a href="movie-details.html">The Dog Woof</a>
									</h5>
									<span class="date">2021</span>
								</div>
								<div class="bottom">
									<ul>
										<li><span class="quality">hd</span></li>
										<li><span class="duration"><i class="far fa-clock"></i>
												128 min</span> <span class="rating"><i
												class="fas fa-thumbs-up"></i> 3.5</span></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-4 col-sm-6">
						<div class="movie-item mb-50">
							<div class="movie-poster">
								<a href="movie-details.html"><img
									src="<c:url value='/resources/img/poster/ucm_poster04.jpg'/>" alt=""></a>
							</div>
							<div class="movie-content">
								<div class="top">
									<h5 class="title">
										<a href="movie-details.html">The Easy Reach</a>
									</h5>
									<span class="date">2021</span>
								</div>
								<div class="bottom">
									<ul>
										<li><span class="quality">hd</span></li>
										<li><span class="duration"><i class="far fa-clock"></i>
												128 min</span> <span class="rating"><i
												class="fas fa-thumbs-up"></i> 3.5</span></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- tv-series-area-end -->

		<!-- newsletter-area -->
		<section class="newsletter-area newsletter-bg"
			data-background="<c:url value='/resources/img/bg/newsletter_bg.jpg'/>">
			<div class="container">
				<div class="newsletter-inner-wrap">
					<div class="row align-items-center">
						<div class="col-lg-6">
							<div class="newsletter-content">
								<h4>Trial Start First 30 Days.</h4>
								<p>Enter your email to create or restart your membership.</p>
							</div>
						</div>
						<div class="col-lg-6">
							<form action="#" class="newsletter-form">
								<input type="email" required placeholder="Enter your email">
								<button class="btn">get started</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- newsletter-area-end -->

	</main>
	<!-- main-area-end -->


	<!-- footer-area -->
	<%@include file="footer.jsp"%>
	<!-- footer-area-end -->
</body>
</html>
</html>