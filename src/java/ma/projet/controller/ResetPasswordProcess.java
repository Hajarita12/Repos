package ma.projet.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ResetPasswordProcess", urlPatterns = {"/resetPasswordProcess"})
public class ResetPasswordProcess extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String newPassword = request.getParameter("password");
        
        // Mettez à jour le mot de passe de l'utilisateur dans la base de données
        // (Utilisez votre propre logique pour accéder à la base de données et effectuer la mise à jour)

        // Redirigez l'utilisateur vers une page de confirmation
        request.getRequestDispatcher("resetPasswordConfirmation.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Reset Password Process Servlet";
    }
}
