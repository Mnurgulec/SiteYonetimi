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

    /**
     * @param args the command line arguments
     */public boolean daireNoAta(int id,int daireNo,int katNo){
         boolean  atadimi=false;
          try{
            PreparedStatement preparedStatement;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
             Statement st=con.createStatement();
             ResultSet rs=st.executeQuery("SELECT *FROM daireler WHERE kullaniciID='"+id+"'");
             if(!rs.next()){
                  String sql="INSERT INTO daireler(kullaniciID, kat, daireNo) VALUES('" + id + "','" + katNo + "','" + daireNo +"')";
                  st.execute(sql); 
                 atadimi=true;
             }


        }catch(Exception e){
             System.out.println(e);

        }
        return atadimi;
    }
    public static void main(String args[]) {
        // TODO code application logic here
    }
}
