
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="https://fonts.googleapis.com/css?family=Oleo+Script:400,700"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Teko:400,700"
	rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<html>
<style>
/*Contact sectiom*/
.content-header {
	font-family: 'Oleo Script', cursive;
	color: #fcc500;
	font-size: 45px;
}

.section-content {
	text-align: center;
}

#contact {
	font-family: 'Teko', sans-serif;
	padding-top: 60px;
	width: 100%;
	width: 100vw;
	height: 100vh;
	background-color:#e5e5e5;
	color: ;
}

.contact-section {
	padding-top: 40px;
}

.contact-section .col-md-6 {
	width: 50%;
}

.form-line {
	border-right: 1px solid #B29999;
}

.form-group {
	margin-top: 10px;
}

label {
	font-size: 1.3em;
	line-height: 1em;
	font-weight: normal;
}

.form-control {
	font-size: 1.3em;
	color: #080808;
}

textarea.form-control {
	height: 135px;
	/* margin-top: px;*/
}

.submit {
	font-size: 1.1em;
	float: right;
	width: 150px;
	background-color: transparent;
	color: #fff;
}
</style>
<body>

	<section id="contact">
		<div class="section-content">
			<span class="content-header wow fadeIn " data-wow-delay="0.2s"
				data-wow-duration="2s"> HE THONG QUAN LI NHAN SU</span>
			<h1 class="section-header">------CONG TY CO PHAN PHAN MEM NARA------</h1>
		</div>
		<!-- 		<div class="contact-section"></div> -->
		<div class="container">
				<form>
					<div class="col-md-10 form-line">
						<div class="form-group">
							<label for="exampleInputUsername">First name</label> <input
								type="text" class="form-control" value="${user.firstName}"
								disabled>
						</div>
						<div>
							<label for="exampleInputUsername">LastName name</label> <input
								type="text" class="form-control" value="${user.lastName}"
								disabled>
						</div>
						<div class="form-group">
							<label for="exampleInputUsername">username</label> <input
								type="text" class="form-control" id="exampleInputUsername"
								value="${user.username}" placeholder=" ChangBeo" disabled>
						</div>
					</div>
					<div class="col-md-2">

						<div class="row">
							<h2 style="right: 10px; top: 5px;">
								<a href="${pageContext.request.contextPath}/all"><button
										type="button" class="btn btn-default submit">DANH SACH NHAN VIEN</button></a>
							</h2>
						</div>
						<div class="row">
							<h2 style="right: 10px; top: 5px;">
								<a href="${pageContext.request.contextPath}/all"><button
										type="button" class="btn btn-default submit">DANH SACH NHAN VIEN</button></a>
							</h2>
						</div>
						<div class="row">
							<h2 style="right: 10px; top: 5px;">
								<a href="${pageContext.request.contextPath}/all"><button
										type="button" class="btn btn-default submit">DANH SACH NHAN VIEN</button></a>
							</h2>
						</div>
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						<div class="row">
							<h2 style="right: 10px; top: 5px;">
								<a href="${pageContext.request.contextPath}/editinfor"><button
										type="button" class="btn btn-default submit">
										<i class="fa fa-paper-plane" aria-hidden="true"></i>Edit
									</button></a>
							</h2>
						</div>

						<div class="row">
							<h2 style="right: 10px; top: 20px">
								<a href="${pageContext.request.contextPath}/login"><button
										type="button" class="btn btn-default submit">
										<i class="form-group aria-hidden="></i>Logout
									</button></a>
							</h2>
						</div>

						<div class="row">
							<h2 style="right: 10px; top: 5px;">
								<a href="${pageContext.request.contextPath}/all"><button
										type="button" class="btn btn-default submit">DANH SACH NHAN VIEN</button></a>
							</h2>
						</div>
					</div>
				</form>
			</div>
	</section>

</body>
</html>
