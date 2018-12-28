<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<!--_meta 作为公共模版分离出去-->
<!DOCTYPE HTML>
<html>
<head>


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
    <script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
    <script>DD_belatedPNG.fix('*');</script>
    <![endif]-->
    <!--/meta 作为公共模版分离出去-->


    <title>修改专家评价</title>

</head>
<body>
<article class="page-container">
    <form class="form form-horizontal" action="${pageContext.request.contextPath}/Expert_EvaluationServlet" method="post">
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>文章标题：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="${sessionScope.editContent.title }" placeholder="" id="articletitle" name="articletitle">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>分类栏目：</label>
            <div class="formControls col-xs-8 col-sm-9"> <span class="select-box">
				<select name="articlecolumn" class="select">
					<option value="1">校内督导评价</option>
					<option value="2">校外专家评价</option>
				</select>
				</span> </div>
        </div>


        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">文章内容：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <script id="Editor" name="content" type="text/plain" style="width:600px;height:300px;" >
                    ${sessionScope.editContent.content }
                </script></div>
        </div>

        <input type="hidden" name="method" value="editContent">
        <input type="submit" value="修改" style="width: 50px;height:30px;margin-bottom: 50px;margin-left: 500px;">
    </form>
</article>



<!--请在下方写此页面业务相关的脚本-->
<script src="${pageContext.request.contextPath}/plugin/utf8-jsp/ueditor.config.js" type="text/javascript"></script>
<script src='${pageContext.request.contextPath}/plugin/utf8-jsp/ueditor.all.min.js' type="text/javascript"></script>
<script src='${pageContext.request.contextPath}/plugin/utf8-jsp/lang/zh-cn/zh-cn.js' type="text/javascript"></script>
<!-- 实例化编辑器 -->
<script type="text/javascript">
    var ue = UE.getEditor('Editor');
</script>

<!--/请在上方写此页面业务相关的脚本-->

</body>
</html>