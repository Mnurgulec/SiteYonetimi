/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tumani;

import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;
import java.beans.Transient;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.persistence.Column;

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
    int katNo;
    int daireNo;
    double binaElektrigiBorcu;
    double aidatBorcu;
    double calisanBorcu;
    double digerBorcu;

    public double getBinaElektrigiBorcu() {
        return binaElektrigiBorcu;
    }

    public void setBinaElektrigiBorcu(double binaElektrigiBorcu) {
        this.binaElektrigiBorcu = binaElektrigiBorcu;
    }

    public double getAidatBorcu() {
        return aidatBorcu;
    }

    public void setAidatBorcu(double aidatBorcu) {
        this.aidatBorcu = aidatBorcu;
    }

    public double getCalisanBorcu() {
        return calisanBorcu;
    }

    public void setCalisanBorcu(double calisanBorcu) {
        this.calisanBorcu = calisanBorcu;
    }

    public double getDigerBorcu() {
        return digerBorcu;
    }

    public void setDigerBorcu(double digerBorcu) {
        this.digerBorcu = digerBorcu;
    }
    
    
    
    
    public int getkatNo() {
        return katNo;
    }

    public void setkatNo(int katNo) {
        this.katNo = katNo;
    }

    public int getdaireNo() {
        return daireNo;
    }

    public void setdaireNo(int daireNo) {
        this.daireNo = daireNo;
    }

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
    public void ekle(String kullaniciAdi, String kullaniciSifresi, String kullaniciEmail, String kullaniciTelefonNo) {
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
            Statement stmt = con.createStatement();
            String sql = "INSERT INTO `kullanici`(`kullaniciAdi`, `kullaniciSifresi`, `kullaniciEmail`,`kullaniciTelefonNo`) VALUES (?,?,?,?)";
              PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setString(1, kullaniciAdi);
            preparedStatement.setString(2, kullaniciSifresi);
            preparedStatement.setString(3, kullaniciEmail);
            preparedStatement.setString(4, kullaniciTelefonNo);
            preparedStatement.execute();
            stmt.execute(sql);
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public static ArrayList<Kullanici> dogrula(String email,String sifre) throws ClassNotFoundException{
        ArrayList<Kullanici> uList = new ArrayList<>();
       
           try{
            PreparedStatement ps;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
             Statement st=con.createStatement();
             
            String sql="SELECT *FROM kullanici WHERE kullaniciEmail=? and kullaniciSifresi=?";
             ps=con.prepareStatement(sql);
             ps.setString(1, email);
             ps.setString(2, sifre);
            ResultSet rs = ps.executeQuery();
             
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
            PreparedStatement ps;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
             Statement st=con.createStatement();
             
             String sql="SELECT *FROM kullanici";      
              ps=con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery(); 
             
        while(rs.next()){                    
           
            Kullanici k1=new Kullanici();
             k1.setId(rs.getInt("id"));
            k1.setKullaniciEmail(rs.getString("kullaniciEmail"));
            k1.setKullaniciSifresi(rs.getString("kullaniciSifresi"));  
            k1.setKullaniciAdi(rs.getString("kullaniciAdi"));
            k1.setKullaniciTelefonNo(rs.getString("kullaniciTelefonNo"));
            k1.setkatNo(rs.getInt("katNo"));
            k1.setdaireNo(rs.getInt("daireNo"));
            uList.add(k1);
            
        }
        }catch(Exception e){            
             System.out.println(e);
            
              
        }
           return uList;
    }
     
     public static ArrayList<Kullanici> kullaniciIDCek() throws ClassNotFoundException{
        ArrayList<Kullanici> uList = new ArrayList<>();
       
           try{
            PreparedStatement ps;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
             
             String sql="SELECT *FROM kullanici";      
              ps=con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
             
        while(rs.next()){                    
           
            Kullanici k1=new Kullanici();
             k1.setId(rs.getInt("id"));
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
            PreparedStatement ps;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
               String sql="SELECT kullaniciTelefonNo FROM kullanici WHERE kullaniciEmail=?";
             ps=con.prepareStatement(sql);
             ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
               
             
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
            PreparedStatement ps;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
             String sql="SELECT kullaniciEmail FROM kullanici WHERE kullaniciEmail=?";
             ps=con.prepareStatement(sql);
             ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
                
             
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
            PreparedStatement ps;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
         
                String sql="SELECT kullaniciAdi FROM kullanici WHERE kullaniciEmail=?";
             ps=con.prepareStatement(sql);
             ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
             
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
            PreparedStatement ps;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
             String sql="SELECT kullaniciSifresi FROM kullanici WHERE kullaniciEmail=?";
             ps=con.prepareStatement(sql);
             ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
             
       
             
        while(rs.next()){                    
           
          
            k1.setKullaniciSifresi(rs.getString("kullaniciSifresi"));
                    
            
            
        }
        }catch(Exception e){            
             System.out.println(e);
            
         
        }
           return k1.getKullaniciSifresi();
    }
   
public int katNoVarMi(){
       Kullanici k1=new Kullanici();
          try{
            PreparedStatement ps;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");

             String sql="SELECT katNo FROM kullanici";
             ps=con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
             if(rs.next()){
                k1.setkatNo(rs.getInt("katNo"));               
             }
        }catch(Exception e){
             System.out.println(e);

        }
        return k1.getkatNo();
    }
public int daireNoVarMi(){
       Kullanici k1=new Kullanici();
          try{
            PreparedStatement ps;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
            String sql="SELECT daireNo FROM kullanici";
             ps=con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
             if(rs.next()){
                k1.setdaireNo(rs.getInt("daireNo"));
         
             }
        }catch(Exception e){
             System.out.println(e);

        }
        return k1.getdaireNo();
    }

public int daireNOCek(String email){
       Kullanici k1=new Kullanici();
          try{
            PreparedStatement ps;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
               
             String sql="SELECT daireNo FROM kullanici WHERE kullaniciEmail=?";
             ps=con.prepareStatement(sql);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
           
             if(rs.next()){
                k1.setdaireNo(rs.getInt("daireNo"));
                
             }
        }catch(Exception e){
             System.out.println(e);

        }
        return k1.getdaireNo();
    }
  public int katNOCek(String email){
       Kullanici k1=new Kullanici();
          try{
            PreparedStatement ps;
             Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
             
             String sql="SELECT katNo FROM kullanici WHERE kullaniciEmail=?";
             ps=con.prepareStatement(sql);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
             if(rs.next()){
                k1.setkatNo(rs.getInt("katNo"));
                
             }
        }catch(Exception e){
             System.out.println(e);

        }
        return k1.getkatNo();
    }
    public boolean kisiSil(int id) {
        try {
            PreparedStatement ps;
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
            Statement st= con.createStatement();
            String query = "DELETE FROM kullanici WHERE id=?";
            ps=con.prepareStatement(query);
            ps.setInt(1,id);
             ps.executeUpdate();
           
            return true;

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}