/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tumani;

import tumani.Kullanici;
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
public class SifreYenileme {
    public boolean sifreYenileme(String email,String sifre){
        
     try{
         Kullanici k1=new Kullanici();
            PreparedStatement preparedStatement;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
             Statement st=con.createStatement();
             String sql="UPDATE kullanici SET kullaniciSifresi= '" + sifre + "' WHERE kullaniciEmail='" + email + "'";
             st.execute(sql);
             
             con.close();
             return true;
        }catch(Exception e){
             System.out.println(e);
            return false;

        }
         
    }
    }

