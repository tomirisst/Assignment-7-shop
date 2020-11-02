import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

@WebServlet("/CookieServlet")
public class CookieServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cookie username = new Cookie("username", request.getParameter("username"));
        Cookie email = new Cookie("email", request.getParameter("email"));
        Cookie password = new Cookie("password", request.getParameter("password"));
        username.setMaxAge(60*30);
        email.setMaxAge(60*30);
        password.setMaxAge(60*30);
        response.addCookie(username);
        response.addCookie(email);
        response.addCookie(password);
        Cookie ck1 = new Cookie("loggedIn", "true");
        ck1.setMaxAge(60*30);
        response.addCookie(ck1);
        response.sendRedirect("cart.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}