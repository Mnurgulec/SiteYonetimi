<%-- 
    Document   : DuyuruSil
    Created on : 30 Ara 2022, 23:04:43
    Author     : user
--%>
<% 
if(session.getAttribute("kullaniciEmail")!=null){
    response.sendRedirect("Girisyap.jsp");
}
%>
<%@page import="tumani.Duyurular"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    <%
           
        int duyuruID=Integer.parseInt(request.getParameter("id"));
        Duyurular duyurular=new Duyurular();
        boolean duyuru=duyurular.duyuruSil(duyuruID);
         if(duyuru==true){
             out.println("<script>alert('Duyuru silindi')</script>");
             out.println("<script>window.location.href='Duyurular-a.jsp';</script>");
          
          }else{
             out.println("<script>alert('silme başarısız!!!!')</script>");
             
          }
        
    %>
</body>
</html>
