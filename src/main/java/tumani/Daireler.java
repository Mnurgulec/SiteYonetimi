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
public class Daireler {
    int id;
    int daireNo;
    int kat;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getDaireNo() {
        return daireNo;
    }

    public void setDaireNo(int daireNo) {
        this.daireNo = daireNo;
    }

    public int getKat() {
        return kat;
    }

    public void setKat(int kat) {
        this.kat = kat;
    }
       public int daireNoCek(String email){
          Daireler d1=new Daireler();
          try{
            PreparedStatement preparedStatement;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
             Statement st=con.createStatement();
             
             ResultSet rs=st.executeQuery("SELECT daireNo FROM daireler INNER JOIN kullanici ON kullanici.id=daireler.kullaniciID WHERE kullaniciEmail='" + email + "';");      
             
        while(rs.next()){                    
           
          
            d1.setDaireNo(rs.getInt("daireNo"));
                    
            
            
        }
        }catch(Exception e){            
             System.out.println(e);
            
         
        }
           return d1.getDaireNo();
    }
        public int katCek(String email){
          Daireler d1=new Daireler();
          try{
            PreparedStatement preparedStatement;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
             Statement st=con.createStatement();
             
             ResultSet rs=st.executeQuery("SELECT kat FROM daireler INNER JOIN kullanici ON kullanici.id=daireler.kullaniciID WHERE kullaniciEmail='" + email + "';");      
             
        while(rs.next()){                    
           
          
            d1.setKat(rs.getInt("kat"));
                    
            
            
        }
        }catch(Exception e){            
             System.out.println(e);
            
         
        }
           return d1.getKat();
    }
    
}
