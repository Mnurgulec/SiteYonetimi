<%-- 
    Document   : SifreDegistir
    Created on : 6 Ara 2022, 21:44:31
    Author     : user
--%>

<%@page import="tumani.SifreYenileme"%>
<%@page import="tumani.Kullanici"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title></title>
</head>
<body>
  <%
  String email=request.getParameter("email") ;
  String yeniSifre=request.getParameter("yenisifre");

  SifreYenileme s1=new SifreYenileme();

 boolean yenilendiMi= s1.sifreYenileme(email,yeniSifre);
      if(yenilendiMi==true){
             out.println("<script>alert('Şifreniz değiştirildi.')</script>");
             out.println("<script>window.location.href='Girisyap.jsp';</script>");
      }
  
   
  

%>
</body>
</html>
