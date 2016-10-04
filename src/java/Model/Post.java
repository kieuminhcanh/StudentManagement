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
public class Post {

    private int id;
    private String title;
    private String content;
    private int user_id;
    private String fullname;

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getFullname() {
        return fullname;
    }

    public int getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getContent() {
        return content;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public boolean Create() {
        try {
            String sql = "INSERT INTO posts (title, content, user_id) VALUES( ?, ? ,?)";
            PreparedStatement statement = DBConnection.createPrepareStatement(sql);
            statement.setString(1, this.title);
            statement.setString(2, this.content);
            statement.setInt(3, this.user_id);
            statement.execute();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(Post.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public static ArrayList<Post> GetAll() {
        try {
            String sql = "SELECT * FROM posts, users WHERE users.id = posts.user_id";
            PreparedStatement statement = DBConnection.createPrepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            ArrayList<Post> posts = new ArrayList<Post>();
            while (rs.next()) {
                Post post = new Post();
                post.setId(rs.getInt("posts.id"));
                post.setTitle(rs.getString("title"));
                post.setContent(rs.getString("content"));
                post.setUser_id(rs.getInt("user_id"));
                post.setFullname(rs.getString("fullname"));

                posts.add(post);
            }

            return posts;
        } catch (SQLException ex) {
            Logger.getLogger(Post.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
