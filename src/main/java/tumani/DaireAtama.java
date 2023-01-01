/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/File.java to edit this template
 */
package tumani;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Makbule Nur
 */
public class DaireAtama {

   public boolean daireNoAta(int id,int katNo,int daireNo){
         boolean  atadimi=false;
          try{
             PreparedStatement ps;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
             String sql="SELECT daireNo FROM kullanici WHERE daireNo=?";
             ps= con.prepareStatement(sql);
            ps.setInt(1, daireNo);
           ResultSet rs = ps.executeQuery();
           System.out.println(sql);
             if(!rs.next()){
                  String query="UPDATE kullanici SET katNo=? , daireNo=? WHERE id=?";
                    ps = con.prepareStatement(query);                 
                    ps.setInt(1, katNo);
                    ps.setInt(2, daireNo);
                    ps.setInt(3, id);

                    ps.executeUpdate();
                    atadimi=true;
             }
                                                                       
       
        }catch(Exception e){            
             System.out.println(e);
        
        }
        return atadimi;   
    }
}
