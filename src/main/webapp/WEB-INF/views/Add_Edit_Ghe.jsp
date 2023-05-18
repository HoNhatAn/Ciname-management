<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@include file="Admin_header.jsp"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<div class="container">
		<form:form method="POST" action="add_Ghe" modelAttribute="Ghe">
			<div class="modal-header">
				<c:if test="${Ghe.id !=0 }">
					<h2 class="modal-title">Cập Nhật Ghế</h2>
				</c:if>
				<c:if test="${Ghe.id ==0 }">
					<h2 class="modal-title">Thêm Ghế</h2>
				</c:if>

			</div>
			<div class="modal-body">
				<form:hidden path="id" />
				<div class="form-group">
					<label for="ten_ghe">Tên Ghế</label>
					<form:input path="ten_ghe" cssClass="form-control"
						placeholder="Tên Ghế" />
					<form:errors path="ten_ghe" cssClass="error" />
				</div>
				<div class="form-group">
					<label for="tinh_trang">Tình Trạng</label>
					<form:select path="tinh_trang">
						<form:option  value="Còn Trống">Còn Trống</form:option>
						<form:option  value="Bảo Trì">Bảo Trì</form:option>
						<form:option  value="Đã Bán">Đã Bán</form:option>
					</form:select>
					<form:errors path="tinh_trang" cssClass="error" />
				</div>

				<div class="form-group">
					<label for="phong_id">Phòng</label>
					<form:select path="phong_id">
						<form:options items="${PhongList }" itemValue="id"  itemLabel="ten_phong"/>
					</form:select>
					<form:errors path="phong_id" cssClass="error" />
				</div>

				<c:if test="${Ghe.id !=0 }">
					<button type="submit" class="btn btn-success">Cập Nhật</button>
				</c:if>
				<c:if test="${Ghe.id ==0 }">
					<button type="submit" class="btn btn-success">Thêm</button>
				</c:if>
				<a href="<c:url value='/quanlyghe'/>"><button style="float:right;margin-right: 60px " class="btn btn-success">Hủy </button></a>
			</div>
		</form:form>

	</div>
</body>
</html>