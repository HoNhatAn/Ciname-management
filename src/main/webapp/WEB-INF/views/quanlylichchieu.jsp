<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="Admin_header.jsp"%>
<div class="container-xl">
	<div class="table-title">
		<div class="row">
			<div class="col-sm-6">
				<h2>
					Quản Lý <b>Lịch Chiếu</b>
				</h2>
			</div>
			<div class="col-sm-6">
				<a href="./quanlylichchieu/add_LichChieu" class="btn btn-success"><i
					class="material-icons">&#xE147;</i> <span>Thêm Lịch Chiếu Mới</span></a> 
			</div>
		</div>
	</div>
	<div class="table-responsive">
		<div class="table-wrapper">

			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th>Phim ID</th>
						<th>Phòng Chiếu ID</th>
						<th>Thời Lượng Quảng Cáo</th>
						<th>Thời Lượng Chiếu Chính</th>
						<th>Thời Gian Bắt Đầu</th>
						<th>Thời Gian Kết Thúc</th>
						<th>Chỉnh Sửa</th>
						<th>Xóa</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${LichChieuList != null && LichChieuList.size() > 0 }">
							<c:forEach items="${LichChieuList }" var="item">
								<tr>

									<td class="css-td">${item.phim_id}</td>
									<td class="css-td">${item.phong_id }</td>
									<td class="css-td">${item.thoi_luong_quang_cao }</td>
									<td class="css-td">${item.thoi_luong_chieu_chinh }</td>
									<td class="css-td">${item.thoi_gian_bat_dau }</td>
									<td class="css-td">${item.thoi_gian_ket_thuc }</td>
									<td><c:url value="/quanlylichchieu/update_LichChieu"
											var="update_LichChieu">
											<c:param name="LichChieuId" value="${item.id}"></c:param>
										</c:url> <a href="${update_LichChieu}"><button class="btn btn-success">Chỉnh
												Sửa</button></a></td>
									<td><c:url value="/quanlylichchieu/delete_LichChieu"
											var="delete_LichChieu">
											<c:param name="LichChieuId" value="${item.id}"></c:param>
										</c:url> <a href="${delete_LichChieu}"
										onclick="if (!(confirm('Bạn muốn xóa lịch chiếu này?'))) return false"><button
												class="btn btn-success">Xóa</button></a></td>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td  style="text-align: center;" colspan="13"><b style="font-size: 20px">Chưa có lịch chiếu nào ở đây!</b></td>
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