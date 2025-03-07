/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DataAccessPackage;

import java.util.ArrayList;
import javax.swing.JOptionPane;
import model.Addrestaurant;
import java.sql.*;


/**
 *
 * @author ATEIVIS
 */
public class AddRestaurantDao {

    public static void save(Addrestaurant add) {
        String query = "insert into restaurant1(location,restaurantName) values('" + add.getLocation() + "','" + add.getRestaurantName() + "')";
        DbOperations.setDataOrDelete(query, "Restaurant1 Table Created successfully");
    }
    public static ArrayList<Addrestaurant>getAllRecordsByLocation(String Location){
        ArrayList <Addrestaurant>arrayList=new ArrayList<>();
        try{
            ResultSet rs = DbOperations.getData("select *from restaurant1 where location like'"+Location+"'");
            while(rs.next()){
                Addrestaurant a=new Addrestaurant();
                a.setRestaurantName(rs.getString("restaurantName"));
                arrayList.add(a);
            }
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null,e);
            
        }
        return arrayList;
    }
}
