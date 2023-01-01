<%-- 
    Document   : UyeBilgileriSil
    Created on : 29 Ara 2022, 18:34:00
    Author     : tugce
--%>

<%@page import="tumani.Kullanici"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
if(session.getAttribute("kullaniciEmail")!=null){
    response.sendRedirect("Girisyap.jsp");
}
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>TU-MANİ</title>
</head>
<body>
    <%
        try {
        
            int id = Integer.parseInt(request.getParameter("id"));
            Kullanici k1 = new Kullanici();

            boolean sildimi = k1.kisiSil(id);
            if (sildimi == true) {
                out.println("<script>alert('Kullanıcı silindi!')</script>");
                out.println("<script>window.location.href='Uyebilgileri-a.jsp';</script>");
            }
        } catch (Exception e) {

            out.println(e);
        }
    %>
</body>
</html>
