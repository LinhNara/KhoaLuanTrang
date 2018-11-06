<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	background: #3a6186; /* fallback for old browsers */
	background: -webkit-linear-gradient(to left, #3a6186, #89253e);
	/* Chrome 10-25, Safari 5.1-6 */
	background: linear-gradient(to left, #3a6186, #89253e);
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
	color: #fff;
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
tr{
	color: #fff;
	font-size: 20px;
}
</style>
<body>

	<section id="contact">
		<div class="section-content">
			<span class="content-header wow fadeIn " data-wow-delay="0.2s"
				data-wow-duration="2s"> STUDENT INFORMATION MANAGEMENT SYSTEM</span>
			<h1 class="section-header">------Update infor of you------</h1>
		</div>
		<div class="contact-section">
			<div class="container">
				<div class="row">
					<div class="col-md-8">
						<table class="table">
							<thead>
								<tr>
									<th>Firstname</th>
									<th>Lastname</th>
									<th>UserName</th>
									<th>Grade</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach items="${users}" var="user">
									<!-- 						users la list cac sinh vien , user la doi tuong de su dung -->
									<tr>
										<td>${user.firstName}</td>
										<td>${user.lastName }</td>
										<td>${user.username }</td>
										<td>${user.grade}</td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
					</div>

					<div class="col-md-4 text-center">

						<!-- 							<div class="row"> -->
						<h2 style="right: 10px; top: 5px; display: block;" >
							<a href="${pageContext.request.contextPath}/infor"><button
									type="button" class="btn btn-default submit" style="float: none">Infor of
									me</button></a>
						</h2>
						<!-- 							</div> -->

						<!-- 							<div class="row"> -->
						<h2 style="right: 10px; top: 20px">
							<a href="${pageContext.request.contextPath}/login"><button
									type="button" class="btn btn-default submit" style="float: none">
									<i class="form-group aria-hidden="></i>Logout
								</button></a>
						</h2>
						<!-- 							</div> -->

					</div>
				</div>
			</div>
		</div>
	</section>

</body>
</html>
