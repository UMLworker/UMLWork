<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/simditor-2.3.5/styles/simditor.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/simditor-2.3.5/scripts/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/simditor-2.3.5/scripts/module.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/simditor-2.3.5/scripts/hotkeys.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/simditor-2.3.5/scripts/uploader.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/simditor-2.3.5/scripts/simditor.min.js"></script>


    <script>
        $(document).ready(function(){
            //初始化文本编辑器
            var editor = new Simditor({
                //textarea的id
                textarea: $('#content'),
                //工具条都包含哪些内容
                toolbar:['title', 'bold', 'italic', 'underline', 'strikethrough', 'fontScale', 'color', 'ol', 'ul', 'code', 'table',  'link', 'image', 'hr', 'indent', 'outdent', 'alignment'],
                //若需要上传功能，上传的参数设置。
                upload : {
                    url : 'things_web/ArticleController/publish_Article.action', //文件上传的接口地址
                    params: null, //键值对,指定文件上传接口的额外参数,上传的时候随文件一起提交
                    fileKey: 'fileDataFileName', //服务器端获取文件数据的参数名
                    connectionCount: 3,
                    leaveConfirm: '正在上传文件'
                }
            });
        });
    </script>
</head>

<body>
<h2>Hello World!</h2>
<!--  文章编辑器-->


<div class="span6">
    <textarea name="content" id="content" class="required span6" rows="6" title="* Please enter your message"></textarea>
</div>
</body>
</html>
