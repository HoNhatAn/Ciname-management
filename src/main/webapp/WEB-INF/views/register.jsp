<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng Ký</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>


<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>


<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
.error {
	color: red;
}
</style>
</head>
<body>
	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h2 class="text-center">Đăng Ký Thành Viên</h2>
			</div>
			<div class="panel-body">
				<form:form method="post" action="register"
					modelAttribute="dangky">
					<form:hidden path="id" />
					<div class="form-group">
						<label for="ho_va_ten">Họ Và Tên:</label>
						<form:input type="text" path="ho_va_ten" class="form-control"
							id="ho_va_ten" />
						<form:errors path="ho_va_ten" cssClass="error" />
					</div>
					<div class="form-group">
						<label for="email">Email:</label>
						<form:input type="text" class="form-control" id="email"
							path="email" />
						<form:errors path="email" cssClass="error" />
					</div>
					<div class="form-group">
						<label for="password">Mật Khẩu:</label>
						<form:input type="password" class="form-control" id="password"
							path="password" />
						<form:errors path="password" cssClass="error" />
					</div>
					<div class="form-group">
						<label for="cfpassword">Xác Nhận Lại Mật Khẩu:</label>
						<form:input path="cfpassword" type="password"
							class="form-control" id="cfpassword" />
						<form:errors path="cfpassword" cssClass="error" />
					</div>
					<div class="form-group">
						<label for="so_dien_thoai">Số Điện Thoại:</label>
						<form:input path="so_dien_thoai" type="text"
							class="form-control" id="so_dien_thoai" />
						<form:errors path="so_dien_thoai" cssClass="error" />
					</div>
					<div class="form-group">
						<label for="ngay_sinh">Ngày Sinh:</label>
						<form:input type="date" class="form-control" name="ngay_sinh"
							id="ngay_sinh" path="ngay_sinh" />
						<form:errors path="ngay_sinh" cssClass="error" />
					</div>
					<div>
						<label for="gioi_tinh">Giới Tính:</label> <input type="radio"
							name="Gender" value="Nam" checked="checked"/>Nam <input type="radio"
							name="Gender" value="Nữ" />Nữ
						<br/>
						<%-- <form:errors path="gioi_tinh" cssClass="error" /> --%>
					</div>

					<div class="form-group">
						<label for="dia_chi">Địa Chỉ:</label>
						<form:input type="text" path="dia_chi" class="form-control"
							id="dia_chi" name="dia_chi" />
						<form:errors path="dia_chi" cssClass="error" />
					</div>
					<button type="submit" class="btn btn-success">Đăng Ký</button>
				</form:form>
				<button onclick="window.location.href='./login'">Đăng Nhập</button>
			</div>
		</div>
	</div>
</body>
</html>