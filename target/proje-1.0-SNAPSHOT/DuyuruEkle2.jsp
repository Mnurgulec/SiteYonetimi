<%-- 
    Document   : DuyuruEkle2
    Created on : 11 Ara 2022, 21:00:48
    Author     : user
--%>
<% 
if(session.getAttribute("kullaniciEmail")!=null){
    response.sendRedirect("Girisyap.jsp");
}
%>
<%request.setCharacterEncoding("utf-8");%>
<%@page import="java.util.ArrayList"%>
<%@page import="tumani.Duyurular"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title></title>
</head>
<body>
    <h1></h1>
 <%
     
        String duyuruBaslik=request.getParameter("baslik");
        String duyuruMetin=request.getParameter("duyuru");
        if(duyuruBaslik.equals("")||duyuruMetin.equals(""))
        {
        
          out.println("<script>alert('alanlar boş olamaz')</script>"); 
          out.println("<script>window.location.href='DuyuruEkle-a.jsp';</script>");
         }else{
             Duyurular duyurular=new Duyurular();
          boolean duyuru=duyurular.duyuruEkle(duyuruBaslik,duyuruMetin);
         if(duyuru==true){
             out.println("<script>alert('Duyuru eklendi')</script>");
             out.println("<script>window.location.href='DuyuruEkle-a.jsp';</script>");
          
          }else{
             out.println("<script>alert('Ekleme başarısız!!!!')</script>"); 
          }
          }
        
        
    %>
</body>
</html>
