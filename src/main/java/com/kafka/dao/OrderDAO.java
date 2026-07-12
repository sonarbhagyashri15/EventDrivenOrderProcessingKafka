package com.kafka.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.kafka.db.DBConnection;
import com.kafka.model.Order;
public class OrderDAO {
    public boolean saveOrder(Order order) {
        boolean status = false;
        try {
            Connection con = DBConnection.getConnection();
            String sql = "INSERT INTO orders(orderId, customerName, productName, quantity, price) VALUES(?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, order.getOrderId());
            ps.setString(2, order.getCustomerName());
            ps.setString(3, order.getProductName());
            ps.setInt(4, order.getQuantity());
            ps.setDouble(5, order.getPrice());
            System.out.println(order.getOrderId());
            System.out.println(order.getCustomerName());
            System.out.println(order.getProductName());
            System.out.println(order.getQuantity());
            System.out.println(order.getPrice());
            System.out.println("Saving Order Id="+order.getOrderId());
            int row = ps.executeUpdate();
            System.out.println("Row Inserted ="+row);
            if (row > 0) {
                status = true;
                System.out.println("Order Saved");
            }else {
            	System.out.println("Order not saved");
            	            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }
    public List<Order> getAllOrders() {
        List<Order> list = new ArrayList<>();
        try {
            Connection con = DBConnection.getConnection();
            String sql = "SELECT * FROM orders";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Order order = new Order();
                order.setOrderId(rs.getInt("orderId"));
                order.setCustomerName(rs.getString("customerName"));
                order.setProductName(rs.getString("productName"));
                order.setQuantity(rs.getInt("quantity"));
                order.setPrice(rs.getDouble("price"));
                list.add(order);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    public int getOrderCount() {
        int count = 0;
        try {
            Connection con = DBConnection.getConnection();
            PreparedStatement ps =
                    con.prepareStatement("SELECT COUNT(*) FROM orders");
            ResultSet rs = ps.executeQuery();
            if(rs.next()) {
                count = rs.getInt(1);
            }
            rs.close();
            ps.close();
            con.close();
        } catch(Exception e) {
            e.printStackTrace();
        }
        return count;
    }
    public boolean deleteOrder(int orderId) {
        boolean status = false;
        try {
            Connection con = DBConnection.getConnection();
            PreparedStatement ps =
                    con.prepareStatement("DELETE FROM orders WHERE orderId=?");
            ps.setInt(1, orderId);
            System.out.println("Deleting Order Id="+orderId);
            int row = ps.executeUpdate();
            if(row > 0){
                status = true;
            }
            con.close();
        } catch(Exception e){
            e.printStackTrace();
        }
        return status;
    }
    public int getTotalQuantity(){
        int total=0;
        try{
            Connection con=DBConnection.getConnection();
            PreparedStatement ps=
            con.prepareStatement("select sum(quantity) from orders");
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                total=rs.getInt(1);
            }
            con.close();
        }catch(Exception e){
            e.printStackTrace();
        }
        return total;
    }
    public double getTotalRevenue(){
        double total=0;
        try{
            Connection con=DBConnection.getConnection();
            PreparedStatement ps=
            con.prepareStatement("select sum(quantity*price) from orders");
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                total=rs.getDouble(1);
            }
            con.close();
        }catch(Exception e){
            e.printStackTrace();
        }
        return total;
    }
}