<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>教学效果-校外专家评价</title>
    <meta charset="utf-8">
    <link rel="icon" href="/images/dgut.jpg">
    <link rel="stylesheet" type="text/css" href="../style/normal.css">
    <link rel="stylesheet" type="text/css" href="../style/teachEffect/normal.css">
    <link rel="stylesheet" type="text/css" href="../style/teachEffect/teachEffectDetail.css">
    <script type="text/javascript" src="../js/normal.js"></script>
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
                    <h3>教学效果</h3>
                    <ul>
                        <li><a href="teachEffectDetail-1.jsp">校外专家评价</a></li>
                        <li><a href="teachEffectDetail-2.jsp">校内督导评价</a></li>
                        <li class="current"><a href="teachEffectDetail-3.jsp">教师自我评价</a></li>
                        <li><a href="teachEffectDetail-4.jsp">校内学生评价</a></li>
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
                            <a href="teachEffectDetail-3.jsp">教学效果</a>·
                            <a href="#">教师自我评价</a>
                        </nav>
                        <h1>教师自我评价</h1>
                    </header>
                    <%--<section class="article">--%>
                        <%--<img src="/images/teachEffect/study.png" alt="" width="550">--%>
                    <%--</section>--%>

                </article>
            </div>
            <div class="column_3" style="text-align: left;">

                <table style="border-collapse:collapse;" border="1" bordercolor="#000000">
                    <tbody>
                    <tr>
                        <td valign="top" width="112">
                            <span>教师姓名</span>
                        </td>
                        <td valign="top" width="188">
                            <span>评价标题</span>
                        </td>
                        <td valign="top" width="88">
                            <span>评价内容</span>
                        </td>
                        <td valign="top" width="112">
                            <span>评价时间</span>
                        </td>
                    </tr>

                <c:forEach items="${list}" var="evalator">
                    <tr>
                        <td valign="top">
                            <span>${evalator.teacherName}</span>
                        </td>
                        <td valign="top">
                            <span>${evalator.evalutionTitle}</span>
                        </td>
                        <td valign="top">
                            <span>${evalator.content}</span>
                        </td>
                        <td valign="top">
                            <span>${evalator.evalutionTime}</span>
                        </td>
                    </tr>
                </c:forEach>


                    </tbody>
                </table>






            </div>
        </div>
    </section>
</article>

<!-- 通过js渲染，js代码在normal.js里 -->
<div id="bottom"></div>
<!-- 通过js渲染，js代码在normal.js里 -->
<div id="copyrights"></div>
</body>
</html>