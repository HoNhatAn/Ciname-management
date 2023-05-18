<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="Admin_header.jsp"%>
<div class="container-xl">
	<div class="table-title">
		<div class="row">
			<div class="col-sm-6">
				<h2>
					Quản Lý <b>Ghế</b>
				</h2>
			</div>
			<div class="col-sm-6">
				<a href="./quanlyghe/add_Ghe" class="btn btn-success"><i
					class="material-icons">&#xE147;</i> <span>Thêm Ghế Mới</span></a> 
			</div>
		</div>
	</div>
	<div class="table-responsive">
		<div class="table-wrapper">

			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th>Tên ghế</th>
						<th>Tình Trạng</th>
				 		<th>ID Phòng</th>
						<th>Chỉnh Sửa</th>
						<th>Xóa</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${GheList != null && GheList.size() > 0 }">
							<c:forEach items="${GheList }" var="item">
								<tr>

									<td class="css-td">${item.ten_ghe }</td>
									<td class="css-td">${item.tinh_trang }</td>
									<td class="css-td">${item.phong_id }</td> 
									<td><c:url value="/quanlyghe/update_Ghe"
											var="update_Ghe">
											<c:param name="GheId" value="${item.id}"></c:param>
										</c:url> <a href="${update_Ghe}"><button class="btn btn-success">Chỉnh Sửa</button></a></td>
									<td><c:url value="/quanlyghe/delete_Ghe"
											var="delete_Ghe">
											<c:param name="GheId" value="${item.id}"></c:param>
										</c:url> <a href="${delete_Ghe}"
										onclick="if (!(confirm('Bạn muốn xóa ghế này?'))) return false"><button
												class="btn btn-success">Xóa</button></a></td>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td  style="text-align: center;" colspan="13"><b style="font-size: 20px">Chưa có ghế nào ở đây!</b></td>
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