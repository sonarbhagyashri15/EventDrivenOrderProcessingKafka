package com.kafka.controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.kafka.dao.OrderDAO;
@WebServlet("/DeleteOrderServlet")
public class DeleteOrderServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String id = request.getParameter("orderId");
            System.out.println("Received Order ID = " + id);
            int orderId = Integer.parseInt(id);
            OrderDAO dao = new OrderDAO();
            boolean status = dao.deleteOrder(orderId);
            if (status) {
                System.out.println("Order Deleted Successfully");
                response.sendRedirect("ViewOrderServlet");
            } else {
                System.out.println("Order ID Not Found");
                response.getWriter().println("<h3>Order ID not found!</h3>");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("<h3>Error while deleting order.</h3>");
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}