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
    double suBorcu;
    double gazBorcu;
    double guvenlikBorcu;
    double temizlikBorcu;
    double digerBorclar;
    double aidatBorcu;

    public double getSuBorcu() {
        return suBorcu;
    }

    public void setSuBorcu(double suBorcu) {
        this.suBorcu = suBorcu;
    }

    public double getGazBorcu() {
        return gazBorcu;
    }

    public void setGazBorcu(double gazBorcu) {
        this.gazBorcu = gazBorcu;
    }

    public double getGuvenlikBorcu() {
        return guvenlikBorcu;
    }

    public void setGuvenlikBorcu(double guvenlikBorcu) {
        this.guvenlikBorcu = guvenlikBorcu;
    }

    public double getTemizlikBorcu() {
        return temizlikBorcu;
    }

    public void setTemizlikBorcu(double temizlikBorcu) {
        this.temizlikBorcu = temizlikBorcu;
    }

    public double getDigerBorclar() {
        return digerBorclar;
    }

    public void setDigerBorclar(double digerBorclar) {
        this.digerBorclar = digerBorclar;
    }

    public double getAidatBorcu() {
        return aidatBorcu;
    }

    public void setAidatBorcu(double aidatBorcu) {
        this.aidatBorcu = aidatBorcu;
    }

    public double getBinaElektrigiBorcu() {
        return binaElektrigiBorcu;
    }

    public void setBinaElektrigiBorcu(double binaElektrigiBorcu) {
        this.binaElektrigiBorcu = binaElektrigiBorcu;
    }

    
    public double elektrikBorcuCek(String email){
        Borclar b1=new Borclar();
          try{
            PreparedStatement preparedStatement;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
             Statement st=con.createStatement();
             
             ResultSet rs=st.executeQuery("SELECT elektrik  FROM borclar INNER JOIN kullanici ON kullanici.id=borclar.kullaniciID WHERE kullaniciEmail='" + email + "';");      
             
        while(rs.next()){                    
            b1.setBinaElektrigiBorcu(rs.getInt("elektrik"));
        
        }
        }catch(Exception e){            
             System.out.println(e);     
        }
           return b1.getBinaElektrigiBorcu();
    }
     public double suBorcuCek(String email){
        Borclar b1=new Borclar();
          try{
            PreparedStatement preparedStatement;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
             Statement st=con.createStatement();
             
             ResultSet rs=st.executeQuery("SELECT su  FROM borclar INNER JOIN kullanici ON kullanici.id=borclar.kullaniciID WHERE kullaniciEmail='" + email + "';");      
             
        while(rs.next()){    
            b1.setSuBorcu(rs.getInt("su"));    
        }
        }catch(Exception e){            
             System.out.println(e); 
        }
           return b1.getSuBorcu();
    }
      public double gazBorcuCek(String email){
        Borclar b1=new Borclar();
          try{
            PreparedStatement preparedStatement;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
             Statement st=con.createStatement();
             
             ResultSet rs=st.executeQuery("SELECT gaz FROM borclar INNER JOIN kullanici ON kullanici.id=borclar.kullaniciID WHERE kullaniciEmail='" + email + "';");      
             
        while(rs.next()){                    
            b1.setGazBorcu(rs.getInt("gaz")); 
        }
        }catch(Exception e){            
             System.out.println(e);
        }
           return b1.getGazBorcu();
    }
      
      
      public double guvenlikBorcuCek(String email){
        Borclar b1=new Borclar();
          try{
            PreparedStatement preparedStatement;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
             Statement st=con.createStatement();
             
             ResultSet rs=st.executeQuery("SELECT guvenlik FROM borclar INNER JOIN kullanici ON kullanici.id=borclar.kullaniciID WHERE kullaniciEmail='" + email + "';");      
             
        while(rs.next()){                    
            b1.setGuvenlikBorcu(rs.getInt("guvenlik")); 
        }
        }catch(Exception e){            
             System.out.println(e);
        }
           return b1.getGuvenlikBorcu();
    }
      public double temizlikBorcuCek(String email){
        Borclar b1=new Borclar();
          try{
            PreparedStatement preparedStatement;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
             Statement st=con.createStatement();
             
             ResultSet rs=st.executeQuery("SELECT temizlik FROM borclar INNER JOIN kullanici ON kullanici.id=borclar.kullaniciID WHERE kullaniciEmail='" + email + "';");      
             
        while(rs.next()){                    
            b1.setTemizlikBorcu(rs.getInt("temizlik")); 
        }
        }catch(Exception e){            
             System.out.println(e);
        }
           return b1.getTemizlikBorcu();
    }
      public double digerBorclariCek(String email){
        Borclar b1=new Borclar();
          try{
            PreparedStatement preparedStatement;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
             Statement st=con.createStatement();
             
             ResultSet rs=st.executeQuery("SELECT diger FROM borclar INNER JOIN kullanici ON kullanici.id=borclar.kullaniciID WHERE kullaniciEmail='" + email + "';");      
             
        while(rs.next()){                    
            b1.setDigerBorclar(rs.getInt("diger")); 
        }
        }catch(Exception e){            
             System.out.println(e);
        }
           return b1.getDigerBorclar();
    }
      public double aidatBorcuCek(String email){
        Borclar b1=new Borclar();
          try{
            PreparedStatement preparedStatement;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
             Statement st=con.createStatement();
             
             ResultSet rs=st.executeQuery("SELECT aidat FROM borclar INNER JOIN kullanici ON kullanici.id=borclar.kullaniciID WHERE kullaniciEmail='" + email + "';");      
             
        while(rs.next()){                    
            b1.setAidatBorcu(rs.getInt("aidat")); 
        }
        }catch(Exception e){            
             System.out.println(e);
        }
           return b1.getAidatBorcu();
    }
}
