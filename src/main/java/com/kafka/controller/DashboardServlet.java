package com.kafka.controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import com.kafka.dao.OrderDAO;
@WebServlet("/DashboardServlet")
public class DashboardServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        OrderDAO dao = new OrderDAO();
        int totalOrders = dao.getOrderCount();
        int totalQuantity = dao.getTotalQuantity();
        double totalRevenue = dao.getTotalRevenue();
        request.setAttribute("totalOrders", totalOrders);
        request.setAttribute("totalQuantity", totalQuantity);
        request.setAttribute("totalRevenue", totalRevenue);
        request.getRequestDispatcher("dashboard.jsp")
               .forward(request, response);
    }
}