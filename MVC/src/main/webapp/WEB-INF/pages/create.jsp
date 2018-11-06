<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<title>Add customer</title>
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

	height: 100vh;
}

.contact-section {
/* 	padding-top: 40px; */
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
}

tr {
	color: #fff;
	font-size: 20px;
}

</style>
	<section id="contact">
		<div class="section-content">
<!-- 			<span class="headerText" data-wow-delay="0.2s" -->
<!-- 				data-wow-duration="2s">ADD INFORMATION</span> -->
			<h1 class="headerText">ADD NEW ACCOUNT </h1>
		</div>
		<div class="contact-section">
			<div class="container">
				<div class="text-center" style="color: red" >
					<c:forEach items="${msg}" var="item">
						<p>${item }</p>
					</c:forEach>
				</div>
				<form:form action="${pageContext.request.contextPath}/create"
					method="post" modelAttribute="userCreate">
					<div class="col-md-10 form-line">
						<div class="form-group">
							<label for="exampleInputUsername">FirstName</label>
							<form:input type="text" path="firstName" class="form-control"
								placeholder="firstname" />
						</div>
						<div class="form-group">
							<label for="exampleInputUsername">LastName</label>
							<form:input path="lastName" placeholder="lastname" type="text"
								class="form-control"  />
						</div>
						<div class="form-group">
							<label for="exampleInputUsername">User Name</label>
							<form:input type="text" path="username"  class="form-control"
								id="exampleInputUsername"  placeholder="user_name" />
						</div>
						<div class="form-group">
							<label for="exampleInputUsername">PassWord</label>
							<form:input path="password"  placeholder="password"
								type="password"  class="form-control" id="exampleInputUsername" />
						</div>
						<div class="form-group">
							<label for="exampleInputUsername">Address</label>
							<form:input path="address"  placeholder="Address"
								type="text"  class="form-control" id="exampleInputUsername" />
						</div>
						<div class="form-group">
							<label for="exampleInputUsername">Permission</label>
							<select name="authority" class="form-control" id="exampleInputUsername" >
								<option value="U" selected>Normal User</option>
								<option value="A">Admin</option>
							</select>
						</div>

					</div>
					<div class="col-md-2">
						<div class="row">
							<h2 style="right: 10px; top: 5px;">
							<a href="${pageContext.request.contextPath}/manage">
								<button type="submit" class="btn btn-default submit">
									<i class="fa fa-paper-plane" aria-hidden="true"></i>CREATE
								</button></a>
							</h2>
						</div>

						<div class="row">
							<h2 style="right: 10px; top: 20px">
								<a href="${pageContext.request.contextPath}/manage"><button
										type="button" class="btn btn-default submit">
										<i class="form-group aria-hidden="></i>Exit
									</button></a>
							</h2>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</section>