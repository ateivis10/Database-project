/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DataAccessPackage;

import javax.swing.JOptionPane;

/**
 *
 * @author ATEIVIS
 */
public class Tables {

    public static void main(String[] args) {
        try {
            String userTable = "create table user(name varchar(30),username varchar(20),mobile varchar(11),password varchar(10),status varchar(20),UNIQUE(username))";
            String adminDetails = "insert into user(name,username,mobile,password,status) values('Admin','admin','01346257563','1234','true')";
            
            String restaurantTable1 = "create table Restaurant1(restaurantId int AUTO_INCREMENT primary key,location varchar(30), restaurantName varchar(100))";
            DbOperations.setDataOrDelete(userTable, "User table created successfully");
            DbOperations.setDataOrDelete(adminDetails, "Admin details added successfully");
            DbOperations.setDataOrDelete(restaurantTable1, "Restaurant1 Table Created successfully");
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
    }
}
