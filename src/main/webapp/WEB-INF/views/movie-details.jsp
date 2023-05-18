<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<style>
thead {
	opacity: 0.5;
	background-color: Gray;
}

.datcho {
	font-size: 15px;
	font-weight: bold;
	border: none;
	min-width: 50px;
	border-radius: 2px;
	border: none;
	outline: none !important;
	color: #fff;
	background-color: #28a745;
	border-color: #28a745;
}

.blink {
	animation: blinker 0.6s linear infinite;
	color: red;
	text-align: center;
	margin-top: 50px;
}

@
keyframes blinker { 50% {
	opacity: 0;
}

}
.table {
	margin-top: 50px;
	text-align: center;
}

.table td, .table tr th {
	opacity: 0.5;
	background-color: rgba(255, 255, 255, 0);
	text-align: center;
	padding: .75rem;
	vertical-align: top;
	border-top: 1px solid;
	border-right: 1px solid;
	border-left: 1px solid;
	border-bottom: 1px solid;
}

table.table-striped.table-hover tbody tr:hover {
	background: #FFCCFF;
	opacity: 0.5;
	/* #566787 */
}
</style>
<title>Movfix - Online Movies & TV Shows Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="shortcut icon" type="image/x-icon"
	href="<c:url value='/resources/img/favicon.png'/>">
<!-- Place favicon.ico in the root directory -->

<%@include file="header.jsp"%>
<!-- header-area-end -->


<!-- main-area -->
<main>

	<!-- movie-details-area -->
	<section class="movie-details-area" style="padding: 10px 0 120px;"
		data-background="<c:url value='/resources/img/bg/movie_details_bg.jpg'/>">
		<div class="container">
			<div class="row align-items-center position-relative">
				<div class="col-xl-3 col-lg-4">
					<div class="movie-details-img">
						<img src="${phim.avatar }" alt=""> <a
							href="${phim.trailer }" class="popup-video"><img
							src="<c:url value='/resources/img/images/play_icon.png'/>" alt=""></a>
					</div>
				</div>
				<div class="col-xl-6 col-lg-8">
					<div class="movie-details-content">
						<h5>${phim.tinh_trang}</h5>
						<h2>${phim.ten_phim}</h2>
						<div class="banner-meta">
							<ul>
								<li class="quality"><span>Pg 16</span> <span>HD</span></li>
								<li class="category"><span><i></i>${phim.the_loai }</span></li>

								<li class="release-time"><span><i
										class="far fa-calendar-alt"></i> ${phim.ngay_khoi_chieu}</span> <span><i
										class="far fa-clock"></i>${phim.thoi_luong } phút</span></li>
							</ul>
						</div>
						<p>${phim.mo_ta}</p>
						<div class="movie-details-prime">
							<ul>
								<li class="share"><a href="#"><i
										class="fas fa-share-alt"></i> Share</a></li>
								<li class="streaming">
									<h6>Prime Video</h6> <span>Streaming Channels</span>
								</li>
								<li class="watch"><a href="${phim.trailer }"
									class="btn popup-video"><i class="fas fa-play"></i> TRAILER</a></li>
							</ul>
						</div>
					</div>
				</div>
				<%-- 		<div class="movie-details-btn">
					<a href="${phim.trailer }" class="download-btn">Đặt Chỗ <img src="<c:url value='/resources/fonts/download.svg'/>" alt=""></a>
				</div> --%>

				<c:choose>
					<c:when test="${lichchieu != null && lichchieu.size() > 0 }">
						<table class="table table-striped table-hover"
							style="color: yellow;">
							<thead>
								<tr>
									<th style="border-bottom: 1px solid">Phòng Chiếu</th>
									<th style="border-bottom: 1px solid">Thời Gian Bắt Đầu</th>
									<th style="border-bottom: 1px solid">Thời Gian Kết Thúc</th>
									<th style="border-bottom: 1px solid">Thời Lượng Chiếu
										Chính</th>
									<th style="border-bottom: 1px solid">Thời Lượng Quảng Cáo</th>
									<th style="border-bottom: 1px solid">Link Đặt Chỗ</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach items="${lichchieu }" var="item">
									<tr>
										<td class="css-td">${item.getPhong().ten_phong }</td>
										<td class="css-td">${item.thoi_gian_bat_dau }</td>
										<td class="css-td">${item.thoi_gian_ket_thuc }</td>
										<td class="css-td">${item.thoi_luong_chieu_chinh } phút</td>
										<td class="css-td">${item.thoi_luong_quang_cao } phút</td>
										<td class="css-td"><a
											href="/QuanLyRapChieuPhim/datcho/${item.id}">
												<button class="datcho">Đặt Chỗ</button>
										</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</c:when>
					<c:otherwise>
						<div style="width: 100%;">
							<h1 class="blink">Phim Này Chưa Có Lịch Chiếu!</h1>
						</div>
					</c:otherwise>
				</c:choose>
			</div>
		</div>

	</section>
	<!-- movie-details-area-end -->

</main>
<!-- main-area-end -->


<!-- footer-area -->
<%@include file="footer.jsp"%>
</body>
</html>
