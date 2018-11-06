<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="menu_top.jsp" />

<style>
.headerText {
	text-align: center;
}

.my_container {
	margin-left: 50px;
	margin-right: 50px
}
</style>

<div class="row my_container form-horizontal">
	<div class="row">
		<h1 class="headerText">HỢP ĐỒNG LAO ĐỘNG</h1>
	</div>

	<div class="row">
		<div class="form-group">
			<label class="col-sm-2 control-label">Bên A:</label>
			<div class="col-sm-10">
				<p class="form-control-static">Công Ty ABC</p>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="form-group">
			<label class="col-sm-2 control-label">Địa chỉ:</label>
			<div class="col-sm-10">
				<p class="form-control-static">Công Ty ABC</p>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="form-group">
			<label class="col-sm-2 control-label">Điện thoại:</label>
			<div class="col-sm-10">
				<p class="form-control-static">Công Ty ABC</p>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="form-group">
			<label class="col-sm-2 control-label">Mã số thuế:</label>
			<div class="col-sm-10">
				<p class="form-control-static">Công Ty ABC</p>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="form-group">
			<label class="col-sm-2 control-label">Người đại diện:</label>
			<div class="col-sm-4">
				<p class="form-control-static">Công Ty ABC</p>
			</div>
			<label class="col-sm-2 control-label">Người đại diện:</label>
			<div class="col-sm-4">
				<p class="form-control-static">Công Ty ABC</p>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="form-group">
			<label for="inputPassword" class="col-sm-2 control-label">Bên
				B: </label>
			<div class="col-sm-10">
				<input type="text" class="form-control">
			</div>
		</div>
	</div>
	<div class="row">
		<div class="form-group">
			<label for="inputPassword" class="col-sm-2 control-label">Địa
				chỉ: </label>
			<div class="col-sm-10">
				<input type="text" class="form-control">
			</div>
		</div>
	</div>
	<div class="row">
		<div class="form-group">
			<label for="inputPassword" class="col-sm-2 control-label">Điện
				thoại: </label>
			<div class="col-sm-10">
				<input type="text" class="form-control">
			</div>
		</div>
	</div>
	<div class="row">
		<div class="form-group">
			<label class="col-sm-2 control-label">CMND:</label>
			<div class="col-sm-4">
				<input type="text" class="form-control">
			</div>
			<label class="col-sm-2 control-label">Ngày cấp:</label>
			<div class="col-sm-4">
				<input type="text" class="form-control">
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-11"></div>
		<div class="col-md-1" style="padding: 0">
			<button type="submit" class="btn btn-default" style="width: 100%">Submit</button>
		</div>
	</div>

</div>

<jsp:include page="menu_end.jsp" />


