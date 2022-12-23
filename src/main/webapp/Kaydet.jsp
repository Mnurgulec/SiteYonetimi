<%-- 
    Document   : Kaydet
    Created on : 16 Ara 2022, 20:27:22
    Author     : tugce
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="obj" class="tumani.Kullanici" scope="session"/>
<%@page import="tumani.*"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    
    <% 
        Kullanici db = new Kullanici();
        String kullaniciAdi = request.getParameter("kullaniciAdi");
        String kullaniciSifresi = request.getParameter("kullaniciSifresi");
        String kullaniciEmail = request.getParameter("kullaniciEmail");
        String kullaniciTelefonNo = request.getParameter("kullaniciTelefonNo");
   
        db.ekle(kullaniciAdi, kullaniciSifresi, kullaniciEmail,kullaniciTelefonNo);
        
    %>
</body>
</html>
