<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="Admin_header.jsp"%>
<div class="container-xl">
	<div class="table-title">
		<div class="row">
			<div class="col-sm-6">
				<h2>
					Quản Lý <b>Phòng Chiếu</b>
				</h2>
			</div>
			<div class="col-sm-6">
				<a href="./quanlyphong/add_Phong" class="btn btn-success"><i
					class="material-icons">&#xE147;</i> <span>Thêm Phòng Chiếu Mới</span></a> 
			</div>
		</div>
	</div>
	<div class="table-responsive">
		<div class="table-wrapper">

			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th>ID Phòng </th>
						<th>Tên Phòng</th>
						<th>Tình Trạng</th>
						<th>Hàng Dọc</th>
						<th>Hàng Ngang</th>
						<th>Chỉnh Sửa</th>
						<th>Xóa</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${PhongList != null && PhongList.size() > 0 }">
							<c:forEach items="${PhongList }" var="item">
								<tr>
									<td class="css-td">${item.id }</td>
									<td class="css-td">${item.ten_phong }</td>
									<td class="css-td">${item.tinh_trang }</td>
									<td class="css-td">${item.hangdoc }</td>
									<td class="css-td">${item.hangngang }</td>
									<td><c:url value="/quanlyphong/update_Phong"
											var="update_Phong">
											<c:param name="PhongId" value="${item.id}"></c:param>
										</c:url> <a href="${update_Phong}"><button class="btn btn-success">Chỉnh Sửa</button></a></td>
									<td><c:url value="/quanlyphong/delete_Phong"
											var="delete_Phong">
											<c:param name="PhongId" value="${item.id}"></c:param>
										</c:url> <a href="${delete_Phong}"
										onclick="if (!(confirm('Bạn muốn xóa phòng này?'))) return false"><button
												class="btn btn-success">Xóa</button></a></td>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td  style="text-align: center;" colspan="13"><b style="font-size: 20px">Chưa có phòng nào ở đây!</b></td>
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