package com.eNyaya.controller;


import com.eNyaya.config.DBConnection;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

@WebServlet("/update-admin-profile")
public class AdminProfileController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        if (session == null || !"admin".equals(session.getAttribute("userType"))) {
            response.sendRedirect("login.jsp");
            return;
        }

        String email = request.getParameter("email");
        String name = request.getParameter("name");

        try (Connection conn = DBConnection.getConnection()) {
            String sql = "UPDATE admin SET name = ? WHERE email = ?";
            try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                stmt.setString(1, name);
                stmt.setString(2, email);

                int rowsUpdated = stmt.executeUpdate();
                if (rowsUpdated > 0) {
                    session.setAttribute("userName", name); // update session
                    response.sendRedirect("admin-profile.jsp?status=updated");
                } else {
                    response.sendRedirect("edit-admin-profile.jsp?error=notfound");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("edit-admin-profile.jsp?error=db");
        }
    }
}
