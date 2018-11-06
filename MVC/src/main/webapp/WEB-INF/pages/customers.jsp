<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<jsp:include page="menu_top.jsp" />

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

<h4>Danh sách nhân viên công ty Nara</h4>
<table class="table">
	<thead class="table__head">
		<tr>
			<th>ID</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Username</th>
		</tr>
	</thead>
	<tbody class="table__body">
		<c:forEach items="${customers_client}" var="customer">
			<tr>
				<td>${customer.id}</td>
				<td>${customer.firstName}</td>
				<td>${customer.lastName }</td>
				<td>${customer.username }</td>
			</tr>
		</c:forEach>
	</tbody>
</table>

<jsp:include page="menu_end.jsp" />