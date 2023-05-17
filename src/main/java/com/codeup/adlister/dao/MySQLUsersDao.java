package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;
import com.mysql.cj.jdbc.Driver;
import config.Config;

import java.sql.*;
import java.util.List;

public class MySQLUsersDao implements Users {

    private Connection connection;

    public MySQLUsersDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUsername(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

//    @Override
//    public List<User> all() {
//        Statement stmt = null;
//        try {
//            stmt = connection.createStatement();
//            ResultSet rs = stmt.executeQuery("SELECT * FROM users");
//            return findByUsername("search");
//        } catch (SQLException e) {
//            throw new RuntimeException("Error retrieving all ads.", e);
//        }
//    }

    @Override
    public User findByUsername(String username) {
        String query = "SELECT * FROM users WHERE username = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, username);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                long id = rs.getLong("id");
                String email = rs.getString("email");
                String password = rs.getString("password");

                return new User(id, username, email, password);
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error finding user by username.", e);
        }
        return null;
    }


    @Override
    public Long insert(User user) {
        String query = "INSERT INTO users(id, username, email, password) VALUES (?, ?, ?, ?)";
        try{
            PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, user.getId());
            stmt.setString(2, user.getUsername());
            stmt.setString(3, user.getEmail());
            stmt.setString(4, user.getPassword());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        }catch (SQLException e){
            throw new RuntimeException("Error creating a new user.", e);
        }
    }
}
