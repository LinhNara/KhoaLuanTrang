<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="menu_top.jsp" />
<h4 class="text-center" style="margin-bottom: 20px">Thông tin chi
	tiết ${user.lastName} ${user.firstName}</h4>
<style>
#imgAvatar {
	width: 180px;
	height: 180px;
	margin-bottom: 15px;
}
</style>
<script type="text/javascript">
	var avatarOrigin = "${user.avatar}";
	var userName = "${user.username}";
	if (!avatarOrigin) {
		avatarOrigin = rootURL + "/resources/img/avatar_place_holder.png";
	} else {
		avatarOrigin = rootURL + "user/" + userName + "/avatar";
	}

	$(document).ready(function(e) {
		$('#imgAvatar').attr('src', avatarOrigin);
	});
</script>
<table class="table" id="">
	<tbody class="table__body">
		<tr>
			<td style="width: 20%; vertical-align: middle;">
				<div>
					<img src="" onclick="openInput('#avatar')" id="imgAvatar" />
					<form class="form-input-avatar">
						<input type="file" name="avatar" accept="image/png, image/jpeg"
							class="hidden" id="avatar" onchange="avatarChange(this)" />
						<div id="btnActionAvatar" class="hidden">
							<button type="button" class="btn btn-primary " id="uploadAvatar"
								onclick="uploadAvatar()">
								Lưu <i class="fa fa-upload"></i>
							</button>
							<button type="button" class="btn btn-danger " id="removeAvavtar"
								onclick="onCancelAvatar()">
								Hủy bỏ <i class="fa fa-remove"></i>
							</button>

						</div>
					</form>
				</div>
			</td>
			<td>
				<p>Họ tên: ${user.lastName} ${user.firstName}</p>
				<p>Mã nhân viên: ${user.username}</p> 			
			</td>
		</tr>
	</tbody>
</table>

<div>
	<h4>1. Sơ yếu lí lịch</h4>
	<form>
		<div class="row">
			<div class="col-xs-12 col-sm-10 col-sm-offset-1">
				<div class="form-group">
					<label for="exampleInputEmail1">Họ tên:</label> <input type="text"
						class="form-control" aria-describedby="emailHelp" placeholder="">
				</div>
				<hr>
				
				<div class="row">
					<div class="col-xs-12 col-sm-6">
						<div class="form-group">
							<label for="exampleInputEmail1">Số điện thoại:</label> <input
								type="text" class="form-control" aria-describedby="emailHelp"
								placeholder="">
						</div>
					</div>
					<div class="col-xs-12 col-sm-6">
						<div class="form-group">
							<label for="exampleInputEmail1">Email:</label> <input type="text"
								class="form-control" aria-describedby="emailHelp" placeholder="">
						</div>
					</div>
				</div>

				<hr>
				<div class="form-group">
					<label for="exampleInputEmail1">Địa chỉ:</label> <input type="text"
						class="form-control" aria-describedby="emailHelp" placeholder="">
				</div>
				
				<hr>
				<div class="form-group">
					<label for="exampleInputEmail1">Quê quán:</label> <input
						type="text" class="form-control" aria-describedby="emailHelp"
						placeholder="">
				</div>
				<hr>
				<div class="row">
					<div class="col-xs-12 col-sm-4">
						<div class="form-group">
							<label for="exampleInputEmail1">Số chứng minh thư:</label> <input
								type="text" class="form-control" aria-describedby="emailHelp"
								placeholder="">
						</div>
					</div>
					<div class="col-xs-12 col-sm-4">
						<div class="form-group">
							<label for="exampleInputEmail1">Ngày cấp:</label> <input
								type="date" class="form-control" aria-describedby="emailHelp"
								placeholder="">
						</div>
					</div>
					<div class="col-xs-12 col-sm-4">
						<div class="form-group">
							<label for="exampleInputEmail1">Nơi cấp:</label> <input
								type="date" class="form-control" aria-describedby="emailHelp"
								placeholder="">
						</div>
					</div>
				</div>



				<hr>
			</div>
			<div class="col-xs-12 col-sm-10 col-sm-offset-1 text-right">
				<button type="button" class="btn btn-primary " onclick="">
					Lưu <i class="fa fa-save"></i></button>
			</div>
		</div>
	</form>
</div>

<div>
	<h4>2. Thông tin hợp đồng lao động</h4>
	<form class="contrant-upload">
		<button type="button" class="btn btn-primary ">
			Lưu <i class="fa fa-upload"></i>
		</button>
		<button type="button" class="btn btn-danger ">
			Hủy bỏ <i class="fa fa-remove"></i>
		</button>
	</form>
</div>
<script type="text/javascript"
	src="<c:url value="/resources/js/userDetail.js" />">
	
</script>
<jsp:include page="menu_end.jsp" />

