package com.eNyaya.dao;

import java.sql.*;
import com.eNyaya.model.Client;
import com.eNyaya.config.DBConnection;

public class ClientDAO {

    public Client getClientByEmail(String email) {
        Client client = null;
        String sql = "SELECT * FROM client WHERE email = ?";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, email);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                client = new Client();
                client.setClientID(rs.getInt("clientID"));
                client.setFullName(rs.getString("fullName"));
                client.setEmail(rs.getString("email"));
                client.setDateOfBirth(rs.getDate("dateOfBirth"));
                client.setGender(rs.getString("gender"));
                client.setPhone(rs.getString("phone"));
                client.setAddress(rs.getString("address"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return client;
    }

    public boolean updateClient(Client client) {
        String sql = "UPDATE client SET fullName=?, dateOfBirth=?, gender=?, phone=?, address=? WHERE email=?";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, client.getFullName());
            stmt.setDate(2, new java.sql.Date(client.getDateOfBirth().getYear()));
            stmt.setString(3, client.getGender());
            stmt.setString(4, client.getPhone());
            stmt.setString(5, client.getAddress());
            stmt.setString(6, client.getEmail());

            return stmt.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}