package com.eNyaya.controller;

import com.eNyaya.dao.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/lawyer-profile")
public class LawyerProfileController extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Fetch form parameters
        String name = request.getParameter("name");
        String licenseNumber = request.getParameter("licenseNumber");
        String experience = request.getParameter("experience");
        String dob = request.getParameter("dob");
        String gender = request.getParameter("gender");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String district = request.getParameter("district");
        String province = request.getParameter("province");

        // Get email from session (email is read-only)
        HttpSession session = request.getSession();
        String email = (String) session.getAttribute("userEmail");

        // Update in database
        LawyerDAO lawyerDAO = new LawyerDAO();
        boolean success = lawyerDAO.updateLawyerProfile(email, name, licenseNumber, experience, dob, gender, phone, address, district, province);

        // Update session info if successful
        if (success) {
            session.setAttribute("userName", name); // Update name if needed in navbar or elsewhere
        }

        // Redirect back to profile (without edit mode)
        response.sendRedirect("lawyer-profile.jsp");
    }
}
