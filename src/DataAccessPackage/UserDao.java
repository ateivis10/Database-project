/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DataAccessPackage;

import javax.swing.JOptionPane;
import model.User;
import java.sql.*;
import java.util.*;

/**
 *
 * @author ATEIVIS
 */
public class UserDao {

    public static void save(User user) {
        String query = "insert into user(name,username,mobile,password,status) values('" + user.getName() + "','" + user.getUsername() + "','" + user.getMobile() + "','" + user.getPassword() + "','false')";
        DbOperations.setDataOrDelete(query, "Registered Succesfully! Wait for Admin Approval");
    }

    public static User login(String username, String password) {
        User user = null;
        try {
            ResultSet rs = DbOperations.getData("select *from user where username='" + username + "'and password='" + password + "'");
            while (rs.next()) {
                user = new User();
                user.setStatus(rs.getString("status"));
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
        return user;
    }

    public static ArrayList<User> getAllRecord(String username) {
        ArrayList<User> arrayList = new ArrayList<>();
        try{
            ResultSet rs = DbOperations.getData("select *from user where username like'"+username+"'");
            while(rs.next()){
                User user = new User();
                user.setName(rs.getString("name"));
                user.setUsername(rs.getString("username"));
                user.setMobile(rs.getString("mobile"));
                user.setStatus(rs.getString("status"));
                arrayList.add(user);
            }
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null, e);
        }
        return arrayList;
    }
    public static void changeStatus(String username, String status){
        String query= "update user set status='"+status+"'where username='"+username+"'";
        DbOperations.setDataOrDelete(query, "Status Changed Successfully");
    }

}
