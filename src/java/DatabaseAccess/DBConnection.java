/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DatabaseAccess;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Administrator
 */
public class DBConnection {

    public static PreparedStatement createPrepareStatement(String sql) {
        try {

            String Url = "jdbc:mysql://localhost:3306/student_management";
            String User = "root";
            String Password = "";

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(Url, User, Password);

            PreparedStatement statement = con.prepareStatement(sql);
            return statement;
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
