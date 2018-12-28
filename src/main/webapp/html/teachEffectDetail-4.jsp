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
                        <li><a href="<c:url value='/html/teachEffectDetail-1.jsp'/>">校外专家评价</a></li>
                        <li><a href="<c:url value='/html/teachEffectDetail-2.jsp'/>">校内督导评价</a></li>
                        <li><a href="<c:url value='/html/teachEffectDetail-3.jsp'/>">教师自我评价</a></li>
                        <li class="current"><a href="<c:url value='/html/teachEffectDetail-4.jsp'/>">校内学生评价</a></li>
                        <li><a href="<c:url value='/html/teachEffectDetail-5.jsp'/>">社会评价</a></li>
                        <li><a href="<c:url value='/html/teachEffectDetail-6.jsp'/>">教学评估及相关文件</a></li>
                    </ul>
                </section>
            </div>
            <div class="column_2 ">
                <article class="mainContent">
                    <header class="contentNav">
                        <nav class="nav">
                            <a href="<c:url value ='/html/index.jsp'/>">首页</a>·
                            <a href="<c:url value ='/html/teachEffectDetail-4.jsp'/>">教学效果</a>·
                            <a href="#">校内学生评价</a>
                        </nav>
                        <h1>校内学生评价</h1>
                    </header>
                    <section class="article">

                    </section>

                </article>
            </div>
            <div class="column_3" style="width: 700px;">
                <h3>近三年学生网上评教</h3>
                <br>
                <table style="border-collapse:collapse;" border="1" bordercolor="#000000">
                    <tbody>
                    <tr>
                        <td valign="top" width="112">
                            <span>教师姓名</span>
                        </td>
                        <td valign="top" width="188">
                            <span> 时间</span>
                        </td>
                        <td valign="top" width="88">
                            <span>课程名称</span>
                        </td>
                        <td valign="top" width="112">
                            <span>课程性质</span>
                        </td>
                        <td valign="top" width="50">
                            <span>分数</span>
                        </td>
                        <td valign="top" width="68">
                            <span>等级</span>
                        </td>
                    </tr>
                    <c:forEach items="${EvalatorpageQuery.items}" var="evalator">
                        <tr>
                            <td valign="top" width="112">
                                <span>${evalator.course_teacher_name}</span>
                            </td>
                            <td valign="top" width="168">
                                <span>${evalator.course_time}</span>
                            </td>
                            <td valign="top" width="88">
                                <span>${evalator.course_name}</span>
                            </td>
                            <td valign="top" width="112">
                                <span>${evalator.course_property}</span>
                            </td>
                            <td valign="top" width="50">
                                <span>${evalator.course_grade}</span>
                            </td>
                            <td valign="top" width="68">
                                <span>${evalator.course_level}</span>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <div class="pagination">
                    <ul style="margin: auto">
                        <c:if test="${EvalatorpageQuery.currentPage!=1}">
                            <li><a href="<c:url value='/EvalatorServlet?method=LoadStudentEvalator&EvalatorpageQuery=1'/>">首页</a></li>
                            <li><a href="<c:url value='/EvalatorServlet?method=LoadStudentEvalator&EvalatorpageQuery=${EvalatorpageQuery.currentPage-1}'/>">上一页</a></li>
                        </c:if>
                        <c:if test="${EvalatorpageQuery.currentPage!=EvalatorpageQuery.totalPage}">
                            <li><a href="<c:url value='/EvalatorServlet?method=LoadStudentEvalator&EvalatorpageQuery=${EvalatorpageQuery.currentPage+1}'/>">下一页</a></li>
                            <li><a href="<c:url value='/EvalatorServlet?method=LoadStudentEvalator&EvalatorpageQuery=${EvalatorpageQuery.totalPage}'/>">尾页</a></li>
                        </c:if>
                    </ul>
                </div>
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