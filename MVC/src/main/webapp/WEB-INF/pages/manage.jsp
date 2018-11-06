	<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<jsp:include page="menu_top.jsp" />

<style>
	#tableData tbody tr{
	 	cursor: pointer;
	}
</style>

<script type="text/javascript">
	$(document).ready(function() {
	    $('#tableData').DataTable({
	    	"bSort": true,
		    });
	});

	function onDetailUser(idUser) {
		window.location  = "${pageContext.request.contextPath}/user/" + idUser + "/detail";
	}
</script>

<h4>Danh sách quản lý nhân sự Nara</h4>
<table class="table" id="tableData">
	<thead class="table__head">
		<tr>
			<th>STT</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>User Name</th>
		</tr>
	</thead>
	<tbody class="table__body">
		<c:forEach items="${users_client}" var="user" varStatus="status">
			<tr onclick="onDetailUser('${user.username}')">
				<td>${status.index + 1}</td>
				<td>${user.firstName}</td>
				<td>${user.lastName }</td>
				<td>${user.username }</td>
		</c:forEach>
	</tbody>
</table>

<jsp:include page="menu_end.jsp" />