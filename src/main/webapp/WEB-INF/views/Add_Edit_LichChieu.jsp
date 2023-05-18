<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@include file="Admin_header.jsp"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<div class="container">
		<form:form method="POST" action="add_LichChieu"
			modelAttribute="LichChieu">
			<div class="modal-header">
				<c:if test="${LichChieu.id !=0 }">
					<h2 class="modal-title">Cập Nhật Lịch Chiếu</h2>
				</c:if>
				<c:if test="${LichChieu.id ==0 }">
					<h2 class="modal-title">Thêm Lịch Chiếu</h2>
				</c:if>

			</div>
			<div class="modal-body">
				<form:hidden path="id" />
				<div class="form-group">
					<label for="phong_id">Phòng</label>
					<form:select path="phong_id">
						<form:options items="${PhongList }" itemValue="id"
							itemLabel="ten_phong" />
					</form:select>
					<form:errors path="phong_id" cssClass="error" />
				</div>
				<div class="form-group">
					<label for="phim_id">Phim</label>
					<form:select path="phim_id">
						<form:options items="${PhimList }" itemValue="id"
							itemLabel="ten_phim" />
					</form:select>
					<form:errors path="phim_id" cssClass="error" />
				</div>
				<div class="form-group">
					<label for="thoi_luong_chieu_chinh">Thời Lượng Chiếu Chính</label>
					<form:input type="number" path="thoi_luong_chieu_chinh" step="any"
						pattern="[-+]?[0-9]*[.,]?[0-9]+" placeholder="phút" />
					<form:errors path="thoi_luong_chieu_chinh" cssClass="error" />
				</div>
				<div class="form-group">
					<label for="thoi_luong_quang_cao">Thời Lượng Quảng Cáo</label>
					<form:input type="number" path="thoi_luong_quang_cao" step="any"
						pattern="[-+]?[0-9]*[.,]?[0-9]+" placeholder="phút" />
					<form:errors path="thoi_luong_quang_cao" cssClass="error" />
				</div>
				<div class="form-group">
					<label for="thoi_gian_bat_dau">Thời Gian Bắt Đầu</label>
					<form:input type="datetime-local" 
					path="thoi_gian_bat_dau"  placeholder="Thời Gian Bắt Đầu" />
					<form:errors path="thoi_gian_bat_dau" cssClass="error" />
				</div>
								<div class="form-group">
					<label for="thoi_gian_ket_thuc">Thời Gian Kết Thúc</label>
					<form:input type="datetime-local" path="thoi_gian_ket_thuc"
					datetime="YYYY-MM-DD hh:mm:ss"
					  placeholder="Thời Gian Kết Thúc" />
					<form:errors path="thoi_gian_ket_thuc" cssClass="error" />
				</div>

				<c:if test="${LichChieu.id !=0 }">
					<button type="submit" class="btn btn-success">Cập Nhật</button>
				</c:if>
				<c:if test="${LichChieu.id ==0 }">
					<button type="submit" class="btn btn-success">Thêm</button>
				</c:if>
				<a href="<c:url value='/quanlylichchieu'/>"><button style="float:right;margin-right: 60px " class="btn btn-success">Hủy </button></a>
			</div>
		</form:form>

	</div>
</body>
</html>