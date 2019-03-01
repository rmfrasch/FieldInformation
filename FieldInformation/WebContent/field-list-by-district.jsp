<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Districts</title>
</head>
<body>
	<form method="post" action="navigationServlet">
		<table>
			<c:forEach items="${requestScope.allLists}" var="currentlist">
				<tr>
					<td><input type="radio" name="listId"
						value="${currentlist.listId}"></td>
					<td><h2>${currentlist.district}</h2></td>
				</tr>
				<tr>
					<td colspan="3">Year Created: ${currentlist.year}</td>
				</tr>
				<tr>
					<td colspan="3">Field Name:
						${currentlist.fieldDetails.fieldName}</td>
				</tr>
				<c:forEach var="listVal" items="${currentlist.listOfFields}">
					<tr>
						<td></td>
						<td colspan="3">${listVal.fieldName}</td>
					</tr>
				</c:forEach>
			</c:forEach>
		</table>
		<input type="submit" value="delete" name="doThisToItem"> <input
			type="submit" value="add" name="doThisToItem">
	</form>
</body>
</html>