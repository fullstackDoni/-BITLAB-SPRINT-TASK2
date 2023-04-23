package kz.bitlab.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kz.bitlab.db.DBConnection;
import kz.bitlab.db.Items;

import java.io.IOException;

@WebServlet(value = "/SaveItem")
public class SaveItemServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("item_id"));
        String name = request.getParameter("name");
        String description = request.getParameter("description");

        double price = Double.parseDouble(request.getParameter("price"));
        Items items = DBConnection.getItem(id);
        if(items!=null){
            items.setName(name);
            items.setDescription(description);
            items.setPrice(price);
            DBConnection.UpdateItem(items);
            response.sendRedirect("/details?item_id="+id);
        }else {
            response.sendRedirect("/");
        }



        response.sendRedirect("/");
    }
}
