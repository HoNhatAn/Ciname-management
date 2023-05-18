<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@include file="Admin_header.jsp"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<div class="container">
		<form:form method="POST" action="add_Phong" modelAttribute="Phong">
			<div class="modal-header">
							<c:if test="${Phong.id !=0 }">
				<h2 class="modal-title">Cập Nhật Phòng Chiếu</h2>
				</c:if>
					<c:if test="${Phong.id ==0 }">
				<h2 class="modal-title">Thêm Phòng Chiếu</h2>
				</c:if>
				
			</div>
			<div class="modal-body">
				<form:hidden path="id" />
				<div class="form-group">
					<label for="ten_phong">Tên Phòng</label>
					<form:input path="ten_phong" cssClass="form-control"
						placeholder="Tên Phòng Chiếu" />
					<form:errors path="ten_phong" cssClass="error" />
				</div>
				<div class="form-group">
					<label for="tinh_trang">Tình Trạng</label>
					<form:input path="tinh_trang" cssClass="form-control"
						placeholder="Tình Trạng" />
					<form:errors path="tinh_trang" cssClass="error" />
				</div>

				<div class="form-group">
					<label for="hangdoc">Hàng dọc</label>
					<form:input type="number" path="hangdoc"
						cssClass="form-control" placeholder="Hàng Dọc" />
					<form:errors path="hangdoc" cssClass="error" />
				</div>
				<div class="form-group">
					<label for="hangngang">Hàng Ngang</label>
					<form:input type="number" path="hangngang" cssClass="form-control"
						placeholder="Hàng Ngang" />
					<form:errors path="hangngang" cssClass="error" />
				</div>

				<c:if test="${Phong.id !=0 }">
				<button type="submit" class="btn btn-success">Cập Nhật</button>
				</c:if>
					<c:if test="${Phong.id ==0 }">
				<button type="submit" class="btn btn-success">Thêm</button>
				</c:if>
				<a href="<c:url value='/quanlyphong'/>"><button style="float:right;margin-right: 60px " class="btn btn-success">Hủy </button></a>
				
			</div>
		</form:form>

	</div>
</body>
</html>