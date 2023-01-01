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
    int id;
    String baslik;
    String duyuru;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

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
     public static ArrayList<Duyurular> duyuruIDCek(){
         ArrayList<Duyurular> list=new ArrayList<>();
           try{
            PreparedStatement preparedStatement;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
             Statement st=con.createStatement();
             ResultSet rs=st.executeQuery("SELECT id FROM duyurular");     
             
        while(rs.next()){       
            Duyurular d1=new Duyurular();
            d1.setId(rs.getInt("id"));
            list.add(d1);
        }
 
        }catch(Exception e){            
             System.out.println(e);
        }
        return list;
    }
     
        public static ArrayList<Duyurular> duyuruBasligiCek(){
            ArrayList<Duyurular> list=new ArrayList<>();
            
       
           try{
            PreparedStatement preparedStatement;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
             Statement st=con.createStatement();
             ResultSet rs=st.executeQuery("SELECT duyuruBasligi FROM duyurular");      
             
        while(rs.next()){        
            Duyurular d1=new Duyurular();
            d1.setBaslik(rs.getString("duyuruBasligi"));
             list.add(d1);
        }
 
        }catch(Exception e){            
             System.out.println(e);
        }
        return  list;
    }
        
        public static ArrayList<Duyurular> duyuruMetniCek(){
            ArrayList<Duyurular> list=new ArrayList<>();
        
           try{
            PreparedStatement ps;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
             String sql="SELECT duyuruMetni FROM duyurular";
             ps=con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery(); 
              
             
        while(rs.next()){       
            Duyurular d1=new Duyurular();
            d1.setDuyuru(rs.getString("duyuruMetni"));
            list.add(d1);
        }
 
        }catch(Exception e){            
             System.out.println(e);
        }
        return list;
    }
        
        public boolean  duyuruGuncelle(int id,String baslik,String duyuru) throws ClassNotFoundException{
        ArrayList<Duyurular> List = new ArrayList<>();
        boolean guncelledimi=false;
       
           try{
            PreparedStatement ps;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
             Statement st=con.createStatement();
             String sql="UPDATE duyurular SET duyuruBasligi=?,duyuruMetni=? WHERE id=?";
             ps = con.prepareStatement(sql);
            ps.setInt(1, id);
             ps.setString(2, baslik);
             ps.setString(3, duyuru);
           ps.executeUpdate();
              
              guncelledimi=true;
           return guncelledimi;
        
        }catch(Exception e){            
             System.out.println(e); 
            
             return guncelledimi;
        
        }
           
    }
           
   public static boolean duyuruSil(int id) throws ClassNotFoundException{
           ArrayList<Duyurular> List = new ArrayList<>();
       
           try{
            PreparedStatement ps;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
             Statement st=con.createStatement();
             String sql="DELETE FROM duyurular  WHERE id=?";
             ps=con.prepareStatement(sql);
             ps.setInt(1,id);
            ps.executeUpdate();
            
             return true;
        
        }catch(Exception e){            
             System.out.println(e);   
             return false;
        }
           
    }
     
}
