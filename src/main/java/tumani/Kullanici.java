/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tumani;

import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author user
 */
public class Kullanici {
    int id;
    String kullaniciAdi;
    String kullaniciSifresi;
    String kullaniciEmail;
    String kullaniciTelefonNo;
  

    public Kullanici() {
    }

    public Kullanici(int id, String kullaniciAdi, String kullaniciSifresi, String kullaniciEmail, String kullaniciTelefonNo, String kullaniciAdres) {
        this.id = id;
        this.kullaniciAdi = kullaniciAdi;
        this.kullaniciSifresi = kullaniciSifresi;
        this.kullaniciEmail = kullaniciEmail;
        this.kullaniciTelefonNo = kullaniciTelefonNo;
        
    }

    Kullanici(int aInt, String string, String string0, String string1, String string2) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }


   
 
   

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
  

   

    public String getKullaniciAdi() {
        return kullaniciAdi;
    }

    public void setKullaniciAdi(String kullaniciAdi) {
        this.kullaniciAdi = kullaniciAdi;
    }

    public String getKullaniciSifresi() {
        return kullaniciSifresi;
    }

    public void setKullaniciSifresi(String kullaniciSifresi) {
        this.kullaniciSifresi = kullaniciSifresi;
    }

    public String getKullaniciEmail() {
        return kullaniciEmail;
    }

    public void setKullaniciEmail(String kullaniciEmail) {
        this.kullaniciEmail = kullaniciEmail;
    }

    public String getKullaniciTelefonNo() {
        return kullaniciTelefonNo;
    }

    public void setKullaniciTelefonNo(String kullaniciTelefonNo) {
        this.kullaniciTelefonNo = kullaniciTelefonNo;
    }
    public void ekle(String kullaniciAdi, String kullaniciSifresi, String kullaniciEmail,String kullaniciTelefonNo ) {
        String sql = "INSERT INTO `kullanici`(`kullaniciAdi`, `kullaniciSifresi`, `kullaniciEmail`,`kullaniciTelefonNo`) VALUES ('" + kullaniciAdi + "','" + kullaniciSifresi + "','" + kullaniciEmail +"','"+kullaniciTelefonNo+ "')";
        System.out.println("sql = " + sql);
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12", "grup12", "grup12");
            Statement stmt = con.createStatement();
            stmt.execute(sql);
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public static ArrayList<Kullanici> dogrula(String email,String sifre) throws ClassNotFoundException{
        ArrayList<Kullanici> uList = new ArrayList<>();
       
           try{
            PreparedStatement preparedStatement;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
             Statement st=con.createStatement();
             
             ResultSet rs=st.executeQuery("SELECT *FROM kullanici WHERE kullaniciEmail='" + email + "' and kullaniciSifresi='" + sifre + "';");      
             
        while(rs.next()){                    
           
            Kullanici k1=new Kullanici();
            k1.setKullaniciEmail(rs.getString("kullaniciEmail"));
            k1.setKullaniciSifresi(rs.getString("kullaniciSifresi"));  
         
            uList.add(k1);
            
        }
        }catch(Exception e){            
             System.out.println(e);
            
              
        }
           return uList;
    }
     public static ArrayList<Kullanici> Yazdir() throws ClassNotFoundException{
        ArrayList<Kullanici> uList = new ArrayList<>();
       
           try{
            PreparedStatement preparedStatement;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
             Statement st=con.createStatement();
             
             ResultSet rs=st.executeQuery("SELECT *FROM kullanici");      
             
        while(rs.next()){                    
           
            Kullanici k1=new Kullanici();
             k1.setId(rs.getInt("id"));
            k1.setKullaniciEmail(rs.getString("kullaniciEmail"));
            k1.setKullaniciSifresi(rs.getString("kullaniciSifresi"));  
            k1.setKullaniciAdi(rs.getString("kullaniciAdi"));
            k1.setKullaniciTelefonNo(rs.getString("kullaniciTelefonNo"));
            uList.add(k1);
            
        }
        }catch(Exception e){            
             System.out.println(e);
            
              
        }
           return uList;
    }
    public String TelefonNoCek(String email){
          Kullanici k1=new Kullanici();
          try{
            PreparedStatement preparedStatement;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
             Statement st=con.createStatement();
             
             ResultSet rs=st.executeQuery("SELECT kullaniciTelefonNo FROM kullanici WHERE kullaniciEmail='" + email + "';");      
             
        while(rs.next()){                    
           
          
            k1.setKullaniciTelefonNo(rs.getString("kullaniciTelefonNo"));
                    
            
            
        }
        }catch(Exception e){            
             System.out.println(e);
            
         
        }
           return k1.getKullaniciTelefonNo();
    }
    
      public String emailCek(String email){
          Kullanici k1=new Kullanici();
          try{
            PreparedStatement preparedStatement;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
             Statement st=con.createStatement();
             
             ResultSet rs=st.executeQuery("SELECT kullaniciEmail FROM kullanici WHERE kullaniciEmail='" + email + "';");      
             
        while(rs.next()){                    
           
          
            k1.setKullaniciEmail(rs.getString("kullaniciEmail"));
                    
            
            
        }
        }catch(Exception e){            
             System.out.println(e);
            
         
        }
           return k1.getKullaniciEmail();
    }
     
     
     
     
      public String kullaniciAdiCek(String email){
          Kullanici k1=new Kullanici();
          try{
            PreparedStatement preparedStatement;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
             Statement st=con.createStatement();
             
             ResultSet rs=st.executeQuery("SELECT kullaniciAdi FROM kullanici WHERE kullaniciEmail='" + email + "';");      
             
        while(rs.next()){                    
           
          
            k1.setKullaniciAdi(rs.getString("kullaniciAdi"));
                    
            
            
        }
        }catch(Exception e){            
             System.out.println(e);
            
         
        }
           return k1.getKullaniciAdi();
    }
      
          public String sifreCek(String email){
          Kullanici k1=new Kullanici();
          try{
            PreparedStatement preparedStatement;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
             Statement st=con.createStatement();
             
             ResultSet rs=st.executeQuery("SELECT kullaniciSifresi FROM kullanici WHERE kullaniciEmail='" + email + "';");      
             
        while(rs.next()){                    
           
          
            k1.setKullaniciSifresi(rs.getString("kullaniciSifresi"));
                    
            
            
        }
        }catch(Exception e){            
             System.out.println(e);
            
         
        }
           return k1.getKullaniciSifresi();
    }
   

  
}