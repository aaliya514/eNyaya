package com.eNyaya.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

    private static final String URL = "jdbc:mysql://localhost:3306/eNyaya";  // Database URL
    private static final String USER = "root";  // Database user
    private static final String PASSWORD = "jesus";  // Database password

    public static Connection getConnection() throws SQLException {
        try {
            // Register the JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException | SQLException e) {
            throw new SQLException("Failed to connect to the database", e);
        }
    }
}