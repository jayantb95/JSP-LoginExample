/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Bean.User;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author jayantb95
 */
public class DatabaseConnectivity {

    String url = "jdbc:derby://localhost:1527/JSP_DB";
    String driver = "org.apache.derby.jdbc.ClientDriver";
    String username = "root";
    String password = "root";
    Connection con;

    public boolean checkCredentials(String uName, String pass) {
        String sql = "select * from users where uname=? and pwd=?";
        try {
            Class.forName(driver);
            con = (Connection) DriverManager.getConnection(url, username, password);
            PreparedStatement st = (PreparedStatement) con.prepareStatement(sql);
            st.setString(1, uName);
            st.setString(2, pass);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public int registerUser(String name, String uName, String contact, String address, String pwd) {
        String sql = "insert into users(name,uname,contact,address,pwd) values(?,?,?,?,?)";
        try {

            Class.forName(driver);
            con = (Connection) DriverManager.getConnection(url, username, password);
            PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);

            ps.setString(1, name);
            ps.setString(2, uName);
            ps.setString(3, contact);
            ps.setString(4, address);
            ps.setString(5, pwd);

            int i = ps.executeUpdate();
            if (i > 0) {
                return i;
            }

        } catch (Exception e2) {
            System.out.println(e2);
        }
        return 0;
    }

    
    public int deleteUser(User u) {
        String sql = "delete from users where uname=?";
        try {
            Class.forName(driver);
            con = (Connection) DriverManager.getConnection(url, username, password);
            PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
            ps.setString(1, u.getuName());
           
            int i = ps.executeUpdate();
            if (i > 0) {
                return i;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
}
