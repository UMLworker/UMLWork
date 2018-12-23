package Servlet;

import Utils.BaseServlet;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EvalatorServlet")
public class EvalatorServlet extends BaseServlet{

    public String login(HttpServletRequest request, HttpServletResponse response){
        System.out.println("hello world login");
        return "/index.jsp";
    }

    public String exit(HttpServletRequest request, HttpServletResponse response){
        System.out.println("hello world login");
        return "/html/courseDetail-4.html";
    }
}
