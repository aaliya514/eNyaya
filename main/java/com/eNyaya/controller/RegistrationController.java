package com.eNyaya.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


/**
 * Servlet implementation class Registration
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/registration" })
public class RegistrationController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public RegistrationController() {
        super();
    }

    // When the user visits the registration page (GET request)
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Show the registration form JSP page
        request.getRequestDispatcher("/WEB-INF/pages/registration.jsp").forward(request, response);
    }

    // When the user submits the registration form (POST request)
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println("doPost() method triggered!");  // For debugging

        // Get form inputs
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String dob = request.getParameter("dob");
        String gender = request.getParameter("gender");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        String userType = request.getParameter("userType");

        // If user is a lawyer, get extra details
        String licenseNumber = null;
        String province = null;
        String district = null;

        if ("lawyer".equals(userType)) {
            licenseNumber = request.getParameter("license");
            province = request.getParameter("province");
            district = request.getParameter("district");
        }

        // Validate name
        if (!isValidName(name)) {
            request.setAttribute("error", "Invalid name format");
            request.getRequestDispatcher("/WEB-INF/pages/registration.jsp").forward(request, response);
            return;
        }

        // Validate phone number
        if (!isValidPhoneNumber(phone)) {
            request.setAttribute("error", "Invalid phone number");
            request.getRequestDispatcher("/WEB-INF/pages/registration.jsp").forward(request, response);
            return;
        }

        // Check if passwords match
        if (!password.equals(confirmPassword)) {
            request.setAttribute("error", "Passwords do not match");
            request.getRequestDispatcher("/WEB-INF/pages/registration.jsp").forward(request, response);
            return;
        }

        // Connect to database and insert user
        try (Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/your_database", "root", "password")) {

            // Check if email already exists
            if (isEmailExist(conn, email)) {
                request.setAttribute("error", "Email already exists");
                request.getRequestDispatcher("/WEB-INF/pages/registration.jsp").forward(request, response);
                return;
            }

            // Insert into clients or lawyers table based on user type
            if ("client".equals(userType)) {
                insertClient(conn, name, email, phone, dob, gender, password);
            } else if ("lawyer".equals(userType)) {
                insertLawyer(conn, name, email, phone, dob, gender, password, licenseNumber, province, district);
            }

            // Registration successful → redirect to login page
            request.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(request, response);

        } catch (SQLException e) {
            e.printStackTrace();  // Show error in server logs
            request.setAttribute("error", "Database error occurred");
            request.getRequestDispatcher("/WEB-INF/pages/registration.jsp").forward(request, response);
        }
    }

    // Check if email already exists in clients or lawyers table
    private boolean isEmailExist(Connection conn, String email) throws SQLException {
        String query = "SELECT COUNT(*) FROM clients WHERE email = ? UNION SELECT COUNT(*) FROM lawyers WHERE email = ?";
        try (PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, email);
            stmt.setString(2, email);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                if (rs.getInt(1) > 0) return true;
            }
            return false;
        }
    }

    // Check if name contains only letters and spaces
    private boolean isValidName(String name) {
        return name != null && name.matches("[A-Za-z ]+");
    }

    // Check if phone number is valid
    private boolean isValidPhoneNumber(String phone) {
        return phone != null && phone.matches("^\\+?[0-9]{10,15}$");
    }

    // Insert new client into the clients table
    private void insertClient(Connection conn, String name, String email, String phone, String dob,
                               String gender, String password) throws SQLException {
        String query = "INSERT INTO clients (name, email, phone, dob, gender, password) VALUES (?, ?, ?, ?, ?, ?)";
        try (PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, name);
            stmt.setString(2, email);
            stmt.setString(3, phone);
            stmt.setString(4, dob);
            stmt.setString(5, gender);
            stmt.setString(6, password);
            stmt.executeUpdate();
        }
    }

    // Insert new lawyer into the lawyers table
    private void insertLawyer(Connection conn, String name, String email, String phone, String dob,
                               String gender, String password, String licenseNumber,
                               String province, String district) throws SQLException {
        String query = "INSERT INTO lawyers (name, email, phone, dob, gender, password, license_number, province, district) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try (PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, name);
            stmt.setString(2, email);
            stmt.setString(3, phone);
            stmt.setString(4, dob);
            stmt.setString(5, gender);
            stmt.setString(6, password);
            stmt.setString(7, licenseNumber);
            stmt.setString(8, province);
            stmt.setString(9, district);
            stmt.executeUpdate();
        }
    }
}