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
		<div style="text-align: center;"><h2> LỊCH SỬ GIAO DỊCH : ${khachhang.ho_va_ten}</h2></div> 
		<div class="container">
				<c:choose>
					<c:when test="${lichsu != null && lichsu.size() > 0 }">
						<table class="table table-striped table-hover"
							style="color: yellow;">
							<thead>
								<tr>
									<th style="border-bottom: 1px solid">Tên Phim</th>
									<th style="border-bottom: 1px solid"> Ngày Đặt</th>
									<th style="border-bottom: 1px solid">Tên Ghế</th>
									<th style="border-bottom: 1px solid">Ngày Chiếu</th>
									<th style="border-bottom: 1px solid">Phòng Chiếu</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach items="${lichsu }" var="item">
									<tr>
										<td class="css-td">${item.getLichChieu().getPhim().ten_phim }</td>
										<td class="css-td">${item.ngay_dat}</td>
										<td class="css-td">${item.ten_ghe}</td>
										<td class="css-td">${item.getLichChieu().thoi_gian_bat_dau } </td>
										<td class="css-td">${item.getLichChieu().getPhong().ten_phong }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</c:when>
					<c:otherwise>
						<div style="width: 100%;">
							<h1 class="blink">Bạn chưa giao dịch lần nào!</h1>
						</div>
					</c:otherwise>
				</c:choose>
			</div>
	</section>
	<!-- movie-details-area-end -->

</main>
<!-- main-area-end -->


<!-- footer-area -->
<%@include file="footer.jsp"%>
</body>
</html>
