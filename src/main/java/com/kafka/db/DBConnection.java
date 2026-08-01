package com.kafka.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

    private static final String HOST = System.getenv("MYSQLHOST");
    private static final String PORT = System.getenv("MYSQLPORT");
    private static final String DATABASE = System.getenv("MYSQLDATABASE");
    private static final String USERNAME = System.getenv("MYSQLUSER");
    private static final String PASSWORD = System.getenv("MYSQLPASSWORD");

    private static final String URL =
            "jdbc:mysql://" + HOST + ":" + PORT + "/" + DATABASE
            + "?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";

    public static Connection getConnection() {

        Connection con = null;

        try {

            // Debug Prints
            System.out.println("HOST = " + HOST);
            System.out.println("PORT = " + PORT);
            System.out.println("DATABASE = " + DATABASE);
            System.out.println("USERNAME = " + USERNAME);
            System.out.println("URL = " + URL);

            Class.forName("com.mysql.cj.jdbc.Driver");

            con = DriverManager.getConnection(URL, USERNAME, PASSWORD);

            System.out.println("Database Connected Successfully...");

        } catch (Exception e) {
            e.printStackTrace();
        }

        return con;
    }
}