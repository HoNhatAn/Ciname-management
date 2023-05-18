<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="Admin_header.jsp"%>
<div class="container-xl">
	<div class="table-title">
		<div class="row">
			<div class="col-sm-6">
				<h2>
					Quản Lý <b>Phim</b>
				</h2>
			</div>
			<div class="col-sm-6">
				<a href="./quanlyphim/add_Phim" class="btn btn-success"><i
					class="material-icons">&#xE147;</i> <span>Thêm Phim Mới</span></a>
			</div>
		</div>
	</div>

	<div class="table-responsive">
		<div class="table-wrapper">
			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th>Tên Phim</th>
						<th>Slug</th>
						<th>Ngày Khởi Chiếu</th>
						<th>Đạo Diễn</th>
						<th>Diễn Viên</th>
						<th>Thời Lượng</th>
						<th>Mô Tả</th>
						<th>Thể Loại</th>
						<th>Avatar</th>
						<th>Trailer</th>
						<th>Tình Trạng</th>
						<th>Chỉnh Sửa</th>
						<th>Xóa</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${PhimList != null && PhimList.size() > 0 }">
							<c:forEach items="${PhimList }" var="item">
								<tr>

									<td class="css-td">${item.ten_phim }</td>
									<td class="css-td">${item.slug_ten_phim }</td>
									<td class="css-td">${item.ngay_khoi_chieu }</td>
									<td class="css-td">${item.dao_dien }</td>
									<td class="css-td">${item.dien_vien }</td>
									<td class="css-td">${item.thoi_luong }</td>
									<td class="css-td">${item.mo_ta }</td>
									<td class="css-td">${item.the_loai }</td>
									<td class="css-td">${item.avatar }</td>
									<td class="css-td"><a target="blank"
										href="${item.trailer }"><button class="btn btn-success">Link
												Trailer</button></a></td>
									<td class="css-td">${item.tinh_trang }</td>

									<td><c:url value="/quanlyphim/update_Phim"
											var="update_Phim">
											<c:param name="PhimId" value="${item.id}"></c:param>
										</c:url> <a href="${update_Phim}"><button class="btn btn-success">Chỉnh
												Sửa</button></a></td>
									<td><c:url value="/quanlyphim/delete_Phim"
											var="delete_Phim">
											<c:param name="PhimId" value="${item.id}"></c:param>
										</c:url> <a href="${delete_Phim}"
										onclick="if (!(confirm('Bạn muốn xóa phim này?'))) return false"><button
												class="btn btn-success">Xóa</button></a></td>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td style="text-align: center;" colspan="13"><b
									style="font-size: 20px">Chưa có phim nào ở đây!</b></td>
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