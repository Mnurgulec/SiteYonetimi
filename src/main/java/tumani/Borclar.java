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
    
     double toplamElektrik;
     double toplamAidat;
     double toplamCalisan;
     double toplamDigerler;

    public double getToplamElektrik() {
        return toplamElektrik;
    }

    public void setToplamElektrik(double toplamElektrik) {
        this.toplamElektrik = toplamElektrik;
    }

    public double getToplamAidat() {
        return toplamAidat;
    }

    public void setToplamAidat(double toplamAidat) {
        this.toplamAidat = toplamAidat;
    }

    public double getToplamCalisan() {
        return toplamCalisan;
    }

    public void setToplamCalisan(double toplamCalisan) {
        this.toplamCalisan = toplamCalisan;
    }

    public double getToplamDigerler() {
        return toplamDigerler;
    }

    public void setToplamDigerler(double toplamDigerler) {
        this.toplamDigerler = toplamDigerler;
    }
     
    public static double toplamAidatBorcu(){
         Borclar b1=new Borclar();
          try{
            PreparedStatement ps;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
             String sql="SELECT toplamAidat FROM borclar ORDER BY ID DESC LIMIT 1";  
            ps=con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
           
             
        while(rs.next()){                    
            b1.setToplamAidat(rs.getDouble("toplamAidat"));
        }
        }catch(Exception e){            
             System.out.println(e);
            
         
        }
           return b1.getToplamAidat();
    }
    public static double toplamElektrikBorcu(){
         Borclar b1=new Borclar();
          try{
            PreparedStatement ps;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
             Statement st=con.createStatement();
              String sql="SELECT toplamElektrik FROM borclar  ORDER BY ID DESC LIMIT 1";  
            ps=con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
          
             
        while(rs.next()){                    
            b1.setToplamElektrik(rs.getDouble("toplamElektrik"));
        }
        }catch(Exception e){            
             System.out.println(e);
            
         
        }
           return b1.getToplamElektrik();
    }
    
        public static double toplamCalisanBorcu(){
         Borclar b1=new Borclar();
          try{
            PreparedStatement ps;
            Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
            Statement st=con.createStatement();
          
            String sql="SELECT toplamCalisan FROM borclar  ORDER BY ID DESC LIMIT 1";  
            ps=con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
     
             
        while(rs.next()){                    
            b1.setToplamCalisan(rs.getDouble("toplamCalisan"));
        }
        }catch(Exception e){            
             System.out.println(e);
            
         
        }
           return b1.getToplamCalisan();
    }
        public static double toplamDigerGiderlerBorcu(){
         Borclar b1=new Borclar();
          try{
            PreparedStatement ps;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
             String sql="SELECT toplamDigerler FROM borclar ORDER BY ID DESC LIMIT 1";  
            ps=con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
       
             
        while(rs.next()){      
            
            b1.setToplamDigerler(rs.getDouble("toplamDigerler"));
        }
        }catch(Exception e){            
             System.out.println(e);
            
         
        }
           return b1.getToplamDigerler();
    }
}