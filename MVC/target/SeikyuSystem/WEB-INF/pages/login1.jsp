<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon"
	href="<c:url value="/resources/img/favicon.ico" />" />
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet" />
<link href="<c:url value="/resources/css/custom.css" />"
	rel="stylesheet" />
<link
	href="<c:url value="/resources/css/fonts/css/font-awesome.min.css" />"
	rel="stylesheet" />
<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
<script src="<c:url value="/resources/js/jquery.placeholder.min.js" />"></script>
<script type="text/javascript">
	
</script>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
</head>
<body style="background: #ffffff !important;">
	<div>
		<div id="wrapper">
			<div class="animate form">
				<section class="login_content">
					<form id="login" name='f' class="login_form" method='POST'
						action="${pageContext.request.contextPath}/j_spring_security_check">
						<div class="block-eff"
							style="margin-left: auto; margin-right: auto;">
							<h1 id="title">Màn hình đăng nhập</h1>
							<c:if test="${not empty param['error']}">
								<c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
									<div id="error-message" class="errorblock">Đăng nhập thất
										bại. Vui lòng nhập đúng username && password</div>
								</c:if>
							</c:if>

							<c:if test="${unactivated == true}">
								<div id="error-message" class="errorblock">Tài khoản chưa
									được đăng kí. Vui lòng đăng kí trước khi đăng nhập.</div>
							</c:if>

							<div class="form-group">
								<input name="user_cd" class="form-control" id="user_cd"
									placeholder="Username" type="tel"
									style="-ms-image-mode: disabled; ime-mode: disabled"
									tabindex="1" />
							</div>
							<div class="form-group">
								<input name="password" type="password" class="form-control"
									placeholder="password" id="password" tabindex="2" />
							</div>
							<div id="div-submit">
								<button id="validateBtn" type="submit"
									class="btn btn-primary submit" tabindex="3"
									style="margin-left: 0px;">lOGIN</button>
							</div>
							<div id="div-submit">
								<a href="${pageContext.request.contextPath}/create"><button
										id="validateBtn" type="button" class="btn btn-primary submit"
										tabindex="3" style="margin-left: 0px; margin-bottom: 0px">CREATE</button></a>
							</div>
						</div>
					</form>
					<!-- form -->
				</section>
				<!-- content -->
			</div>
		</div>
	</div>

</body>

</html>