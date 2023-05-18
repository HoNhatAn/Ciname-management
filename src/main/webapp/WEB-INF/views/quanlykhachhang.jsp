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
						<th>Họ và Tên</th>
						<th>Email</th>
						<th>Ngày Sinh</th>
						<th>Số Điện Thoại</th>
						<th>Địa Chỉ</th>
						<th>Giới Tính</th>
						<th>Xóa</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${KhachHangList != null && KhachHangList.size() > 0 }">
							<c:forEach items="${KhachHangList }" var="item">
								<tr>

									<td class="css-td">${item.ho_va_ten }</td>
									<td class="css-td">${item.email }</td>
									<td class="css-td">${item.ngay_sinh }</td>
									<td class="css-td">${item.so_dien_thoai }</td>
									<td class="css-td">${item.dia_chi}</td>
									<td class="css-td">${item.gioi_tinh }</td>

									<td><c:url value="/quanlykhachhang/delete_KhachHang"
											var="delete_KhachHang">
											<c:param name="khachHangId" value="${item.id}"></c:param>
										</c:url> <a href="${delete_KhachHang}"
										onclick="if (!(confirm('Bạn muốn xóa khách hàng này?'))) return false"><button
												class="btn btn-success">Xóa</button></a></td>
												
									<%-- 
									<td><c:url value="/quanlykhachhang/update_KhachHang"
											var="update_KhachHang">
											<c:param name="khachHangId" value="${item.id}"></c:param>
										</c:url> <a href="${update_KhachHang}"><button class="btn btn-success">Chỉnh
												Sửa</button></a></td> --%>
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