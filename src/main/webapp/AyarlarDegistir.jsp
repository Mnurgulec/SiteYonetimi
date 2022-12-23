<%-- 
    Document   : AyarlarDegistir
    Created on : 21 Ara 2022, 12:00:09
    Author     : tugce
--%>

<%@page import="tumani.Ayarlar"%>
<jsp:useBean id="obj" class="tumani.Kullanici" scope="session"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    <%
  String kullaniciTelefonNo=request.getParameter("kullaniciTelefonNo") ;
  String kullaniciSifresi=request.getParameter("kullaniciSifresi");

  Ayarlar a1=new Ayarlar();

 boolean yenilendiMi= a1.ayarlarYenileme(kullaniciTelefonNo,kullaniciSifresi, obj.getKullaniciEmail());
      if(yenilendiMi==true){
             out.println("<script>alert('Değiştirildi.')</script>");
             out.println("<script>window.location.href='Anasayfa.jsp';</script>");
      }
%>
</body>
</html>
