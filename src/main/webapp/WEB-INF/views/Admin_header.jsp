<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Quản Lý Rạp Chiếu Phim</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<style>
body {
	color: #566787;
	background: #f5f5f5;
	font-family: 'Varela Round', sans-serif;
	font-size: 13px;
}

.table-responsive {
	margin: 100px 0;
}

.table-wrapper {
	background: #fff;
	padding: 10px 25px;
	border-radius: 3px;
	min-width: 1000px;
	box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
}

.nav {
	background: #FFCCFF;
}

.table-title {
	padding-bottom: 35px;
	background: #435d7d;
	color: #fff;
	padding: 16px 30px;
	width: 80%;
	border-radius: 3px 3px 0 0;
	position: absolute;
	top: 20%;
	left: 50%;
	transform: translate(-50%, -50%);
}

.table-title h2 {
	margin: 5px 0 0;
	font-size: 24px;
}

.table-title .btn-group {
	float: right;
}

.table-title .btn {
	color: #fff;
	float: right;
	font-size: 13px;
	border: none;
	min-width: 50px;
	border-radius: 2px;
	border: none;
	outline: none !important;
	margin-left: 10px;
}

.table-title .btn i {
	float: left;
	font-size: 21px;
	margin-right: 5px;
}

.table-title .btn span {
	float: left;
	margin-top: 2px;
}

table.table tr th, table.table tr td {
	border-color: #000033;
	padding: 12px 15px;
	vertical-align: middle;
}

table.table tr th:first-child {
	width: 60px;
}

table.table tr th:last-child {
	width: 100px;
}

table.table-striped tbody tr:nth-of-type(odd) {
	background-color: #fcfcfc;
}

table.table-striped.table-hover tbody tr:hover {
	background: #566787;
}

table.table th i {
	font-size: 13px;
	margin: 0 5px;
	cursor: pointer;
}

table.table td:last-child i {
	opacity: 0.9;
	font-size: 22px;
	margin: 0 5px;
}

table.table td a {
	font-weight: bold;
	color: #566787;
	display: inline-block;
	text-decoration: none;
	outline: none !important;
}

table.table td a:hover {
	color: #2196F3;
}

table.table td a.edit {
	color: #FFC107;
}

table.table td a.delete {
	color: #F44336;
}

table.table td i {
	font-size: 19px;
}

table.table .avatar {
	border-radius: 50%;
	vertical-align: middle;
	margin-right: 10px;
}

.pagination {
	float: right;
	margin: 0 0 5px;
}

.pagination li a {
	border: none;
	font-size: 13px;
	min-width: 30px;
	min-height: 30px;
	color: #999;
	margin: 0 2px;
	line-height: 30px;
	border-radius: 2px !important;
	text-align: center;
	padding: 0 6px;
}

.pagination li a:hover {
	color: #666;
}

.pagination li.active a, .pagination li.active a.page-link {
	background: #03A9F4;
}

.pagination li.active a:hover {
	background: #0397d6;
}

.pagination li.disabled i {
	color: #ccc;
}

.pagination li i {
	font-size: 16px;
	padding-top: 6px
}

.hint-text {
	float: left;
	margin-top: 10px;
	font-size: 13px;
}
/* Custom checkbox */
.custom-checkbox {
	position: relative;
}

.custom-checkbox input[type="checkbox"] {
	opacity: 0;
	position: absolute;
	margin: 5px 0 0 3px;
	z-index: 9;
}

.custom-checkbox label:before {
	width: 18px;
	height: 18px;
}

.custom-checkbox label:before {
	content: '';
	margin-right: 10px;
	display: inline-block;
	vertical-align: text-top;
	background: white;
	border: 1px solid #bbb;
	border-radius: 2px;
	box-sizing: border-box;
	z-index: 2;
}

.custom-checkbox input[type="checkbox"]:checked+label:after {
	content: '';
	position: absolute;
	left: 6px;
	top: 3px;
	width: 6px;
	height: 11px;
	border: solid #000;
	border-width: 0 3px 3px 0;
	transform: inherit;
	z-index: 3;
	transform: rotateZ(45deg);
}

