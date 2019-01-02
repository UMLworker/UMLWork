<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <title>班级名册</title>
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
                    <h3>教学管理</h3>
                    <ul>
                        <li><a href="<c:url value='/OpenCoursePlanServlet?method=showFront'/>">开课计划</a></li>
                        <li><a href="<c:url value='/ClassInfoServlet?method=LoadClassInfo&classInfoPageQuery=1'/>">上课班级</a></li>
                        <li><a href="<c:url value='/ScoreServlet?method=LoadStudentEvalator&StudentpageQuery=1'/>">学生成绩</a></li>
                        <li class="current"><a href="<c:url value='/html/eduManageDetail-4.jsp'/>">班级名册</a></li>
                        <li><a href="<c:url value='/html/eduManageDetail-5.jsp'/>">作业案例</a></li>
               
                    </ul>
                </section>
            </div>
            <div class="column_2 ">
                <article class="mainContent">
                    <header class="contentNav">
                        <nav class="nav">
                            <a href="<c:url value ='/html/index.jsp'/>">首页</a>·
                            <a href="<c:url value ='/OpenCoursePlanServlet?method=showFront'/>">教学管理</a>·
                            <a href="#">班级名册</a>
                        </nav>
                        <h1>班级名册</h1>
                    </header>
                    <section class="article">

                    </section>

                </article>
            </div>
            <div class="column_3" style="width: 700px;">
              
                <br>
                <table style="border-collapse:collapse;" border="1" bordercolor="#000000">
                    <tbody>
                    <tr>
                        <td valign="top" width="112">
                            <span>班级ID</span>
                        </td>
                        <td valign="top" width="188">
                            <span>班级名称</span>
                        </td>
                        <td valign="top" width="88">
                            <span>所属专业</span>
                        </td>
                        <td valign="top" width="112">
                            <span>课程名称</span>
                        </td>
                        <td valign="top" width="50">
                            <span>下载</span>
                        </td>
            
                    </tr>
                    <c:forEach items="${classListpageQuery.items}" var="class_list">
                        <tr>
                            <td valign="top" width="112">
                                <span>${class_list.class_id}</span>
                            </td>
                            <td valign="top" width="168">
                                <span>${class_list.class_name}</span>
                            </td>
                            <td valign="top" width="88">
                                <span>${class_list.major}</span>
                            </td>
                            <td valign="top" width="112">
                                <span>${class_list.course}</span>
                            </td>
                            <td valign="top" width="50">
                                <a href="../resource/16软卓一班.xlsx" download="16软卓一班.xlsx">下载</a>
                            </td>
                           
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <div class="pagination">
                    <ul style="margin: auto">
                        <c:if test="${classListpageQuery.currentPage!=1}">
                            <li><a href="<c:url value='/class_list_Servlet?method=LoadStudentClassList&classListpageQuery=1'/>">首页</a></li>
                            <li><a href="<c:url value='/class_list_Servlet?method=LoadStudentClassList&classListpageQuery=${classListpageQuery.currentPage-1}'/>">上一页</a></li>
                        </c:if>
                        <c:if test="${classListpageQuery.currentPage!=EvalatorpageQuery.totalPage}">
                            <li><a href="<c:url value='/class_list_Servlet?method=LoadStudentClassList&classListpageQuery=${classListpageQuery.currentPage+1}'/>">下一页</a></li>
                            <li><a href="<c:url value='/class_list_Servlet?method=LoadStudentClassList&classListpageQuery=${classListpageQuery.totalPage}'/>">尾页</a></li>
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