package ro.siit.servlet;

import ro.siit.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/entity"})
public class EntityServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("application/json");
        User authenticatedUser = (User)(req.getSession().getAttribute("authenticatedUser"));
        resp.getWriter().println("{authenticatedUser: "+ authenticatedUser.getUsername() + "}");
    }
}
