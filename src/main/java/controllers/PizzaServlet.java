package controllers;

import models.PizzaOrder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/pizza-order")
public class PizzaServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/pizza-order.jsp").forward(req, resp);
        System.out.println(req);
        System.out.println(resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String crust = req.getParameter("crust");
        String sauce = req.getParameter("sauce");
        String size = req.getParameter("size");
        String[] toppings = req.getParameterValues("toppings");
        String address = req.getParameter("address");
        PizzaOrder newOrder = new PizzaOrder(crust, sauce, size, toppings, address);
        System.out.println(newOrder);
        req.setAttribute("order", newOrder);
        req.getRequestDispatcher("/thank-you.jsp").forward(req, resp);
    }
}

