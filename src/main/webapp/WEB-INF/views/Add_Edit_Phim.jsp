<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@include file="Admin_header.jsp"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<div class="container">
	<form:form method="POST" action="add_Phim" modelAttribute="Phim">
		<div class="modal-header">
			<c:if test="${Phim.id !=0 }">
				<h2 class="modal-title">Cập Nhật Phim</h2>
			</c:if>
			<c:if test="${Phim.id ==0 }">
				<h2 class="modal-title">Thêm Phim</h2>
			</c:if>

		</div>
		<div class="modal-body">
			<form:hidden path="id" />
			<div class="form-group">
				<label for="ten_phim">Tên Phim</label>
				<form:input path="ten_phim" cssClass="form-control"
					placeholder="Tên Phim" />
				<form:errors path="ten_phim" cssClass="error" />
			</div>
			<div class="form-group">
				<label for="slug_ten_phim">Slug</label>
				<form:input path="slug_ten_phim" cssClass="form-control"
					placeholder="Slug" />
				<form:errors path="slug_ten_phim" cssClass="error" />
			</div>

			<div class="form-group">
				<label for="ngay_khoi_chieu">Ngày Khởi Chiếu</label>
				<form:input type="date" path="ngay_khoi_chieu"
					cssClass="form-control" placeholder="Ngày Khởi Chiếu" />
				<form:errors path="ngay_khoi_chieu" cssClass="error" />
			</div>
			<div class="form-group">
				<label for="dao_dien">Đạo Diễn</label>
				<form:input path="dao_dien" cssClass="form-control"
					placeholder="Đạo Diễn" />
				<form:errors path="dao_dien" cssClass="error" />
			</div>

			<div class="form-group">
				<label for="dien_vien">Diễn Viên</label>
				<form:input path="dien_vien" cssClass="form-control"
					placeholder="Diễn Viên" />
				<form:errors path="dien_vien" cssClass="error" />
			</div>
			<div class="form-group">
				<label for="thoi_luong">Thời Lượng</label>
				<form:input path="thoi_luong" cssClass="form-control"
					placeholder="Thời Lượng" />
				<form:errors path="thoi_luong" cssClass="error" />
			</div>
			<div class="form-group">
				<label for="mo_ta">Mô Tả</label>
				<form:input path="mo_ta" cssClass="form-control" placeholder="Mô Tả" />
				<form:errors path="mo_ta" cssClass="error" />
			</div>
			<div class="form-group">
				<label for="the_loai">Thể Loại</label>
				<form:input path="the_loai" cssClass="form-control"
					placeholder="Thể Loại" />
				<form:errors path="the_loai" cssClass="error" />
			</div>
			<div class="form-group">
				<label for="avatar">avatar</label>
				<form:input path="avatar" cssClass="form-control"
					placeholder="Avatar" />
				<form:errors path="avatar" cssClass="error" />
			</div>
			<div class="form-group">
				<label for="trailer">Trailer</label>
				<form:input path="trailer" cssClass="form-control"
					placeholder="Trailer" />
				<form:errors path="trailer" cssClass="error" />
			</div>
			<div class="form-group">
				<label for="tinh_trang">Tình Trạng</label>
				<form:input path="tinh_trang" cssClass="form-control"
					placeholder="Tình Trạng" />
				<form:errors path="tinh_trang" cssClass="error" />
			</div>
			<c:if test="${Phim.id !=0 }">
				<button type="submit" class="btn btn-success">Cập Nhật</button>
			</c:if>
			<c:if test="${Phim.id ==0 }">
				<button type="submit" class="btn btn-success">Thêm</button>
			</c:if>
			<a href="<c:url value='/quanlyphim'/>"><button
					style="float: right; margin-right: 60px" class="btn btn-success">Hủy
				</button></a>

		</div>
	</form:form>

</div>
</body>
</html>