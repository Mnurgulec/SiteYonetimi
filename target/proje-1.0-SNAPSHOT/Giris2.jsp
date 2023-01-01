<%-- 
    Document   : useBean
    Created on : 5 Kas 2022, 11:24:32
    Author     : user
--%>


<%@page import="tumani.Yonetici"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="tumani.Kullanici"%>
<%@page import="java.util.ArrayList"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="obj" class="tumani.Kullanici" scope="session"/>
<jsp:useBean id="yn" class="tumani.Yonetici" scope="session"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   
</head>
<body>
    
    <%
        
        
         String secim=request.getParameter("select"); 
         String email=request.getParameter("email"); 
         String sifre=request.getParameter("sifre"); 
         if(secim.equals("1"))
         {
            Kullanici k1=new Kullanici();
           
           
            ArrayList<Kullanici> kullanici=k1.dogrula(email,sifre);
            if(kullanici.size()>0){
             session.setAttribute("kullaniciEmail", email);
             session.setAttribute("kullaniciSifre", sifre);
               response.sendRedirect("Kullaniciprofili-k.jsp");
            }else{
             out.println("<script>alert('Email veya şifre hatalı.Lütfen tekrar deneyiniz.')</script>");
             out.println("<script>window.location.href='Girisyap.jsp';</script>");
             }
        }
        if(secim.equals("0"))
         {

            Yonetici y1=new Yonetici();
            
            ArrayList<Yonetici> yonetici=y1.Yazdir(email,sifre);
            if(yonetici.size()>0){
             session.setAttribute("yoneticiEmail", email);
             session.setAttribute("yoneticiSifre", sifre);
               response.sendRedirect("Kullaniciprofili-a.jsp");
            }else{
             out.println("hata");
           }
        }
         
        
        //out.println("isim:  "+obj.getKullaniciEmail()+"<br>");
        //out.println("sifre:  "+ obj.getKullaniciSifresi()+"<br>");
       
       
        
        
    %>
</body>
</html>
