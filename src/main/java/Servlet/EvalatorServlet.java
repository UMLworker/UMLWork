package Servlet;

import Domain.Online_Evalator;
import Service.EvalatorService;
import Utils.BaseServlet;
import Utils.PageQuery;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EvalatorServlet")
public class EvalatorServlet extends BaseServlet{
    EvalatorService evalatorService=new EvalatorService();
    public String LoadStudentEvalator(HttpServletRequest request, HttpServletResponse response){

        PageQuery<Online_Evalator> EvalatorpageQuery=new PageQuery<>();
        //想要查询的页数
        String qp=request.getParameter("EvalatorpageQuery");
        EvalatorpageQuery.setCurrentPage(Integer.parseInt(qp));
        //想要查询页数的第一个评论的位置
        EvalatorpageQuery.setCurrentfirst((EvalatorpageQuery.getCurrentPage()-1)*PageQuery.getDefaultPageSize());
        //获取查询页的全部评论
        EvalatorpageQuery.setItems(evalatorService.getEvalatorList(EvalatorpageQuery.getCurrentfirst()));
        EvalatorpageQuery.setTotalRows(evalatorService.getEvalatorTotal());
        System.out.println(EvalatorpageQuery.getItems().size());
        System.out.println("===========================");
        System.out.println(EvalatorpageQuery.getItems().get(0));
        request.setAttribute("EvalatorpageQuery",EvalatorpageQuery);
        return "/html/teachEffectDetail-4.jsp";
    }
}
