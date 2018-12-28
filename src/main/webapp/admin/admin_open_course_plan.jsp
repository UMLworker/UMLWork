<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="Bookmark" href="/favicon.ico" >
<link rel="Shortcut Icon" href="/favicon.ico" />
<!--[if lt IE 9]>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/lib/html5shiv.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/lib/respond.min.js"></script>

<![endif]-->
<link href="${pageContext.request.contextPath}/admin/static/h-ui/css/H-ui.min.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/admin/static/h-ui.admin/css/H-ui.admin.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/admin/lib/Hui-iconfont/1.0.8/iconfont.css" rel="stylesheet" type="text/css" />

<!--[if IE 6]>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>空白页</title>
  <style>
    .table-container{
      width: 600px;
    }
    .div-title{
      height: 40px;
      border-left: 4px solid #0f9ae0;
      line-height: 40px;
      font-size: 20px;
    }
    .addDiv .btn{
      margin-left: 180px;
      height: 24px;
      font-size: 14px;
      background-color: lightskyblue;
      padding: 4px 10px;
      cursor: pointer;
      border: 0px;
    }
    .table-header{
      margin: 20px auto;
      height: 30px;
    }
    .table-header button{
      height: 30px;
      font-size: 14px;
      background-color: lightskyblue;
      padding: 4px 10px;
      cursor: pointer;
      border: 0px;
    }
    .search-div{
      float: right;
    }
    .table-header input{
      width: 160px;
      height: 30px;
      border: 1px solid lightgrey;
    }

    .table-container td{
      height: 30px;
      font-size: 16px;
      text-align: center;
      border-bottom: 1px solid lightgrey;
    }
    .table-container table{
      width: 600px;
    }
    .table-container table a{
      font-size: 14px;
    }

    .page{
      width: 140px;
      margin: 20px auto;
      text-align: center;
    }

  </style>
</head>
<body>
<div class="pd-20">
  <div class="table-container">
    <div class="addDiv">
      <div class="div-title"><span style="padding-left: 10px;">添加开课计划</span></div>
      <form action="${pageContext.request.contextPath}/OpenCoursePlanServlet?method=add"  method="post" enctype ="multipart/form-data">
        <div style="padding: 10px 20px;">
            <select name="termValue">
            <c:forEach items="${requestScope.termArray}" var="item">
              <option value="${item.value}">${item.name}</option>
            </c:forEach>
          </select>
          请上传pdf格式的文件
          <input type="file" name="pdf" accept="application/pdf" >
        </div>

        <div>
          <input class="btn" type="submit" value="添加">
        </div>
      </form>
    </div>

    <div class="table-header">
      <!--
      <div class="search-div">
        <form action="${pageContext.request.contextPath}/OpenCoursePlanServlet?method=search" method="post">
          <input type="text" name="keyword">
          <button>搜索</button>
        </form>
      </div>
      -->
    </div>
    <table>
      <tr style="background-color: lightgrey">
        <td>学期</td>
        <td>操作</td>
      </tr>

      <c:forEach items="${requestScope.plans}" var="plan">
        <tr>
          <td>${plan.termName}</td>
          <td>
            <a href="${pageContext.request.contextPath}/OpenCoursePlanServlet?method=showPDFAtBack&term=${plan.termName}&filePath=${plan.filePath}">查看</a>
            <a href="${pageContext.request.contextPath}/OpenCoursePlanServlet?method=delete&id=${plan.id}">删除</a>
          </td>
        </tr>
      </c:forEach>
    </table>

    <!--翻页-->
    <div class="page">
      <c:if test="${ requestScope.curPage != 0 }">
        <a href="${pageContext.request.contextPath}/OpenCoursePlanServlet?method=showBack&page=${requestScope.curPage - 1}&size=4">上一页</a>
      </c:if>
      第 ${requestScope.curPage + 1} 页
      <c:if test="${ requestScope.nextPage }">
        <a href="${pageContext.request.contextPath}/OpenCoursePlanServlet?method=showBack&page=${requestScope.curPage + 1}&size=4">下一页</a>
      </c:if>
    </div>
    <!--翻页-->
  </div>




</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/lib/jquery.validation/1.14.0/jquery.validate.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/lib/jquery.validation/1.14.0/validate-methods.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/lib/jquery.validation/1.14.0/messages_zh.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/static/h-ui.admin/js/H-ui.admin.js"></script>
</body>
</html>