<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
</head>
<script>
function extend(num){
	
	if(num==1)
	{
		var obj = document.getElementById('first');
		obj.style.display = "block";
	}
	else if(num==2)
	{
		var obj = document.getElementById('second');
		obj.style.display = "block";
	}
	else if(num==3)
	{
		var obj = document.getElementById('third');
		obj.style.display = "block";
	}
	else if(num==4)
	{
		var obj = document.getElementById('fourth');
		obj.style.display = "block";
	}
	else if(num==5)
	{
		var obj = document.getElementById('fifth');
		obj.style.display = "block";
	}
	else if(num==6){
		var obj = document.getElementById('sixth');
		obj.style.display = "block";
	}
	else if(num==7){
		var obj = document.getElementById('seven');
		obj.style.display = "block";
	}
	else{
		var obj = document.getElementById('eighth');
		obj.style.display = "block";
	}

}

function out(num){
	if(num==1)
	{
		var obj = document.getElementById('first');
		obj.style.display = "none";
	}
	else if(num==2)
	{
		var obj = document.getElementById('second');
		obj.style.display = "none";
	}
	else if(num==3)
	{
		var obj = document.getElementById('third');
		obj.style.display = "none";
	}
	else if(num==4)
	{
		var obj = document.getElementById('fourth');
		obj.style.display = "none";
	}
	else if(num==5)
	{
		var obj = document.getElementById('fifth');
		obj.style.display = "none";
	}
	else if(num==6)
	{
		var obj = document.getElementById('sixth');
		obj.style.display = "none";
	}
	else if(num==7){
		var obj = document.getElementById('seven');
		obj.style.display = "none";
	}
	else{
		var obj = document.getElementById('eighth');
		obj.style.display = "none";
	}
}

