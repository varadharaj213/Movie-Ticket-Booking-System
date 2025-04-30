package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/PaymentProcessServlet")
public class PaymentProcessServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String cardNumber = request.getParameter("cardNumber");
        String expiration = request.getParameter("expiration");
        String cvv = request.getParameter("cvv");

        
        String confirmationNumber = generateConfirmationNumber();

       
        HttpSession session = request.getSession();
        session.setAttribute("confirmationNumber", confirmationNumber);

        
        response.sendRedirect("confirmation.jsp");
    }

    private String generateConfirmationNumber() {
        
        int confirmationNumber = (int)(Math.random() * 100000);
        return String.format("%06d", confirmationNumber);
    }
}