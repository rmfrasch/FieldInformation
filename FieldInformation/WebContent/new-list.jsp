<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create a new list</title>
</head>
<body>
<form action = "createNewListServlet" method="post">
District Name: <input type ="text" name = "district"><br />
Date Created: <input type ="text" name = "month" placeholder="mm"
size="4"> <input type ="text" name = "day" placeholder="dd"
size="4">, <input type ="text" name = "year" placeholder="yyyy"
size="4">
Field: <input type = "text" name = "fieldName1"><br />

<br />
<input type = "submit" value="Create List and Add Items">
</form>
<a href = "index.html">Go add new items instead.</a>
</body>
</html>