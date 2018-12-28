<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<head>
<base href="<%=basePath%>">

<title>My JSP 'class_list_add.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<fieldset>
	<form action="<c:url value='/class_list_Servlet?method=AddClassList'/>" method="post" enctype="multipart/form-data">
		 
		班级名称：<input type="text" name="class_name"> <br /> 
		专业：<input type="text" name="major"> <br /> 
		课程名称：<input type="text" name="course"><br /> 
		花名册: <input type="file" name="class_file"> <br />
		<input type="submit" value="提交">
	</form>
	</fieldset>
</body>
</html>
