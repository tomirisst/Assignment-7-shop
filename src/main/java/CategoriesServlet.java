import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet(name = "CategoriesServlet", value = "/shopUpdate")
public class CategoriesServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        Cookie[] cookies = request.getCookies();
        boolean here = false;
        for (Cookie ck:
                cookies) {
            if (ck.getName().equals("shopList")) here = true;
        }
        Cookie nk = new Cookie("shopList", "value");
        nk.setMaxAge(60);
        response.addCookie(nk);
        if (!here) {
            session.setAttribute("list", new ArrayList<String>());
        }
        if (request.getParameter("item") != null) {
            ((ArrayList<String>)session.getAttribute("list")).add(request.getParameter("item"));
        }
        String json = new Gson().toJson(((ArrayList<String>)session.getAttribute("list")));
        PrintWriter out = response.getWriter();
        out.print(json);
        out.flush();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}