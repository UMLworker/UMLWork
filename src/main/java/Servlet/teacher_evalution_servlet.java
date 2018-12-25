package Servlet;


import Domain.teacher_evalution;
import Service.teacher_evalutionService;
import Utils.BaseServlet;

import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.List;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/teacher_evalution_servlet")
public class teacher_evalution_servlet extends BaseServlet {

    public String addEvalution(HttpServletRequest request, HttpServletResponse response){

        String evalutionTitle = request.getParameter("evalutionTitle");
        String teacherName=request.getParameter("teacherName");
        String content=request.getParameter("content");
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
        String evalutionTime = df.format(new Date());

        teacher_evalutionService evalutionService = new teacher_evalutionService();
        teacher_evalution evalution = new teacher_evalution();
        evalution.setEvalutionTitle(evalutionTitle);
        evalution.setTeacherName(teacherName);
        evalution.setContent(content);
        evalution.setEvalutionTime(evalutionTime);

        evalutionService.addEvalution(evalution);

        return "r:/admin/teacher_evalution.jsp";
    }

    public String LoadStudentEvalator(HttpServletRequest request, HttpServletResponse response){



        return "r:/html/teachEffectDetail-4.jsp";
    }

    public String showTeacherEvalution(HttpServletRequest request, HttpServletResponse response){
        teacher_evalutionService evalutionService = new teacher_evalutionService();
        List list = evalutionService.getAll();
        System.out.println("list"+list);
        request.getSession().setAttribute("list",list);
        return "r:/html/teachEffectDetail-3.jsp";
    }

    public String showInBackstage(HttpServletRequest request, HttpServletResponse response){
        teacher_evalutionService evalutionService = new teacher_evalutionService();
        List list = evalutionService.getAll();
        System.out.println("list"+list);
        request.getSession().setAttribute("list",list);
        return "r:/admin/teacher_evaluation.jsp";
    }



}
