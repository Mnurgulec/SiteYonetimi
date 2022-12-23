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
public class Duyurular {
    String baslik;
    String duyuru;

    public String getBaslik() {
        return baslik;
    }

    public void setBaslik(String baslik) {
        this.baslik = baslik;
    }

    public String getDuyuru() {
        return duyuru;
    }

    public void setDuyuru(String duyuru) {
        this.duyuru = duyuru;
    }
    
    public static boolean duyuruEkle(String baslik,String duyuru) throws ClassNotFoundException{
        ArrayList<Duyurular> List = new ArrayList<>();
       
           try{
            PreparedStatement preparedStatement;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
             Statement st=con.createStatement();
             String sql="INSERT INTO duyurular(duyuruBasligi,duyuruMetni) values('" + baslik + "' , '" + duyuru + "')";
             st.execute(sql);    
             return true;
        
        }catch(Exception e){            
             System.out.println(e);
            
             return false;
        }
           
    }
}
