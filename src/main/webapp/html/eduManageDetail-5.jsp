<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
	<title>教学管理</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="../style/normal.css">
	<link rel="stylesheet" type="text/css" href="../style/eduManage/eduManageDetail.css">
    <link rel="stylesheet" type="text/css" href="../style/eduManage/normal.css">
    <link rel="icon" type="image/png" href="assets/img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <link href="../style/eduManage/bootstrap.css" rel="stylesheet" />
    <link href="../style/eduManage/fresh-bootstrap-table.css" rel="stylesheet" />
    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
	
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
	                    <h3>教学管理</h3>
	                    <ul>
							<li><a href="eduManageDetail-1.jsp">开课计划</a></li>
							<li><a href="eduManageDetail-2.jsp">上课班级</a></li>
							<li><a href="eduManageDetail-3.jsp">学生成绩</a></li>
							<li><a href="eduManageDetail-4.jsp">班级名册</a></li>
							<li class="current"><a href="eduManageDetail-5.jsp">作业案例</a></li>
						</ul>
	                </section>
	            </div>
	            <div class="column_2 ">
	                <article class="mainContent">
	                    <header class="contentNav">
	                        <nav class="nav">
	                            <a href="index.html">首页</a>·
	                            <a href="eduManageDetail-1.jsp">教学管理</a>·
	                            <a href="eduManageDetail-5.jsp">作业案例</a>
	                        </nav>
	                        <h1>作业案例</h1>
	                    </header>
	                    
								     
     <!-- 列表样式 -->     
    
	<div class="">
    <div style="width:110%">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                                
                <div class="fresh-table full-color-azure">
                <!--    Available colors for the full background: full-color-blue, full-color-azure, full-color-green, full-color-red, full-color-orange                  
                        Available colors only for the toolbar: toolbar-color-blue, toolbar-color-azure, toolbar-color-green, toolbar-color-red, toolbar-color-orange
                -->
                
                    <div class="toolbar">
                        <button id="alertBtn" class="btn btn-default">通知</button>
                    </div>
          
                    <table id="fresh-table" class="table">
                        <thead>
                            <th data-field="id">作业序号</th>
                        	<th data-field="name" data-sortable="true">课程</th>
                        	<th data-field="salary" data-sortable="true">作业次数</th>
                        	<th data-field="country" data-sortable="true">主题</th>
                        	<th data-field="city">样例</th>
                        	<th data-field="actions" data-formatter="operateFormatter" data-events="operateEvents">操作</th>
                        </thead>
                        <tbody>
                            <tr>
                            	<td>1</td>
                            	<td>面向对象分析与设计</td>
                            	<td>第一次作业</td>
                            	<td>类图设计</td>
                            	<td>样例1</td>
                            	<td></td>
                            </tr>
                            <tr>
                            	<td>2</td>
                            	<td>面向对象分析与设计</td>
                            	<td>第一次作业</td>
                            	<td>类图设计</td>
                            	<td>样例1</td>
                            	<td></td>
                            </tr>
                            <tr>
                            	<td>3</td>
                            	<td>面向对象分析与设计</td>
                            	<td>第一次作业</td>
                            	<td>类图设计</td>
                            	<td>样例1</td>
                            	<td></td>
                            </tr>
                            <tr>
                            	<td>4</td>
                            	<td>面向对象分析与设计</td>
                            	<td>第一次作业</td>
                            	<td>类图设计</td>
                            	<td>样例1</td>
                            	<td></td>
                            </tr>
                            <tr>
                            	<td>5</td>
                            	<td>面向对象分析与设计</td>
                            	<td>第一次作业</td>
                            	<td>类图设计</td>
                            	<td>样例1</td>
                            	<td></td>
                            </tr>
                            <tr>
                            	<td>6</td>
                            	<td>面向对象分析与设计</td>
                            	<td>第一次作业</td>
                            	<td>类图设计</td>
                            	<td>样例1</td>
                            	<td></td>
                            </tr>
                            <tr>
                            	<td>7</td>
                            	<td>面向对象分析与设计</td>
                            	<td>第一次作业</td>
                            	<td>类图设计</td>
                            	<td>样例1</td>
                            	<td></td>
                            </tr>
                            <tr>
                            	<td>8</td>
                            	<td>面向对象分析与设计</td>
                            	<td>第一次作业</td>
                            	<td>类图设计</td>
                            	<td>样例1</td>
                            	<td></td>
                            </tr>
                            <tr>
                            	<td>9</td>
                            	<td>面向对象分析与设计</td>
                            	<td>第一次作业</td>
                            	<td>类图设计</td>
                            	<td>样例1</td>
                            	<td></td>
                            </tr>
                            <tr>
                            	<td>10</td>
                            	<td>面向对象分析与设计</td>
                            	<td>第一次作业</td>
                            	<td>类图设计</td>
                            	<td>样例1</td>
                            	<td></td>
                            </tr>
                            <tr>
                            	<td>11</td>
                            	<td>面向对象分析与设计</td>
                            	<td>第一次作业</td>
                            	<td>类图设计</td>
                            	<td>样例1</td>
                            	<td></td>
                            </tr>
                            
                        </tbody>
                    </table>
                </div>
                
                
            </div>
        </div>
    </div>
