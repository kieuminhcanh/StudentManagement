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
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Administrator
 */
public class Category {

    private int id;
    private String name;

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public static ArrayList<Category> GetAll() {
        try {
            String sql = "SELECT * FROM categories";

            PreparedStatement statement = DBConnection.createPrepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            ArrayList<Category> categories = new ArrayList<Category>();
            while (rs.next()) {
                Category cat = new Category();
                cat.id = rs.getInt("id");
                cat.name = rs.getString("name");

                categories.add(cat);
            }
            return categories;
        } catch (SQLException ex) {
            Logger.getLogger(Post.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
