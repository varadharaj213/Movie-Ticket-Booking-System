package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/MovieSelectionServlet")
public class MovieSelectionServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String selectedMovie = request.getParameter("movie");
        String selectedShowtime = request.getParameter("showtime");

        
        HttpSession session = request.getSession();
        session.setAttribute("selectedMovie", selectedMovie);
        session.setAttribute("selectedShowtime", selectedShowtime);

        response.sendRedirect("seatselection.jsp"); 
    }
}