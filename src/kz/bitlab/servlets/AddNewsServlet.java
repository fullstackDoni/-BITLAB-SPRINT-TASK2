package kz.bitlab.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kz.bitlab.db.*;

import java.io.IOException;

@WebServlet(value = "/AddNews")
public class AddNewsServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Users user = (Users) request.getSession().getAttribute("currentUser");

        if (user != null) {
            String title = request.getParameter("title");
            String content = request.getParameter("content");

            News news = new News();
            news.setTitle(title);
            news.setContent(content);
            news.setUsers(user);

            DBConnection.AddNews(news);

            response.sendRedirect("/AddNews");
        } else {
            response.sendRedirect("/login");
        }

    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Users users = (Users) request.getSession().getAttribute("currentUser");

        if (users != null) {
            request.getRequestDispatcher("/AddNews.jsp").forward(request, response);
        } else {
            response.sendRedirect("/login");
        }

    }
}
