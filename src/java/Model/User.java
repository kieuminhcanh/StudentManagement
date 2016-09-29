/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import DatabaseAccess.DBConnection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Administrator
 */
public class User {

    private int id;
    private String username;
    private String password;
    private String fullname;
    private String email;

    public User() {
    }

    public User(String username, String password, String fullname, String email) {
        this.username = username;
        this.password = password;
        this.fullname = fullname;
        this.email = email;
    }
    
      public int getId() {
        return id;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public String getFullname() {
        return fullname;
    }

    public String getEmail() {
        return email;
    }

    public static ArrayList<User> GetAll() {
        try {
            ArrayList<User> userList = new ArrayList<User>();

            String sql = "SELECT * FROM users";
            PreparedStatement statement = DBConnection.createPrepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.username = rs.getString("username");
                user.password = rs.getString("password");
                user.fullname = rs.getString("fullname");
                user.email = rs.getString("email");

                userList.add(user);
            }
            return userList;
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

  

    public boolean Create() {
        try {
            String sql = "INSERT INTO users(username, password, fullname, email) VALUES (?,?,?,?)";
            PreparedStatement statement = DBConnection.createPrepareStatement(sql);
            statement.setString(1, this.username);
            statement.setString(2, this.password);
            statement.setString(3, this.fullname);
            statement.setString(4, this.email);
            statement.execute();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }

        return false;
    }

    public boolean Read() {
        return false;
    }

    public boolean Update() {
        return false;
    }

    public boolean Delete() {
        return false;
    }
}
