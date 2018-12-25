<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
<form action="<c:url value='/ScoreServlet'/>" method="post">
    <input type="hidden" name="method" value="moddifyStudent">
    学生学号：<input name="studentNo">
    <br/>
    分数：<input type="number" name="grade">
    <br/>
    <input type="submit" value="提交">
</form>
</body>
</html>
