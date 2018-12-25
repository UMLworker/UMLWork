package Servlet;

import Utils.BaseServlet;
import Utils.PageQuery;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Domain.Class_List;

/**
 * Servlet implementation class class_list_Servlet
 */
@WebServlet("/class_list_Servlet")
public class class_list_Servlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Service.class_list_Service class_list_Service=new Service.class_list_Service();
//    /**
//     * Default constructor. 
//     */
//    public class_list_Servlet() {
//        // TODO Auto-generated constructor stub
//    }
    public String LoadStudentEvalator(HttpServletRequest request, HttpServletResponse response){

    	 PageQuery<Class_List> classListpageQuery=new PageQuery<>();
	        //想要查询的页数
	        String qp=request.getParameter("classListpageQuery");//?
	        classListpageQuery.setCurrentPage(Integer.parseInt(qp));
	        //想要查询页数的第一个评论的位置
	        classListpageQuery.setCurrentfirst((classListpageQuery.getCurrentPage()-1)*PageQuery.getDefaultPageSize());
	        //获取查询页的全部评论
	        classListpageQuery.setItems(class_list_Service.getClassLists(classListpageQuery.getCurrentfirst()));
	        classListpageQuery.setTotalRows(class_list_Service.getClassListTotal());
	        request.getSession().setAttribute("classListpageQuery",classListpageQuery);

        return "r:/html/teachEffectDetail-4.jsp";//???
    }

    public String Admin_LoadClassList(HttpServletRequest request, HttpServletResponse response){

        PageQuery<Class_List> classListpageQuery=new PageQuery<>();
        //想要查询的页数
        String qp=request.getParameter("classListpageQuery");//?
        classListpageQuery.setCurrentPage(Integer.parseInt(qp));
        //想要查询页数的第一个评论的位置
        classListpageQuery.setCurrentfirst((classListpageQuery.getCurrentPage()-1)*PageQuery.getDefaultPageSize());
        //获取查询页的全部评论
        classListpageQuery.setItems(class_list_Service.getClassLists(classListpageQuery.getCurrentfirst()));
        classListpageQuery.setTotalRows(class_list_Service.getClassListTotal());
        request.getSession().setAttribute("classListpageQuery",classListpageQuery);
        return "r:/admin/admin_class_list.jsp";
    }
    
    public String AddClassList(HttpServletRequest request, HttpServletResponse response){
        
        String class_name=request.getParameter("class_name");
        String major=request.getParameter("major");
        String course=request.getParameter("course");
        String class_file=request.getParameter("class_file");
        Class_List class_List=new Class_List();
        class_List.setClass_name(class_name);
        class_List.setMajor(major);
        class_List.setCourse(course);
        class_List.setClass_file(class_file);
        
        return "r:/admin/admin-evalator.jsp";
    }

    public String deleteClassList(HttpServletRequest request, HttpServletResponse response){
        String class_id=request.getParameter("class_id")+"";//why
        class_list_Service.deleteClassList(class_id);

        return "r:/admin/admin_class_list.jsp";//
    }
}
