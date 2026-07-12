package com.kafka.controller;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.kafka.dao.OrderDAO;
import com.kafka.model.Order;
@WebServlet("/ViewOrderServlet")
public class ViewOrderServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        OrderDAO dao = new OrderDAO();
        List<Order> orderList = dao.getAllOrders();
        request.setAttribute("orderList", orderList);
        RequestDispatcher rd = request.getRequestDispatcher("/viewOrder.jsp");
        rd.forward(request, response);
    }
}