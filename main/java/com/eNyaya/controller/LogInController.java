package com.eNyaya.controller;

import com.eNyaya.config.DBConnection; // Import the DBConnection class
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.sql.*;


@WebServlet("/login")
public class LogInController extends HttpServlet {
    private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("username");
        String password = request.getParameter("password");

        try (Connection conn = DBConnection.getConnection()) {  // Use DBConnection to get the connection
            String role = null;
            String name = null;

            // 1. Check Admin table
            String query = "SELECT name FROM admin WHERE email = ? AND password = ?";
            try (PreparedStatement stmt = conn.prepareStatement(query)) {
                stmt.setString(1, email);
                stmt.setString(2, password);
                ResultSet rs = stmt.executeQuery();
                if (rs.next()) {
                    role = "admin";
                    name = rs.getString("name");
                }
            }

            // 2. Check Client table
            if (role == null) {
                query = "SELECT name FROM clients WHERE email = ? AND password = ?";
                try (PreparedStatement stmt = conn.prepareStatement(query)) {
                    stmt.setString(1, email);
                    stmt.setString(2, password);
                    ResultSet rs = stmt.executeQuery();
                    if (rs.next()) {
                        role = "client";
                        name = rs.getString("name");
                    }
                }
            }

            // 3. Check Lawyer table
            if (role == null) {
                query = "SELECT name FROM lawyers WHERE email = ? AND password = ?";
                try (PreparedStatement stmt = conn.prepareStatement(query)) {
                    stmt.setString(1, email);
                    stmt.setString(2, password);
                    ResultSet rs = stmt.executeQuery();
                    if (rs.next()) {
                        role = "lawyer";
                        name = rs.getString("name");
                    }
                }
            }

            // 4. Process login result
            if (role != null) {
                // Create session and set attributes
                HttpSession session = request.getSession();
                session.setAttribute("userEmail", email);
                session.setAttribute("userName", name);
                session.setAttribute("userType", role);

                // Set session timeout (30 minutes)
                session.setMaxInactiveInterval(30 * 60);  // 30 minutes

                // Create a cookie for user
                Cookie userCookie = new Cookie("user", email);
                userCookie.setMaxAge(30 * 60);  // 30 minutes
                response.addCookie(userCookie);

                // Redirect based on role
                switch (role) {
                    case "admin":
                        response.sendRedirect("${pageContext.request.contextPath}/admin.jsp");
                        break;
                    case "client":
                        response.sendRedirect("${pageContext.request.contextPath}/client.jsp");
                        break;
                    case "lawyer":
                        response.sendRedirect("${pageContext.request.contextPath}/lawyer.jsp");
                        break;
                    default:
                        response.sendRedirect("${pageContext.request.contextPath}/login.jsp?error=invalid_role");
                        break;
                }
            } else {
                // Login failed
                response.sendRedirect("${pageContext.request.contextPath}/login.jsp?error=invalid_credentials");
            }

        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("${pageContext.request.contextPath}/login.jsp?error=db_error");
        }
    }
}

