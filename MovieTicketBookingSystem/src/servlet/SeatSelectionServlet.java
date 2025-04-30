package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/SeatSelectionServlet")
public class SeatSelectionServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String[] selectedSeats = request.getParameterValues("selectedSeats");

        if (selectedSeats != null) {
            
            HttpSession session = request.getSession();
            session.setAttribute("selectedSeats", selectedSeats);

            
            response.sendRedirect("payment.jsp");
        } else {
           
            response.sendRedirect("seatselection.jsp");
        }
    }
}