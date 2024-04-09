
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%-- 	<%@ include file="Header.jsp"%> --%>
<h1 align="center"><font color="blue"><u>User List</u></font></h1>
	<sf:form method="post" modelAttribute="form">
	
		<sf:hidden path="pageNo" />
		<table  align="center">
			<tr>
				<td><sf:input path="firstName"  placeholder="Enter name"/></td>
				<td><sf:select path="id">
						<sf:option value="0">-----------select------------</sf:option>
						<sf:options items="${userList}" itemValue="id"
							itemLabel="firstName" />
					</sf:select></td>
				<td><input type="submit" name="operation" value="search">
				</td>
			</tr>
		</table>
		<table border="1" width="100%" align="center" cellpadding=6px cellspacing=".2">
			<tr>
				<th>Select</th>
				<th>ID</th>
				<th>FirstName</th>
				<th>LastName</th>
				<th>Login</th>
				<th>Password</th>
				<th>DOB</th>
				<th>Address</th>
				<th>Edit</th>
			</tr>
			<c:forEach items="${list}" var="user">
				<tr>
					<td><sf:checkbox path="ids" value="${user.id}" /></td>
					<td><c:out value="${user.id }"></c:out></td>
					<td><c:out value="${user.firstName }"></c:out></td>
					<td><c:out value="${user.lastName }"></c:out></td>
					<td><c:out value="${user.login }"></c:out></td>
					<td><c:out value="${user.password }"></c:out></td>
					<td><c:out value="${user.dob }"></c:out></td>
					<td><c:out value="${user.address }"></c:out></td>
					<td><a href="<c:url value="/ctl/User?id=${user.id}" />">edit</a></td>
				</tr>
			</c:forEach>
		</table>
		<table>
			<tr>
			<td><input type="submit" name="operation" value="previous"></td>
				<td><input type="submit" name="operation" value="delete"></td>
				<td><input type="submit" name="operation" value="next">
				</td>
			</tr>
		</table>
	</sf:form>
	<%-- <%@ include file="Footer.jsp"%> --%>
</body>
</html>
