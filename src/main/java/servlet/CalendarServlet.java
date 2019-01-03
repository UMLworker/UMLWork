package servlet;

import domain.Calendar;
import service.CalendarService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "CalendarServlet", urlPatterns = "/servlet/CalendarServlet")
public class CalendarServlet extends HttpServlet {
    private CalendarService calendarService = new CalendarService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String method = request.getParameter("method");
        if (method.equals("show")) {
            Calendar calendar = null;
            calendar = calendarService.findCalendar();
            request.setAttribute("calendar", calendar);
            request.getRequestDispatcher("../html/educationalDetail-2.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
