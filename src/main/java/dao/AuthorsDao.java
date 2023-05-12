package dao;

import com.mysql.cj.jdbc.Driver;
import models.Author;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AuthorsDao implements Authors {

    private Connection connection;

    public AuthorsDao() {
        try {
            DriverManager.registerDriver(new Driver());
            Connection connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/codeup_test_db?allowPublicKeyRetrieval=true&useSSL=false",
                    "root",
                    "codeup");
        } catch (SQLException sqlx) {
            throw new RuntimeException("Error connecting to db", sqlx);
        }
    }

    @Override
    public List<Author> all() {
        List<Author> authors = new ArrayList<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM bigfoot_test_db.authors");
            while (resultSet.next()) {
                Author author = new Author(
                        resultSet.getLong("id"),
                        resultSet.getString("name")
                );
                authors.add(author);
            }
        } catch (SQLException sqlx) {
            throw new RuntimeException("Error connecting to db");
        }
        return authors;
    }


    @Override
    public void insert(Author author) {

    }
}
