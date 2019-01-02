<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <title>教学效果-校外专家评价</title>
    <meta charset="utf-8">
    <link rel="icon" href="<c:url value='/images/dgut.jpg'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/style/normal.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/style/teachEffect/normal.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/style/teachEffect/teachEffectDetail.css'/>">
</head>
<body onload="Rendering();">
<!-- 通过js渲染，js代码在normal.js里 -->
<div id="top">
    <jsp:include page="/html/top.jsp"/>
</div>

<article class="content">

    <section id="banner">
        <img src="<c:url value='/images/index/abouttop_03.jpg'/>">
    </section>
    <section class="mainWrap relative">
        <div class="detailContent">
            <div class="column_1">
                <section class="leftNav">
                    <h3>教学效果</h3>
                    <ul>
                        <li><a href="<c:url value='/Expert_EvaluationServlet?method=getAllContentReturnFront&n=1'/>">校外专家评价</a></li>
                        <li class="current"><a href="<c:url value='/Expert_EvaluationServlet?method=getAllContentReturnFront&n=2'/>">校内督导评价</a></li>
                        <li><a href="teachEffectDetail-3.jsp">教师自我评价</a></li>
                        <li><a href="<c:url value='/html/teachEffectDetail-4.jsp'/>">校内学生评价</a></li>
                        <li><a href="teachEffectDetail-5.jsp">社会评价</a></li>
                        <li><a href="teachEffectDetail-6.jsp">教学评估及相关文件</a></li>
                    </ul>
                </section>
            </div>
            <div class="column_2 ">
                <article class="mainContent">
                    <header class="contentNav">
                        <nav class="nav">
                            <a href="index.html">首页</a>·
                            <a href="<c:url value='/Expert_EvaluationServlet?method=getAllContentReturnFront&n=1'/>">教学效果</a>·
                            <a href="#">校内督导评价</a>
                        </nav>
                        <h1>校内督导评价</h1>
                    </header>
                    <section class="article">
                        <div style="overflow-y: auto;overflow-x: auto;width: 580px;height: 450px;">
                            <c:forEach items="${sessionScope.list }" var="i" varStatus="n">
                                <c:if test="${i.type eq '1'}">
                                    <h2>${i.title}</h2>
                                    <br>
                                    ${i.content }
                                </c:if>
                            </c:forEach>
                        </div>
                    </section>

                </article>
            </div>
            <div class="column_3">
            </div>
        </div>
    </section>
</article>

<!-- 通过js渲染，js代码在normal.js里 -->
<div id="bottom">
    <jsp:include page="/html/bottom.jsp" />
</div>
<!-- 通过js渲染，js代码在normal.js里 -->
<div id="copyrights">
    <jsp:include page="/html/copyright.jsp" />
</div>
</body>
</html>