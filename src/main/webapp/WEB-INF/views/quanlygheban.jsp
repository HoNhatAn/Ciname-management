<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="Admin_header.jsp"%>
<div class="container-xl">
	<div class="table-title">
		<div class="row">
			<div class="col-sm-6">
				<h2>
					Quản Lý <b>Khách Hàng</b>
				</h2>
			</div>

		</div>
	</div>
	<div class="table-responsive">
		<div class="table-wrapper">

			<table class="table table-striped table-hover">
				<thead>
					<tr>
									<th >ID Khách Hàng</th>
									<th >Họ Tên Khách Hàng</th>
									<th >Tên Phim</th>
									<th > Ngày Đặt</th>
									<th >Tên Ghế</th>
									<th >Ngày Chiếu</th>
									<th >Phòng Chiếu</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${ghebansList != null && ghebansList.size() > 0 }">
							<c:forEach items="${ghebansList }" var="item">
								<tr>
										<td class="css-td">${item.getKhachHang().id}</td>
										<td class="css-td">${item.getKhachHang().ho_va_ten}</td>
										<td class="css-td">${item.getLichChieu().getPhim().ten_phim }</td>
										<td class="css-td">${item.ngay_dat}</td>
										<td class="css-td">${item.ten_ghe}</td>
										<td class="css-td">${item.getLichChieu().thoi_gian_bat_dau } </td>
										<td class="css-td">${item.getLichChieu().getPhong().ten_phong }</td>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="5">Chưa có khách hàng nào ở đây!</td>
							</tr>
						</c:otherwise>
					</c:choose>
				</tbody>
			</table>
		</div>
	</div>
</div>
</body>
</html>