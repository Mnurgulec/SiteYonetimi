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
import java.util.ArrayList;

/**
 *
 * @author user
 */
public class Yonetici {
    int id;
    String kullaniciAdi;

    String email;
    String sifre;
    String telefonNo;
    String yoneticiAdi;
    String adres;
    
    public String getKullaniciAdi() {
        return kullaniciAdi;
    }

    public void setKullaniciAdi(String kullaniciAdi) {
        this.kullaniciAdi = kullaniciAdi;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSifre() {
        return sifre;
    }

    public void setSifre(String sifre) {
        this.sifre = sifre;
    }

    public String getTelefonNo() {
        return telefonNo;
    }

    public void setTelefonNo(String telefonNo) {
        this.telefonNo = telefonNo;
    }

    public String getYoneticiAdi() {
        return yoneticiAdi;
    }

    public void setYoneticiAdi(String yoneticiAdi) {
        this.yoneticiAdi = yoneticiAdi;
    }

    public String getAdres() {
        return adres;
    }

    public void setAdres(String adres) {
        this.adres = adres;
    }
     public static ArrayList<Yonetici> Yazdir(String email,String sifre) throws ClassNotFoundException{
        ArrayList<Yonetici> List = new ArrayList<>();
       
           try{
            PreparedStatement ps;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
             Statement st=con.createStatement();
             
            String sql="SELECT *FROM yonetici WHERE yoneticiEmail=? and yoneticiSifre=?";  
            ps=con.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, sifre);
            ResultSet rs = ps.executeQuery();
             
        while(rs.next()){                    
            Yonetici y1=new Yonetici();
            y1.setEmail(rs.getString("yoneticiEmail"));
            y1.setSifre(rs.getString("yoneticiSifre"));            
            List.add(y1);
            
        }
        }catch(Exception e){            
             System.out.println(e);
            
              
        }
           return List;
    }
     
     
    public String kullaniciAdiCek(String email){
          Yonetici y1=new Yonetici();
          try{
            PreparedStatement ps;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
             Statement st=con.createStatement();
             
             String sql="SELECT yoneticiAdi FROM yonetici WHERE yoneticiEmail=?";   
              ps=con.prepareStatement(sql);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
             
        while(rs.next()){                    
  
            y1.setKullaniciAdi(rs.getString("yoneticiAdi"));
                    
            
            
        }
        }catch(Exception e){            
             System.out.println(e);
            
         
        }
           return y1.getKullaniciAdi();
    }
    
     public String TelefonNoCek(String email){
          Yonetici y1=new Yonetici();
          try{
            PreparedStatement ps;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
             Statement st=con.createStatement();
             String sql="SELECT yoneticiTelefonNo FROM yonetici WHERE yoneticiEmail=?";   
            ps=con.prepareStatement(sql);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
           
             
             
        while(rs.next()){                    
           
          
            y1.setTelefonNo(rs.getString("yoneticiTelefonNo"));
                    
            
            
        }
        }catch(Exception e){            
             System.out.println(e);
            
         
        }
           return y1.getTelefonNo();
    }
         public String sifreCek(String email){
          Yonetici y1=new Yonetici();
          try{
            PreparedStatement ps;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
             Statement st=con.createStatement();
             String sql="SELECT yoneticiSifre FROM yonetici WHERE yoneticiEmail=?";   
            ps=con.prepareStatement(sql);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
             
             
        while(rs.next()){                    
           
          
            y1.setSifre(rs.getString("yoneticiSifre"));
                    
            
            
        }
        }catch(Exception e){            
             System.out.println(e);
            
         
        }
           return y1.getSifre();
    } 
     
     
     
     
     public String AdresCek(String email){
          Yonetici y1=new Yonetici();
          try{
            PreparedStatement ps;
            Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
            Statement st=con.createStatement();           
             String sql="SELECT yoneticiAdres FROM yonetici WHERE yoneticiEmail=?";   
            ps=con.prepareStatement(sql);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
     
        while(rs.next()){                    
            y1.setAdres(rs.getString("yoneticiAdres"));
        }
        }catch(Exception e){            
             System.out.println(e); 
        }
           return y1.getAdres();
    }
}