function Rendering(){
	document.getElementById("top").innerHTML="<div class=\"header\"><div class=\"topLine\"></div>\
			<section class=\"topwrap\">\
				<a href=\"index.html\" class=\"logo\"><img src=\"<c:url value='/images/logo.png'/>\"><h2 class=\"title\">在线开放课程平台</h2></a>\
			</section>\
			<section class=\"logininAndUp\">\
				<a href=\"login.html\">登录</a>\
				<a href=\"register.html\">注册</a>\
			</section>\
			<section class=\"nav yahei\">\
				<ul id=\"nav\">\
					<li class=\"title\"><a href=\"index.html\">首页</a></li>\
					<li class=\"title\" onmouseover=\"extend('1')\" onmouseout=\"out('1')\">\
						<a href=\"courseDetail-1.html\">课程概况</a>\
						<ul style=\"display: none;\" id=\"first\">\
							<li class=\"detail\"><a href=\"courseDetail-1.html\" style=\"color: #fff;\">课程简介</a></li>\
							<li class=\"detail\"><a href=\"courseDetail-2.html\" style=\"color: #fff;\">课程特色</a></li>\
							<li class=\"detail\"><a href=\"courseDetail-3.html\" style=\"color: #fff;\">教材与参考资料</a></li>\
							<li class=\"detail\"><a href=\"courseDetail-4.html\" style=\"color: #fff;\">历史沿革</a></li>\
						</ul>\
					</li>\
					<li class=\"title\" onmouseover=\"extend('2')\" onmouseout=\"out('2')\">\
						<a href=\"teacherTeamDetail-1.html\">教师队伍</a>\
						<ul style=\"display: none;\" id=\"second\">\
							<li class=\"detail\"><a href=\"teacherTeamDetail-1.html\" style=\"color: #fff;\">课程负责人</a></li>\
							<li class=\"detail\"><a href=\"teacherTeamDetail-2.html\" style=\"color: #fff;\">课程教学团队</a></li>\
							<li class=\"detail\"><a href=\"teacherTeamDetail-3.html\" style=\"color: #fff;\">主讲教师</a></li>\
							<li class=\"detail\"><a href=\"teacherTeamDetail-4.html\" style=\"color: #fff;\">青年教师培养</a></li>\
						</ul>\
					</li>\
					<li class=\"title\" onmouseover=\"extend('3')\" onmouseout=\"out('3')\">\
					    <a href=\"educationalDetail-1.html\">教学安排</a>\
					    <ul style=\"display: none;\" id=\"third\">\
					      <li class=\"detail\"><a href=\"educationalDetail-2.html\" style=\"color: #fff;\">教学大纲</a></li>\
					      <li class=\"detail\"><a href=\"educationalDetail-3.html\" style=\"color: #fff;\">教学日历</a></li>\
					      <li class=\"detail\"><a href=\"educationalDetail-4.html\" style=\"color: #fff;\">教学内容</a></li>\
					      <li class=\"detail\"><a href=\"educationalDetail-5.html\" style=\"color: #fff;\">授课计划</a></li>\
					      <li class=\"detail\"><a href=\"educationalDetail-6.html\" style=\"color: #fff;\">教学难重点</a></li>\
					      <li class=\"detail\"><a href=\"educationalDetail-7.html\" style=\"color: #fff;\">教学方法与手段</a></li>\
					    </ul>\
					</li>\
					<li class=\"title\" onmouseover=\"extend('4')\" onmouseout=\"out('4')\">\
						<a href=\"educationReformDetail-1.html\">教学研究改革</a>\
						<ul style=\"display: none;\" id=\"fourth\">\
							<li class=\"detail\"><a href=\"educationReformDetail-1.html\" style=\"color: #fff;\">教学改革措施</a></li>\
							<li class=\"detail\"><a href=\"educationReformDetail-2.html\" style=\"color: #fff;\">教学改革立项</a></li>\
							<li class=\"detail\"><a href=\"educationReformDetail-3.html\" style=\"color: #fff;\">教学改革成果</a></li>\
							<li class=\"detail\"><a href=\"educationReformDetail-4.html\" style=\"color: #fff;\">教学改革表彰和奖励</a></li>\
						</ul>\
					</li>\
					<li class=\"title\" onmouseover=\"extend('5')\" onmouseout=\"out('5')\">\
						<a href=\"teachResDetail-1.html\">教学资源</a>\
						<ul style=\"display: none;\" id=\"fifth\">\
    						<li class=\"detail\"><a href=\"teachResDetail-1.html\" style=\"color: #fff;\">课程课件</a></li>\
							<li class=\"detail\"><a href=\"teachResDetail-2.html\" style=\"color: #fff;\">教学录像</a></li>\
    						<li class=\"detail\"><a href=\"teachResDetail-3.html\" style=\"color: #fff;\">习题库</a></li>\
    						<li class=\"detail\"><a href=\"teachResDetail-4.html\" style=\"color: #fff;\">案例库</a></li>\
    						<li class=\"detail\"><a href=\"teachResDetail-5.html\" style=\"color: #fff;\">实验任务</a></li>\
    					</ul>\
					</li>\
					<li class=\"title\" onmouseover=\"extend('6')\" onmouseout=\"out('6')\">\
						<a href=\"<c:url value = '/html/eduManageDetail-1.jsp'/>\">教学管理</a>\
						<ul style=\"display: none; \" id=\"sixth\">\
							<li class=\"detail\"><a href=\"<c:url value ='/html/eduManageDetail-1.jsp'/>\" style=\"color: #fff;\">开课计划</a></li>\
							<li class=\"detail\"><a href=\"<c:url value='/ClassInfoServlet?method=LoadClassInfo&classInfoPageQuery=1'/>\" style=\"color: #fff;\">上课班级</a></li>\
							<li class=\"detail\"><a href=\"<c:url value='/ScoreServlet?method=LoadStudentEvalator&StudentpageQuery=1'/>\" style=\"color: #fff;\">学生成绩</a></li>\

							<li class=\"detail\"><a href=\"<c:url value ='/html/eduManageDetail-4.jsp'/>\" style=\"color: #fff;\">班级名册</a></li>\
							<li class=\"detail\"><a href=\"<c:url value ='/html/eduManageDetail-5.jsp'/>\" style=\"color: #fff;\">学生作业案例</a></li>\
						</ul>\
					</li>\
					<li class=\"title\" onmouseover=\"extend('7')\" onmouseout=\"out('7')\">\
						<a href=\"<c:url value ='teachEffectDetail-1.jsp'/>\">教学效果</a>\
						<ul style=\"display: none; \" id=\"seven\">\
							<li class=\"detail\"><a href=\"<c:url value ='/html/teachEffectDetail-1.jsp'/>\" style=\"color: #fff;\">校外专家评价</a></li>\
							<li class=\"detail\"><a href=\"<c:url value ='/html/teachEffectDetail-2.jsp'/>\" style=\"color: #fff;\">校内督导评价</a></li>\
							<li class=\"detail\"><a href=\"<c:url value ='/html/teachEffectDetail-3.jsp'/>\" style=\"color: #fff;\">教师自我评价</a></li>\
							<li class=\"detail\"><a href=\"<c:url value='/EvalatorServlet?method=LoadStudentEvalator&EvalatorpageQuery=1'/>\" style=\"color: #fff;\">校内学生评价</a></li>\
							<li class=\"detail\"><a href=\"<c:url value ='/html/teachEffectDetail-5.jsp'/>\" style=\"color: #fff;\">社会评价</a></li>\
    						<li class=\"detail\"><a href=\"<c:url value ='/html/teachEffectDetail-6.jsp'/>\" style=\"color: #fff;\">教学评估及相关文件</a></li>\
						</ul>\
					</li>\
					<li class=\"title\" onmouseover=\"extend('8')\" onmouseout=\"out('8')\">\
						<a href=\"QQ.html\">教学互动</a>\
						<ul style=\"display: none;\" id=\"eighth\">\
							<li class=\"detail\"><a href=\"QQ.html\" style=\"color: #fff;\">QQ群</a></li>\
							<li class=\"detail\"><a href=\"WeChat.html\" style=\"color: #fff;\">微信群</a></li>\
							<li class=\"detail\"><a href=\"leavenote.html\" style=\"color: #fff;\">师生互动</a></li>\
						</ul>\
					</li>\
				</ul>\
			</section>\
		</div>";

	document.getElementById("bottom").innerHTML="<div class=\"inner\">\
			<ul>\
				<li><a href=\"courseDetail-1.html\">课程概况</a>\
					<div class=\"detail\">\
						<div><a href=\"courseDetail-1.html\">课程简介</a></div>\
						<div><a href=\"courseDetail-2.html\">课程特色</a></div>\
						<div><a href=\"courseDetail-3.html\">教材与参考资料</a></div>\
						<div><a href=\"courseDetail-4.html\">历史沿革</a></div>\
					</div>\
				</li>\
				<li><a href=\"teacherTeam.html\">教师队伍</a>\
					<div class=\"detail\">\
						<div><a href=\"teacherTeamDetail-1.html\">课程负责人</a></div>\
						<div><a href=\"teacherTeamDetail-2.html\">课程教学团队</a></div>\
						<div><a href=\"teacherTeamDetail-3.html\">主讲教师</a></div>\
						<div><a href=\"teacherTeamDetail-4.html\">青年教师培养</a></div>\
					</div>\
				</li>\
				<li><a href=\"educationalDetail-1.html\">教学安排</a>\
					<div class=\"detail\">\
						<div><a href=\"educationalDetail-2.html\">教学日历</a></div>\
						<div><a href=\"educationalDetail-3.html\">教学内容</a></div>\
						<div><a href=\"educationalDetail-4.html\">授课计划</a></div>\
						<div><a href=\"educationalDetail-5.html\">教学重难点</a></div>\
						<div><a href=\"educationalDetail-6.html\">教学方法与手段</a></div>\
					</div>\
				</li>\
				<li><a href=\"educationReformDetail-1.html\">教学研究改革</a>\
                    <div class=\"detail\">\
                        <div><a href=\"educationReformDetail-1.html\">改革措施</a></div>\
                        <div><a href=\"educationReformDetail-2.html\">改革立项</a></div>\
                        <div><a href=\"educationReformDetail-3.html\">改革成果</a></div>\
                        <div><a href=\"educationReformDetail-4.html\">改革表彰和奖励</a></div>\
                    </div>\
				</li>\
				<li><a href=\"teachResDetail-1.html\">教学资源</a>\
					<div class=\"detail\">\
						<div><a href=\"teachResDetail-1.html\">课程课件</a></div>\
						<div><a href=\"teachResDetail-2.html\">教学录像</a></div>\
						<div><a href=\"teachResDetail-3.html\">习题库</a></div>\
						<div><a href=\"teachResDetail-4.html\">案例库</a></div>\
						<div><a href=\"teachResDetail-5.html\">实验任务</a></div>\
					</div>\
				</li>\
				<li><a href=\"admission.html\">教学管理</a>\
					<div class=\"detail\">\
						<div><a href=\"admissionDetail-1.html\">开课计划</a></div>\
						<div><a href=\"<c:url value='/ClassInfoServlet?method=LoadClassInfo&classInfoPageQuery=1'/>\">上课班级</a></div>\
						<div><a href=\"<c:url value='/ScoreServlet?method=LoadStudentEvalator&StudentpageQuery=1'/>\">学生成绩</a></div>\
						<div><a href=\"admissionDetail-4.html\">班级名册</a></div>\
						<div><a href=\"<c:url value='admissionDetail-4.html'/>\">班级名册</a></div>\
					</div>\
				</li>\
				<li><a href=\"<c:url value ='employment.html'/>\">教学效果</a>\
					<div class=\"detail\">\
						<div><a href=\"<c:url value ='/html/teachEffectDetail-1.jsp'/>\">校外专家评价</a></div>\
    					<div><a href=\"<c:url value ='/html/teachEffectDetail-2.jsp'/>\">校内督导评价</a></div>\
    					<div><a href=\"<c:url value ='/html/teachEffectDetail-3.jsp'/>\">教师自我评价</a></div>\
    					<div><a href=\"<c:url value='/EvalatorServlet?method=LoadStudentEvalator&EvalatorpageQuery=1'/>\">校内学生评价</a></div>\
    					<div><a href=\"<c:url value ='/html/teachEffectDetail-1.jsp'/>\">社会评价</a></div>\
    					<div><a href=\"<c:url value ='/html/teachEffectDetail-2.jsp'/>\">教学评估及相关文件</a></div>\
					</div>\
				</li>\
				<li><a href=\"QQ.html\">教学互动</a>\
					<div class=\"detail\">\
						<div><a href=\"QQ.html\">QQ群</a></div>\
						<div><a href=\"WeChat.html\">微信群</a></div>\
						<div><a href=\"leavenote.html\">师生互动</a></div>\
					</div>\
				</li>\
			</ul>\
		</div>";

	document.getElementById("copyrights").innerHTML="<div class=\"mainWrap\">\
    		<div class=\"link\">\
    			<ul>\
	        		<li>友情链接</li>\
	        		<li><a href=\"http://www.dgut.edu.cn\">东莞理工学院</a></li>\
	            	<li><a href=\"http://jwc.dgut.edu.cn\">东莞理工学院教务处</a></li>\
	            	<li><a href=\"http://sw.dgut.edu.cn\">东莞理工学院计算机与网络安全学院</a></li>\
            	</ul>\
    		</div>\
    		<div class=\"final\">\
    			<ul>\
            		<li class=\"left\">© 2018,UML Group 2</li>\
            		<li class=\"right\">联系我们</li>\
            	</ul>\
    		</div>\
        </div>";
}
</script>
</html>