.custom-checkbox input[type="checkbox"]:checked+label:before {
	border-color: #03A9F4;
	background: #03A9F4;
}

.custom-checkbox input[type="checkbox"]:checked+label:after {
	border-color: #fff;
}

.custom-checkbox input[type="checkbox"]:disabled+label:before {
	color: #b8b8b8;
	cursor: auto;
	box-shadow: none;
	background: #ddd;
}
/* Modal styles */
.modal .modal-dialog {
	max-width: 400px;
}

.modal .modal-header, .modal .modal-body, .modal .modal-footer {
	padding: 20px 30px;
}

.modal .modal-content {
	border-radius: 3px;
	font-size: 14px;
}

.modal .modal-footer {
	background: #ecf0f1;
	border-radius: 0 0 3px 3px;
}

.modal .modal-title {
	display: inline-block;
}

.modal .form-control {
	border-radius: 2px;
	box-shadow: none;
	border-color: #dddddd;
}

.modal textarea.form-control {
	resize: vertical;
}

.modal .btn {
	border-radius: 2px;
	min-width: 100px;
}

.modal form label {
	font-weight: normal;
}

.css-td {
	max-width: 150px;
	white-space: nowrap;
	text-overflow: ellipsis;
	overflow: hidden;
}

th {
	white-space: nowrap;
}

.imenu {
	padding-left: 120px;
}

.imenu a {
	margin-right: 20px;
}

.imenu .btn_menu:hover {
	background-color: green;
}

.imenu .btn_menu {
	height: 50px;
	border: none;
	background-color: #FFCCFF;
	font-size: 15px;
	font-family: sans-serif;
	font-style: italic;
	color: maroon;
}

.btn {
	white-space: nowrap;
}
.table td, .table th {
	text-align: center;
	padding: .75rem;
	vertical-align: top;
	border-top: 1px solid #dee2e6;
	border-right: 1px solid;
	border-left: 1px solid;
	border-bottom: 1px solid;
}
/* .video-container {
    position: relative;
    padding-bottom: 56.25%;
    padding-top: 30px; height: 0; overflow: hidden;
}

.video-container iframe,
.video-container object,
.video-container embed {
    position: absolute;
    top: 20%;
    left: 20%;
    width: 60%;
    height: 60%;
} */
.video-container {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	max-width: 100%;
	max-height: 100%;
	margin-left: 50px;
}
</style>
</head>
<body>
	<div class="nav">
		<div class="an" style="width: 100%;">
			
			<h2>
				<c:if test="${tb!=null}">
					<div id="thongbao" style="float: right;">Đăng Nhập Thành Công</div>
					<% session.setAttribute("tb",null); %>
				</c:if>
				<script>
					setTimeout(function() {
						const tb=document.getElementById('thongbao');
						tb.remove();
					}, 3000);
				</script>
				<b>ADMIN</b> <b
					style="display: block; position: absolute; left: 37%; top: 0;">Quản
					Lý Rạp Chiếu Phim</b>

			</h2>
			<a style="float: right; margin-right: 10px" href="./logout">Đăng
				Xuất</a> <b style="float: right; margin-right: 10px">Xin chào
				${username}</b>

		</div>
		<div class="row">

			<div class="imenu">
				<a href="/QuanLyRapChieuPhim"><button class="btn_menu">Trang Chủ</button></a> 
				<a href="/QuanLyRapChieuPhim/quanlyphim"><button class="btn_menu">Quản Lý Phim</button></a>
				<a href="/QuanLyRapChieuPhim/quanlykhachhang"><button class="btn_menu">Quản Lý Khách Hàng</button></a> 
				<a href="/QuanLyRapChieuPhim/quanlylichchieu"><button class="btn_menu">Quản Lý Lịch Chiếu</button></a>
				<a href="/QuanLyRapChieuPhim/quanlyghe"><button class="btn_menu">Quản Lý Bàn Ghế</button></a>
				<a href="/QuanLyRapChieuPhim/quanlyphong"><button class="btn_menu">Quản Lý Phòng Chiếu</button></a>
				
				<a href="/QuanLyRapChieuPhim/quanlygheban"><button class="btn_menu">Quản Lý Ghế Bán</button></a>
			</div>
		</div>
	</div>