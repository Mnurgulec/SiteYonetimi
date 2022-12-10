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
    String email;
    String sifre;
    String telefonNo;
    String yoneticiAdi;
    String adres;

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
            PreparedStatement preparedStatement;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
             Statement st=con.createStatement();
             
             ResultSet rs=st.executeQuery("SELECT *FROM kullanici WHERE yoneticiEmail='" + email + "' and yoneticiSifresi='" + sifre + "';");      
             
        while(rs.next()){                    
           
            Yonetici k1=new Yonetici();
            k1.setEmail(rs.getString("yoneticiEmail"));
            k1.setSifre(rs.getString("yoneticiSifresi"));            
            List.add(k1);
            
        }
        }catch(Exception e){            
             System.out.println(e);
            
              
        }
           return List;
    }
}
