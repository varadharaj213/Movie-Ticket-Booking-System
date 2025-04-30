package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/TheaterServlet")
public class TheaterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String selectedTheater = request.getParameter("theater");

       
        HttpSession session = request.getSession();
        session.setAttribute("selectedTheater", selectedTheater);

        response.sendRedirect("schedule.jsp"); 
    }
}