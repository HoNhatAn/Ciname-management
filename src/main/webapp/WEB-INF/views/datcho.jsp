<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<html class="no-js" lang="">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Movfix - Online Movies & TV Shows Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css">
.ghe{
	 background-color: pink; 
	
}
.maudo{
background-color: yellow; 
}
.ghe_block{
	background-color: #FF3300;

}
.btn1{
	background-color: green;
	display: inline-block;
	width: auto;
	height: auto;
	margin: 5px 5px;
	border-radius: 10px;
  	box-shadow: 2px 2px 5px grey;
  	color: black;
  	border: 2px solid black;
}
.ghe,.ghe_block{
	text-align: center;
	min-width: 50px;
	max-width: 50px;
	display: inline-block;
	width: auto;
	height: auto;
	margin: 5px 5px;
	border-radius: 10px;
  	box-shadow: 2px 2px 5px grey;
  	color: black;
  	border: 2px solid black;
  	}
/* .ghe,.ghechuadat:hover{
	background-color: yellow;
}
ghe:active {
	background-color: yellow;
} */
</style>
<link rel="shortcut icon" type="image/x-icon"
	href="<c:url value='/resources/img/favicon.png'/>">
<!-- Place favicon.ico in the root directory -->

<%@include file="header.jsp"%>
<!-- header-area-end -->


<!-- main-area -->
<main>

	<!-- movie-details-area -->
	 
	<section class="movie-details-area" style="padding: 10px 0 120px;"
		data-background="<c:url value='/resources/img/bg/movie_details_bg.jpg'/>">
		<div><a  href="/QuanLyRapChieuPhim/chitiet/${chittietlichchieu.getPhim().id}">Quay Lại</a></div> 
		<div class="container">
			<div class="row align-items-center position-relative">
				<div class="col-xl-3 col-lg-4">
					<div class="movie-details-img">
						<img src="${phim.avatar }" alt=""> <a
							href="${phim.trailer }" class="popup-video"><img
							src="<c:url value='/resources/img/images/play_icon.png'/>" alt=""></a>
					</div>
				</div>
				
				<div class="col-xl-6 col-lg-8">
					<div class="movie-details-content">
							<form action="${chittietlichchieu.id}" method="post" style="width:${chittietlichchieu.getPhong().hangngang*200/3}px;text-align:center;">
									<c:forEach items="${ghe}" var="item">
										

											<c:if test="${ghedaban.contains(item.ten_ghe)}">
										<div class="ghe_block">
												${item.ten_ghe}

												<input style="display: none" type="checkbox"
													id="${item.ten_ghe }" name="tenghe" value="${item.ten_ghe}"
													disabled checked="checked">
											</div>
											</c:if>
											
											<c:if test="${!ghedaban.contains(item.ten_ghe)}">
											<c:choose>
												<c:when test="${ghechuadat!=null}">
											<c:if test="${!ghechuadat.contains(item.ten_ghe)}">
													<div   id="${item.ten_ghe}" class="ghe">
											${item.ten_ghe}

												<input hidden="true" style="" type="checkbox" id="${item.ten_ghe}check" name="tenghe"
													value="${item.ten_ghe}">
													</div>
											</c:if>
											<c:if test="${ghechuadat.contains(item.ten_ghe)&& lich_id == chittietlichchieu.id }">
											<div   id="${item.ten_ghe}" class="ghe maudo">
												${item.ten_ghe}
												<input hidden="true" style="" type="checkbox" id="${item.ten_ghe}check" name="tenghe"
													value="${item.ten_ghe}" checked="checked">
											</div>
											</c:if>
											<c:if test="${ghechuadat.contains(item.ten_ghe)&& lich_id != chittietlichchieu.id }">
											<div   id="${item.ten_ghe}" class="ghe">
												${item.ten_ghe}

												<input hidden="true" style="" type="checkbox" id="${item.ten_ghe}check" name="tenghe"
													value="${item.ten_ghe}">
											</div>
											</c:if>
												</c:when>
													<c:otherwise>
												<div   id="${item.ten_ghe}" class="ghe">
														${item.ten_ghe}

												<input hidden="true" style="" type="checkbox" id="${item.ten_ghe}check" name="tenghe"
													value="${item.ten_ghe}">
													</div>
													</c:otherwise>
											</c:choose>
											</c:if>								
									</c:forEach>
									<script type="text/javascript">
									$(document).ready(function() {
										  $("div").click(function() {
											  var divID = $(this).attr("id");
		
										  if ($("#" + divID).hasClass('maudo')) {
											  $("#" + divID).removeClass('maudo');
											  
											    } else {
											    	 $("#" + divID).addClass('maudo');
											    }
										  $("#"+divID+"check").prop('checked', !$("#"+divID+"check").prop('checked'));
										  });
									  });
									

									</script>
								<c:set var="str2" value="ADMIN" />
								
								<c:if test="${!role.equalsIgnoreCase(str2)&&username!=null}">
									<button class="btn1" type="submit">Đặt Chỗ</button>
								</c:if>
								<c:if test="${username==null}">
									<p> Bạn Chưa Đăng Nhập</p>
									<button class="btn1" type="submit">Ấn vào đây để đăng nhập</button>
								</c:if>
								
							</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- movie-details-area-end -->

</main>
<!-- main-area-end -->


<!-- footer-area -->
<%@include file="footer.jsp"%>
</body>
</html>
