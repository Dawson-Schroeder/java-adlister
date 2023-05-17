package com.codeup.adlister;
import org.mindrot.jbcrypt.BCrypt;
public class HashTest {
    public static void main(String[] args) {
        String password = "password";
//        generating the salt:
        String salt = BCrypt.gensalt();
        System.out.println(salt);
//        this is how you would hash and salt a password.
        String hash = BCrypt.hashpw(password, BCrypt.gensalt());
        System.out.println(hash);
//        check password
        boolean passwordsMatch = BCrypt.checkpw(password, hash);
        System.out.println(passwordsMatch);
    }
}
