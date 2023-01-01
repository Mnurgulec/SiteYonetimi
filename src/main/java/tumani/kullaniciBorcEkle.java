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
public class kullaniciBorcEkle {
   public void kullaniciElektrigiEkle(double elektrikBorcu){
          try{
            PreparedStatement ps;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
             Statement st=con.createStatement();
            
             
            String sql="UPDATE `kullanici` SET binaElektrigiBorcu=?";   
             ps = con.prepareStatement(sql);
            ps.setDouble(1, elektrikBorcu);
           ps.executeUpdate();
          
        }catch(Exception e){            
             System.out.println(e);
        }     
    }
     public void kullaniciAidatEkle(double aidatBorcu){
          try{
            PreparedStatement ps;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");

            String sql="UPDATE `kullanici` SET aidatBorcu=?";   
           ps = con.prepareStatement(sql);
            ps.setDouble(1, aidatBorcu);
           ps.executeUpdate();
            
        }catch(Exception e){            
             System.out.println(e);
        }     
    }
          public void kullaniciCalisanEkle(double calisanBorcu){
          try{
            PreparedStatement ps;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
             Statement st=con.createStatement();
            String sql="UPDATE `kullanici` SET calisanBorc=?";   
            ps = con.prepareStatement(sql);
            ps.setDouble(1, calisanBorcu);
           ps.executeUpdate();
   
        }catch(Exception e){            
             System.out.println(e);
        }     
    }
       public void kullaniciDigerEkle(double digerBorc){
          try{
            PreparedStatement ps;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
             Statement st=con.createStatement();
            String sql="UPDATE `kullanici` SET digerBorc=?";   
            ps = con.prepareStatement(sql);
            ps.setDouble(1, digerBorc);
           ps.executeUpdate();
        }catch(Exception e){            
             System.out.println(e);
        }     
    }
    
    
    public static void main(String args[]) {
        // TODO code application logic here
    }
}
