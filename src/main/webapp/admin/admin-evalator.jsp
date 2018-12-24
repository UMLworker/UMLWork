<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <!--[if lt IE 9]>
    <script type="text/javascript" src="lib/html5shiv.js"></script>
    <script type="text/javascript" src="lib/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="<c:url value='/admin/static/h-ui/css/H-ui.min.css'/>"/>
    <link rel="stylesheet" type="text/css" href="<c:url value='/admin/static/h-ui.admin/css/H-ui.admin.css'/>"/>
    <link rel="stylesheet" type="text/css" href="<c:url value='/admin/lib/Hui-iconfont/1.0.8/iconfont.css'/>"/>
    <link rel="stylesheet" type="text/css" href="<c:url value='/admin/static/h-ui.admin/skin/default/skin.css'/>" id="skin"/>
    <link rel="stylesheet" type="text/css" href="<c:url value='/admin/static/h-ui.admin/css/style.css'/>"/>
    <!--[if IE 6]>
    <script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js"></script>
    <script>DD_belatedPNG.fix('*');</script>
    <![endif]-->
    <title>角色管理</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 学生评价管理</nav>
<div class="page-container">
    <a
            class="btn btn-primary radius" href="javascript:;"
            onclick="admin_role_add('添加评论','<c:url value='admin-evalator-add.jsp'/>','800')"><i class="Hui-iconfont">&#xe600;</i>
        添加评价</a> </span>
</div>
<table class="table table-border table-bordered table-hover table-bg">
    <thead>
    <tr class="text-c">
        <th width="80">ID</th>
        <th width="80">教师名</th>
        <th width="150">时间</th>
        <th width="150">课程名称</th>
        <th width="80">课程性质</th>
        <th width="60">分数</th>
        <th width="70">等级</th>
        <th width="80">删除</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${EvalatorpageQuery.items}" var="evalator">
        <tr class="text-c">
            <td>${evalator.evalator_id}</td>
            <td>${evalator.course_teacher_name}</td>
            <td>${evalator.course_time}</td>
            <td>${evalator.course_name}</td>
            <td>${evalator.course_property}</td>
            <td>${evalator.course_grade}</td>
            <td>${evalator.course_level}</td>
            <td class="f-14"><a title="删除" href="javascript:;" onclick="admin_role_del(this,'1')" class="ml-5"
                                style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
        </tr>
    </c:forEach>
    <div class="pagination">
        <ul style="margin: auto">
            <c:if test="${EvalatorpageQuery.currentPage!=1}">
                <li><a href="<c:url value='/EvalatorServlet?method=Admin_LoadStudentEvalator&EvalatorpageQuery=1'/>">首页</a></li>
                <li><a href="<c:url value='/EvalatorServlet?method=Admin_LoadStudentEvalator&EvalatorpageQuery=${EvalatorpageQuery.currentPage-1}'/>">上一页</a></li>
            </c:if>
            <c:if test="${EvalatorpageQuery.currentPage!=EvalatorpageQuery.totalPage}">
                <li><a href="<c:url value='/EvalatorServlet?method=Admin_LoadStudentEvalator&EvalatorpageQuery=${EvalatorpageQuery.currentPage+1}'/>">下一页</a></li>
                <li><a href="<c:url value='/EvalatorServlet?method=Admin_LoadStudentEvalator&EvalatorpageQuery=${EvalatorpageQuery.totalPage}'/>">尾页</a></li>
            </c:if>
        </ul>
    </div>
    </tbody>
</table>
</div>
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
<script type="text/javascript">
    /*管理员-角色-添加*/
    function admin_role_add(title, url, w, h) {
        layer_show(title, url, w, h);
    }

    /*管理员-角色-编辑*/
    function admin_role_edit(title, url, id, w, h) {
        layer_show(title, url, w, h);
    }

    /*管理员-角色-删除*/
    function admin_role_del(obj, id) {
        layer.confirm('角色删除须谨慎，确认要删除吗？', function (index) {
            $.ajax({
                type: 'POST',
                url: '',
                dataType: 'json',
                success: function (data) {
                    $(obj).parents("tr").remove();
                    layer.msg('已删除!', {icon: 1, time: 1000});
                },
                error: function (data) {
                    console.log(data.msg);
                },
            });
        });
    }
</script>
</body>
</html>