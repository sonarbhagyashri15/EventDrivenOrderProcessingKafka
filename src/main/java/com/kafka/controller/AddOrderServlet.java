package com.kafka.controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.gson.Gson;
import com.kafka.model.Order;
import com.kafka.producer.KafkaProducerService;
@WebServlet("/AddOrderServlet")
public class AddOrderServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int orderId = Integer.parseInt(request.getParameter("orderId"));
            String customerName = request.getParameter("customerName");
            String productName = request.getParameter("productName");
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            double price = Double.parseDouble(request.getParameter("price"));
            Order order = new Order();
            order.setOrderId(orderId);
            order.setCustomerName(customerName);
            order.setProductName(productName);
            order.setQuantity(quantity);
            order.setPrice(price);
            Gson gson = new Gson();
            String json = gson.toJson(order);
            KafkaProducerService.sendMessage(json);
            response.sendRedirect("success.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error : " + e.getMessage());
        }
    }
}