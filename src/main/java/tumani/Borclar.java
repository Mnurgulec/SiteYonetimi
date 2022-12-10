/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tumani;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author user
 */
public class Borclar {
    double binaElektrigiBorcu;
    double calisanBorcu;
    double binaGiderleri;

    public double getBinaElektrigiBorcu() {
        return binaElektrigiBorcu;
    }

    public void setBinaElektrigiBorcu(double binaElektrigiBorcu) {
        this.binaElektrigiBorcu = binaElektrigiBorcu;
    }

    public double getCalisanBorcu() {
        return calisanBorcu;
    }

    public void setCalisanBorcu(double calisanBorcu) {
        this.calisanBorcu = calisanBorcu;
    }

    public double getBinaGiderleri() {
        return binaGiderleri;
    }

    public void setBinaGiderleri(double binaGiderleri) {
        this.binaGiderleri = binaGiderleri;
    }
    
    public double elektrikBorcuCek(String email){
        Borclar b1=new Borclar();
          try{
            PreparedStatement preparedStatement;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
             Statement st=con.createStatement();
             
             ResultSet rs=st.executeQuery("SELECT apartmanElektriği  FROM borclar INNER JOIN kullanici ON kullanici.id=borclar.kullaniciID WHERE kullaniciEmail='" + email + "';");      
             
        while(rs.next()){                    
            b1.setBinaElektrigiBorcu(rs.getInt("apartmanElektriği"));
        
        }
        }catch(Exception e){            
             System.out.println(e);     
        }
           return b1.getBinaElektrigiBorcu();
    }
     public double binaBorcuCek(String email){
        Borclar b1=new Borclar();
          try{
            PreparedStatement preparedStatement;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
             Statement st=con.createStatement();
             
             ResultSet rs=st.executeQuery("SELECT binaGiderleri  FROM borclar INNER JOIN kullanici ON kullanici.id=borclar.kullaniciID WHERE kullaniciEmail='" + email + "';");      
             
        while(rs.next()){    
            b1.setBinaGiderleri(rs.getInt("binaGiderleri"));    
        }
        }catch(Exception e){            
             System.out.println(e); 
        }
           return b1.getBinaGiderleri();
    }
      public double calisanBorcuCek(String email){
        Borclar b1=new Borclar();
          try{
            PreparedStatement preparedStatement;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
             Statement st=con.createStatement();
             
             ResultSet rs=st.executeQuery("SELECT calisanBorc FROM borclar INNER JOIN kullanici ON kullanici.id=borclar.kullaniciID WHERE kullaniciEmail='" + email + "';");      
             
        while(rs.next()){                    
            b1.setCalisanBorcu(rs.getInt("calisanBorc")); 
        }
        }catch(Exception e){            
             System.out.println(e);
        }
           return b1.getCalisanBorcu();
    }
}
