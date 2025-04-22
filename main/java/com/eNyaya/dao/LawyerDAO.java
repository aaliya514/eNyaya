package com.eNyaya.dao;

import java.sql.*;
import com.eNyaya.config.DBConnection;

public class LawyerDAO {

    public boolean updateLawyerProfile(String email, String name, String licenseNumber, String experience,
                                       String dob, String gender, String phone, String address,
                                       String district, String province) {
        boolean success = false;

        try (Connection conn = DBConnection.getConnection()) {
            String sql = "UPDATE lawyers SET name=?, license_number=?, experience=?, dob=?, gender=?, phone=?, address=?, district=?, province=? WHERE email=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, licenseNumber);
            ps.setString(3, experience);
            ps.setString(4, dob);
            ps.setString(5, gender);
            ps.setString(6, phone);
            ps.setString(7, address);
            ps.setString(8, district);
            ps.setString(9, province);
            ps.setString(10, email);

            success = ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return success;
    }
}
