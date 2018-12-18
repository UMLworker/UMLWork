<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
	<title>教学管理</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="../style/normal.css">
	<link rel="stylesheet" type="text/css" href="../style/eduManage/eduManageDetail.css">
    <link rel="stylesheet" type="text/css" href="../style/eduManage/normal.css">
	<script type="text/javascript" src="../js/normal.js"></script>
	<!-- 显示pdf容器样式 -->
	<style>
		.pdfobject-container {
		    max-width: 100%;
			width: 1000px;
			height: 1000px;
			border: 10px solid rgba(0,0,0,.2);
			margin: 0;
		}
	</style>
</head>
</head>

<body onload="Rendering();">
	<!-- 通过js渲染，js代码在normal.js里 -->
	<div id="top"></div>

	<article class="content">
	    <section id="banner">
	        <img src="../images/index/abouttop_03.jpg">
	    </section>
	    <section class="mainWrap relative">
	        <div class="detailContent">
	            <div class="column_1">
	                <section class="leftNav">
	                    <h3>教学管理</h3>
	                    <ul>
							<li class="current"><a href="eduManageDetail-1.jsp">开课计划</a></li>
							<li><a href="eduManageDetail-2.jsp">上课班级</a></li>
							<li><a href="eduManageDetail-3.jsp">学生成绩</a></li>
							<li><a href="eduManageDetail-4.jsp">班级名册</a></li>
							<li><a href="eduManageDetail-5.jsp">作业案例</a></li>
						</ul>
	                </section>
	            </div>
	            <div class="column_2 ">
	                <article class="mainContent">
	                    <header class="contentNav">
	                        <nav class="nav">
	                            <a href="index.html">首页</a>·
	                            <a href="eduManageDetail-1.jsp">教学管理</a>·
	                            <a href="eduManageDetail-1.jsp">开课计划</a>
	                        </nav>
	                        <h1>开课计划</h1>
	                    </header>
	                    <section class="article">
							<div class="itemDetail newItemContent">
								
								<div id="my-pdf"></div>

							</div>
	                    </section>
	
	                </article>
	            </div>
	        </div>
	    </section>
	</article>

	<!-- 通过js渲染，js代码在normal.js里 -->
	<div id="bottom"></div>
	<!-- 通过js渲染，js代码在normal.js里 -->
	<div id="copyrights"></div>

<!-- 引入jq -->
<script type="text/javascript" src="../js/jquery.min.js"></script>
<!-- 引入 显示pdf js组件 -->
<script type="text/javascript" src="../js/pdfobject.min.js"></script>
<script>
var $container = $("#my-pdf");
PDFObject.embed("../resource/开课计划.pdf", $container);
</script>
</body>
</html>