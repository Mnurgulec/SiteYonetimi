/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tumani;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

/**
 *
 * @author tugce
 */
public class Ayarlar {
    public boolean ayarlarYenileme(String kullaniciTelefonNo,String kullaniciSifresi,String kullaniciEmail){
          
          try{
            PreparedStatement preparedStatement;
             Class.forName("com.mysql.cj.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
             Statement st=con.createStatement();
           String sql="UPDATE kullanici SET kullaniciTelefonNo= '" + kullaniciTelefonNo + "' , kullaniciSifresi= '" + kullaniciSifresi + "'  WHERE kullaniciEmail='" + kullaniciEmail + "'";
            st.execute(sql);                                                              
       return true;
        }catch(Exception e){            
             System.out.println(e);
        return false;
        }
           
    }
}
