<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">

<link href="https://fonts.googleapis.com/css?family=Oleo+Script:400,700"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Teko:400,700"
	rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon"
	href="<c:url value="/resources/img/icon.png" />" />
<link href="<c:url value="/resources/css/admin.css" />" rel="stylesheet" />
<link
	href="<c:url value="/resources/vendor/jquery-confirm-master/dist/jquery-confirm.min.css" />"
	rel="stylesheet" />
<meta name="robots" content="index, follow" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<title>Trang Chu</title>


<script src="https://mazipan.github.io/library/jquery.min.js"></script>
<script src="https://use.fontawesome.com/89344806bd.js"></script>
<script src="/MVC/resources/js/admin.js"></script>

<script src="https://mazipan.github.io/library/g-adsense.js"></script>

<script
	src='<c:url value="/resources/vendor/jquery/jquery-3.3.1.min.js"></c:url>'></script>

<script
	src='<c:url value="/resources/vendor/bootstrap/bootstrap.min.js"></c:url>'></script>
<script
	src='<c:url value="/resources/vendor/datatable/jquery.dataTables.min.js"></c:url>'></script>
<script
	src='<c:url value="/resources/vendor/jquery-confirm-master/dist/jquery-confirm.min.js"></c:url>'></script>

<link href="https://fonts.googleapis.com/css?family=Roboto"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="https://mazipan.github.io/bem-kit/dist/bem-kit.min.css">

<link rel="stylesheet" type="text/css"
	href='<c:url value="/resources/vendor/datatable/jquery.dataTables.min.css"></c:url>' />

<script
	src='<c:url value="/resources/js/bootstrap-datepicker.js"></c:url>'></script>
</head>


<style>
#tableData_length select {
	width: 100px;
	padding: 5px;
	margin-left: 10px;
	margin-right: 20px;
	margin-bottom: 10px;
}

#tableData_filter input {
	padding: 5px;
}
</style>
<script type="text/javascript">
	var rootURL = "${pageContext.request.contextPath}/";
</script>

<body class="site">
	<header role="header" class="site__header header" id="home"
		style="z-index: 99999">
		<div class="header__wrapper">
			<div class="header__brand">
				<img src="/MVC/resources/img/icon.png" />
				<div class="header__title">HỆ THỐNG QUẢN LÝ NHÂN SỰ CTY NARA</div>
			</div>

			<div class="header__account account account--has-login">
				<div class="account__wrapper">
					<img class="account__img" src="/MVC/resources/img/admin.png" /> <span
						class="account__name">${user.username}</span>
				</div>
				<i class="account__arrow fa fa-angle-down js--show-dropdown-menu"></i>

				<div class="account__menu" style="z-index: 99">
					<ul class="account__menu-wrapper">
						<li class="account__menu-item"><a href="#">Change the
								password</a></li>
						<li class="account__menu-item"><a href="exit">Logout</a></li>
					</ul>
				</div>

			</div>

			<div class="header__nav--mobile">
				<div class="header__nav-btn" id="menu-toggle">
					<span></span> <span></span> <span></span> <span></span>
				</div>
			</div>

		</div>
	</header>


	<main role="main" class="site__main main"></main>
	<nav class="main__nav nav">

		<ul class="nav__wrapper">

			<li class="nav__item nav__item--has-child"><a href="#"> <i
					class="nav__icon fa fa fa-book"></i> Danh sách <i
					class="nav__arrow fa fa-angle-down"></i>
			</a>

				<ul class="nav__wrapper nav__wrapper--child">
					<li class="nav__item--child"><a
						href="${pageContext.request.contextPath}/manage">Danh sách
							quản lí nhân sự Nara</a></li>
					<li class="nav__item--child"><a
						href="${pageContext.request.contextPath}/customers">Danh sách
							nhân viên Nara</a></li>
				</ul></li>


			<!-- 			<li class="nav__item"><a href="add"> <i -->
			<!-- 					class="nav__icon fa fa-user-plus"></i> Thêm mới tài khoản -->
			<!-- 			</a></li> -->

			<li class="nav__item nav__item--has-child"><a
				href="${pageContext.request.contextPath}/add"> <i
					class="nav__icon fa fa-user-plus"></i> Thêm mới <i
					class="nav__arrow fa fa-angle-down"></i>
			</a></li>

			<li class="nav__item nav__item--has-child"><a href="#"> <i
					class="nav__icon fa fa fa-book"></i> Thủ tục hành chính <i
					class="nav__arrow fa fa-angle-down"></i>
			</a>

				<ul class="nav__wrapper nav__wrapper--child">
					<li class="nav__item--child"><a href="#">Nghỉ việc</a></li>
					<li class="nav__item--child"><a href="#">Khen thưởng</a></li>
					<li class="nav__item--child"><a href="labor_contract">Hợp
							đồng lao động</a></li>
				</ul></li>


			<li class="nav__item nav__item--has-child"><a href="#"> <i
					class="nav__icon fa fa-bar-chart"></i> Thống kê <i
					class="nav__arrow fa fa-angle-down"></i>
			</a>

				<ul class="nav__wrapper nav__wrapper--child">
					<li class="nav__item--child"><a href="#">Nhân viên theo
							công việc</a></li>
					<li class="nav__item--child"><a href="#">Nhân viên theo dự
							án</a></li>
				</ul></li>

			<li class="nav__item nav__item--has-child"><a href="timesheet">
					<i class="nav__icon fa fa-bar-chart"></i> Timesheet <i></i>
			</a>
		</ul>
		<ul class="nav__wrapper nav__wrapper--child">
			<li class="nav__item--child"><a href="#">Thử việc</a></li>
			<li class="nav__item--child"><a href="#">Nhân viên chính
					thức</a></li>
		</ul>
		<div class="footer__wrapper">

			<div class="footer__text">
				<span>Copyright by NARA.CORP</span>
			</div>
		</div>
	</nav>
	<article class="main__content content">