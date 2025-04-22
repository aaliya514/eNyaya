package com.eNyaya.controller;

import com.eNyaya.config.DBConnection;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/update-client-profile")
public class ClientProfileController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int clientId = Integer.parseInt(request.getParameter("client_id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String dob = request.getParameter("dob");
        String gender = request.getParameter("gender");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");

        try (Connection conn = DBConnection.getConnection()) {
            String query = "UPDATE clients SET name = ?, email = ?, dob = ?, gender = ?, phone = ?, address = ? WHERE client_id = ?";
            try (PreparedStatement stmt = conn.prepareStatement(query)) {
                stmt.setString(1, name);
                stmt.setString(2, email);
                stmt.setString(3, dob);
                stmt.setString(4, gender);
                stmt.setString(5, phone);
                stmt.setString(6, address);
                stmt.setInt(7, clientId);
                stmt.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        response.sendRedirect("client-profile"); // Redirect to client profile page
    }
}
