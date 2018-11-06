<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="menu_top.jsp" />

<script type="text/javascript"
	src="/resources/js/bootstrap-datetimepicker.js">
	
</script>
<script type="text/javascript"
	src=" /resources/js/bootstrap-datepicker.js">
	
</script>


<link
	href='<c:url value="/resources/css/bootstrap-datetimepicker.css"></c:url>'
	rel="stylesheet" type="text/css" />

<style>
.row {
	width: 85%;
	margin-left: 3%;
}
</style>
<h4>Daily Report</h4>
<div class="row">
	<div class="form-group col-md-3">
		<label for="exampleInputUsername">Username</label> <input type="text"
			class="form-control" id="exampleInputUsername" disabled
			value="${user.username}" />
	</div>
	<div class="form-group col-md-9">
		<label for="exampleInputUsername">Họ và tên</label> <input type="text"
			class="form-control" value="${user.hoten}" disabled />
	</div>
</div>
<div>
	<form:form action="${pageContext.request.contextPath}/timesheet"
		method="post" modelAttribute="timeSheetCreate">

		<div class="row">
			<div class="form-group col-md-12">
				<label for="exampleInputUsername">Ngày làm việc</label>
				<form:input type="date" path="ngayThang" class="form-control"
					id="ngayThang" />
				<input type="hidden" name="testTo" class="form-control" id="testTo" />
			</div>
 		</div> 
 
  		<div class="row">  
  			<div class="form-group col-md-3">  
  				<label for="exampleInputUsername">Giờ bắt đầu hành chính</label>  
  				<form:input id="startTime" type="time" path="gioBatDauHc" name="gioBatDauHc"  
  					class="form-control" />  

  			</div>  
  			<div class="form-group col-md-3">  
  				<label for="exampleInputUsername">Giờ kết thúc hành chính</label>  
  				<form:input id="endTime" type="time" path="gioKetThucHc"  
  					class="form-control" />  

  			</div>  
  			<div class="form-group col-md-3">  
  				<label for="exampleInputUsername">Giờ nghỉ trưa (Phút)</label>  
  				<form:input id="nghi_trua" type="number" path="nghiTruaHc"  
  					class="form-control" value="60" />  

  			</div>  
  			<div class="form-group col-md-3">  
  				<label for="exampleInputUsername">Tổng giờ hành chính</label>  
  				<form:input id="time" type="text" path="tongGioHc"  
  					class="form-control" />  

  			</div>  
  		</div>  
  		<div class="row">  
  			<div class="form-group col-md-3">  
  				<label for="exampleInputUsername">Giờ bắt đầu OT</label>  
  				<form:input id="startOT" type="time" path="gioBatDauOt"  
  					class="form-control" />  
  			</div>  
  			<div class="form-group col-md-3">  
  				<label for="exampleInputUsername">Giờ kết thúc OT</label>  
  				<form:input id="endOT" type="time" path="gioKetThucOt"  
  					class="form-control" />  
  			</div>  
  			<div class="form-group col-md-3">  
  				<label for="exampleInputUsername">Giờ nghỉ OT(Phút)</label>  
  				<form:input id="nghiOT" type="number" path="gioNghiOt"  
  					class="form-control" value="0" />  
  			</div>  

  			<div class="form-group col-md-3">  
  				<label for="exampleInputUsername">Tổng giờ OT</label>  
  				<form:input id="tongOT" type="text" path="tongGioOt"  
  					class="form-control" />  
  			</div>  
  		</div>  
  		<div class="row">  
  			<div class="form-group col-md-12">  
  				<label for="exampleInputUsername">Công việc ngày hôm nay</label>  
  				<form:textarea type="text" path="congViec" class="form-control"  
  					rows="15" />  
  			</div>  

  		</div>  
		<div class="row">
			<div class="form-group col-md-8"></div>
			<div class="form-group col-md-1">
				<button type="submit" class="btn btn-default submit">
					<i class="fa fa-paper-plane" aria-hidden="true"></i>SEND
				</button>
			</div>
			<div class="form-group col-md-3">
				<button type="submit" class="btn btn-default submit">
					<i class="fa fa-paper-plane" aria-hidden="true"></i>Cancel
				</button>
			</div>
		</div>
	</form:form>

</div>





<jsp:include page="menu_end.jsp" />
<script type="text/javascript">
	function testTo() {
		console.log($("#ngayThang").val());
	}

	$("#startTime").change(function() {
		tinh_tong_thoi_gian_lam_viec()
	});

	$("#endTime").change(function() {
		tinh_tong_thoi_gian_lam_viec()
	});

	$("#nghi_trua").change(function() {
		tinh_tong_thoi_gian_lam_viec()
	});

	function tinh_tong_thoi_gian_lam_viec() {
		var startTime = $("#startTime").val().split(":")
		var so_phut_bat_dau = parseInt(startTime[0] * 60)
				+ parseInt(startTime[1])

		var endTime = $("#endTime").val().split(":")
		var so_phut_ket_thuc = parseInt(endTime[0] * 60) + parseInt(endTime[1])

		var nghi_trua = parseInt($("#nghi_trua").val())
		var tong_so_gio_lam = 0
		if (so_phut_ket_thuc && so_phut_bat_dau) {
			tong_so_gio_lam = so_phut_ket_thuc - so_phut_bat_dau - nghi_trua
			var text = parseInt(tong_so_gio_lam / 60) + " Tiếng "
					+ tong_so_gio_lam % 60 + " Phút"
			$("#time").val(text)
			console.log("In ra di", tong_so_gio_lam)
		}
	}

	//Trang
	$("#startOT").change(function() {
		tinh_tong_thoi_gian_lam_viecOT()
	});

	$("#endOT").change(function() {
		tinh_tong_thoi_gian_lam_viecOT()
	});

	$("#nghiOT").change(function() {
		tinh_tong_thoi_gian_lam_viecOT()
	});

	function tinh_tong_thoi_gian_lam_viecOT() {
		var startTime = $("#startOT").val().split(":")
		var so_phut_bat_dau = parseInt(startTime[0] * 60)
				+ parseInt(startTime[1])

		var endTime = $("#endOT").val().split(":")
		var so_phut_ket_thuc = parseInt(endTime[0] * 60) + parseInt(endTime[1])

		var nghi_trua = parseInt($("#nghiOT").val())
		var tong_so_gio_lam = 0
		if (so_phut_ket_thuc && so_phut_bat_dau) {
			tong_so_gio_lam = so_phut_ket_thuc - so_phut_bat_dau - nghi_trua
			var text = parseInt(tong_so_gio_lam / 60) + " Tiếng "
					+ tong_so_gio_lam % 60 + " Phút"
			$("#tongOT").val(text)
			console.log("In ra di", tong_so_gio_lam)
		}
	}
</script>

