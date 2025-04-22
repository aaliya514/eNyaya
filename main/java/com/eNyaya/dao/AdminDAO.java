package com.eNyaya.dao;

import java.sql.*;
import com.eNyaya.model.Admin;
import com.eNyaya.config.*;

public class AdminDAO {

    public Admin getAdminByEmail(String email) {
        Admin admin = null;
        String sql = "SELECT * FROM admin WHERE email = ?";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, email);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                admin = new Admin();
                admin.setId(rs.getInt("admin_id"));
                admin.setName(rs.getString("name"));
                admin.setEmail(rs.getString("email"));
                admin.setJoinedDate(rs.getDate("joined_date"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return admin;
    }

    public boolean updateAdmin(Admin admin) {
        String sql = "UPDATE admin SET name = ? WHERE email = ?";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, admin.getName());
            stmt.setString(2, admin.getEmail());

            return stmt.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}