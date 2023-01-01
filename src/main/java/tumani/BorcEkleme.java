/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/File.java to edit this template
 */
package tumani;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Makbule Nur
 */
public class BorcEkleme {
     public boolean borcEkle(double toplamElektrik, double toplamAidat, double toplamCalisan, double toplamDigerler) {
        boolean ekledimi = false;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
            Statement st = con.createStatement();

            String sql = "INSERT INTO `borclar` (toplamElektrik,toplamAidat,toplamCalisan,toplamDigerler) values(?,?,?,?)";
            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setDouble(1, toplamElektrik);
            preparedStatement.setDouble(2, toplamAidat);
            preparedStatement.setDouble(3, toplamCalisan);
            preparedStatement.setDouble(4, toplamDigerler);
            preparedStatement.execute();
            con.close();
            ekledimi = true;

        } catch (Exception e) {
            System.out.println(e);

        }
        return ekledimi;
    }
    
    public static void main(String args[]) {
        
    }
}
