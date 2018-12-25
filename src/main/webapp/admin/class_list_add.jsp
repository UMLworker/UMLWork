<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
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
   <form action="<c:url value='/class_list_Servlet'/>" method="post">
    <input type="hidden" name="method" value="Add_ClassList">
    班级名称：<input type="text" name="class_name">
    <br/>
    专业：<input  type="text" name="major">
    <br/>
    课程名称：<input type="text" name="course">
    <br/>
    花名册:
 	<input type="text" name="class_file">
    <br/>
    <input type="submit" value="提交">
</form>
  </body>
</html>
