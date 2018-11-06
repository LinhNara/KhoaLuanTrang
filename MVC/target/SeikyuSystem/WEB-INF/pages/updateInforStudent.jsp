<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

    <link href="https://fonts.googleapis.com/css?family=Oleo+Script:400,700" rel="stylesheet">
   	<link href="https://fonts.googleapis.com/css?family=Teko:400,700" rel="stylesheet">
   	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<html>
<style>
/*Contact sectiom*/
.content-header{
  font-family: 'Oleo Script', cursive;
  color:#fcc500;
  font-size: 45px;
}

.section-content{
  text-align: center; 

}
#contact{
    
    font-family: 'Teko', sans-serif;
  padding-top: 60px;
  width: 100%;
  height: 100vh;
/*   min-heigh: 100vh; */
  width: 100vw;
/*   height: 550px; */
  padding-bottom: 20px;
  background: #3a6186; /* fallback for old browsers */
  background: -webkit-linear-gradient(to left, #3a6186 , #89253e); /* Chrome 10-25, Safari 5.1-6 */
  background: linear-gradient(to left, #3a6186 , #89253e); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
    color : #fff;    
}
.contact-section{
  padding-top: 40px;
}
.contact-section .col-md-6{
  width: 50%;
}

.form-line{
  border-right: 1px solid #B29999;
}

.form-group{
  margin-top: 10px;
}
label{
  font-size: 1.3em;
  line-height: 1em;
  font-weight: normal;
}
.form-control{
  font-size: 1.3em;
  color: #080808;
}
textarea.form-control {
    height: 135px;
   /* margin-top: px;*/
}

.submit{
  font-size: 1.1em;
  float: right;
  width: 150px;
  background-color: transparent;
  color: #fff;

}
h2 {
/*     position: absolute; */
/*     bottom: 0; */
/*     right: 0; */
/* margin-bottom: 20px; */
}

</style>
<body>
  
<section id="contact">
			<div class="section-content">
				 <span class="content-header wow fadeIn " data-wow-delay="0.2s" data-wow-duration="2s"> STUDENT INFORMATION MANAGEMENT SYSTEM</span>
				 <h1 class="section-header">------Update infor of you------</h1>
				
			</div>
			<div class="contact-section">
			<div class="container">
				<form:form action="${pageContext.request.contextPath}/update"  method="post" modelAttribute="userForm">
					<div class="col-md-10 form-line">
			  			<div class="form-group">
			  				<label for="exampleInputUsername">FirstName</label>
					    	<form:input type="text" path="firstName" class="form-control" id="" value="${user.firstName}"/>
				  		</div>
				  		<div class="form-group">
			  				<label for="exampleInputUsername">Last name</label>
					    	<form:input type="text" path="lastName" class="form-control" id="" value="${user.lastName} "/>
				  		</div>
				  		<div class="form-group">
					    	<label for="exampleInputGrade">Grade</label>
					    	<form:input type="text" path="grade" class="form-control" id="exampleInputGrade" value="${user.grade}" disabled="true" />
					  	</div>	
					  	<div class="form-group">
					    	<label for="exampleInputUsername">Username</label>
					    	<form:input type="text" path="username" class="form-control" id="exampleInputUsername" value="${user.username }" disabled="true"/>
			  			</div>
<!-- 			  			<div class="form-group"> -->
<!-- 					    	<label for="exampleInputUsername">PassWord</label> -->
<%-- 					    	<form:input type="password" path="password" class="form-control" id="exampleInputUsername" placeholder="123"/> --%>
<!-- 			  			</div> -->
			  			
			  			<div class="form-group" >
			  				<h2><button type="submit" class="btn btn-default submit"><i class="fa fa-paper-plane" aria-hidden="true"></i>Update</button></h2>
			  			</div>
			  		</div>
			  		
			  		<div class="col-md-2">
			  			
			  			
					</div>
				</form:form>
				</div>
			</div>
		</section>

</body>
</html>
