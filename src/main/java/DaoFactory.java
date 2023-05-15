import config.Config;

public class DaoFactory {
    private static Ads adsDao;

    public static Ads getAdsDao() {
        if (adsDao == null) {
            adsDao = new ListAdsDao();
        }
        return adsDao;
    }
    Config config = new Config("jdbc:mysql://localhost:3306/adlister_db", "adlister", "codeup");
    MySQLAdsDao dao = new MySQLAdsDao(config);
}