</div>
     
                    
	
	                </article>
	            </div>
	        </div>
	    </section>
	</article>
	<!-- 通过js渲染，js代码在normal.js里 -->
	<div id="bottom"></div>
	<!-- 通过js渲染，js代码在normal.js里 -->
	<div id="copyrights"></div>
</body>


    <script type="text/javascript" src="../js/eduManage/jquery-1.11.2.min.js"></script>
    <script type="text/javascript" src="../js/eduManage/bootstrap.js"></script>
    <script type="text/javascript" src="../js/eduManage/bootstrap-table.js"></script>
    
    <script type="text/javascript">
        var $table = $('#fresh-table'),
            $alertBtn = $('#alertBtn'),
            full_screen = false;
            
        $().ready(function(){
            $table.bootstrapTable({
                toolbar: ".toolbar",
    
                showRefresh: true,
                search: true,
                showToggle: true,
                showColumns: true,
                pagination: true,
                striped: true,
                pageSize: 3,
                pageList: [3,6,8,10,20,50,100],
                
                formatShowingRows: function(pageFrom, pageTo, totalRows){
                    //do nothing here, we don't want to show the text "showing x of y from..." 
                },
                formatRecordsPerPage: function(pageNumber){
                    return pageNumber + " 选择显示行数";
                },
                icons: {
                    refresh: 'fa fa-refresh',
                    toggle: 'fa fa-th-list',
                    columns: 'fa fa-columns',
                    detailOpen: 'fa fa-plus-circle',
                    detailClose: 'fa fa-minus-circle'
                }
            });
            
                        
            
            $(window).resize(function () {
                $table.bootstrapTable('resetView');
            });
    
            
            window.operateEvents = {
                'click .like': function (e, value, row, index) {
                    alert('You click like icon, row: ' + JSON.stringify(row));
                    console.log(value, row, index);
                },
                'click .edit': function (e, value, row, index) {
                    alert('You click edit icon, row: ' + JSON.stringify(row));
                    console.log(value, row, index);    
                },
                'click .remove': function (e, value, row, index) {
                    $table.bootstrapTable('remove', {
                        field: 'id',
                        values: [row.id]
                    });
            
                }
            };
            
            $alertBtn.click(function () {
                alert("通知实例");
            });
            
        });
            
    
        function operateFormatter(value, row, index) {
            return [
                '<a rel="tooltip" title="Like" class="table-action like" href="javascript:void(0)" title="Like">',
                    '<i class="fa fa-heart"></i>',
                '</a>',
                '<a rel="tooltip" title="Edit" class="table-action edit" href="javascript:void(0)" title="Edit">',
                    '<i class="fa fa-edit"></i>',
                '</a>',
                '<a rel="tooltip" title="Remove" class="table-action remove" href="javascript:void(0)" title="Remove">',
                    '<i class="fa fa-remove"></i>',
                '</a>'
            ].join('');
        }
    
            
    </script>


</html>
