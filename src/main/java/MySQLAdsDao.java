import com.mysql.cj.jdbc.Driver;
import config.Config;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {

    private Connection connection;

    public MySQLAdsDao(Config config){
        try{
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    Config.getUrl(),
                    Config.getUsername(),
                    Config.getPassword());
        } catch (SQLException sqlx){
            throw new RuntimeException("Error connecting to db", sqlx);
        }
    }


    @Override
    public List<Ad> all() {
        List<Ad> ads = new ArrayList<>();
        try{
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM adlister_db.ads");
            while (resultSet.next()){
                Ad ad = new Ad(
                        resultSet.getLong("id"),
                        resultSet.getLong("userId"),
                        resultSet.getString("title"),
                        resultSet.getString("description")
                );
                ads.add(ad);
            }
        } catch (SQLException sqlx){
            throw new RuntimeException("error connecting to db", sqlx);
        }
        return ads;
    }


    @Override
    public Long insert(Ad ad) {
        try {
            PreparedStatement statement = connection.prepareStatement(
                    "INSERT INTO adlister_db.ads (user_id, ads.title, description) VALUES (?, ?, ?)",
                    Statement.RETURN_GENERATED_KEYS);
            statement.setLong(1, ad.getUserId());
            statement.setString(2, ad.getTitle());
            statement.setString(3, ad.getDescription());
            statement.executeUpdate();
            ResultSet rs = statement.getGeneratedKeys();
            if (rs.next()) {
                return rs.getLong(1);
            } else {
                throw new SQLException("Insertion failed, no ID obtained.");
            }
        } catch (SQLException sqlx) {
            throw new RuntimeException("Error inserting ad into db", sqlx);
        }
    }

    public static void main(String[] args) {

    }
}



