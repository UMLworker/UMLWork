package Servlet;

import Utils.BaseServlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Expert_EvaluationServlet")
public class Expert_EvaluationServlet extends BaseServlet {
    public String getContent(){

        return "r:/admin/index.html";
    }

    public String addContent(HttpServletRequest request, HttpServletResponse response){
        return "r:/admin/";
    }
}
