<%-- 
    Document   : Kaydol2.jsp
    Created on : 31 Ara 2022, 14:14:51
    Author     : Makbule Nur
--%>
 <%request.setCharacterEncoding("utf-8");%>
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
    <title>JSP Page</title>
</head>
<body>
    <%
        Kullanici db = new Kullanici();
        String kullaniciAdi = request.getParameter("kullaniciAdi");
        String kullaniciSifresi = request.getParameter("kullaniciSifresi");
        String kullaniciEmail = request.getParameter("kullaniciEmail");
        String kullaniciTelefonNo = request.getParameter("kullaniciTelefonNo");

        if (kullaniciAdi.equals("") || kullaniciSifresi.equals("") || kullaniciEmail.equals("") || kullaniciTelefonNo.equals("")) {

            out.println("<script>alert('Boş alan girilemez!.')</script>");
            out.println("<script>window.location.href='Kaydol.jsp';</script>");
        } else {
            db.ekle(kullaniciAdi, kullaniciSifresi, kullaniciEmail, kullaniciTelefonNo);
            out.println("Kullanıcı kaydedildi.");
            out.println("<script>window.location.href='Uyebilgileri-a.jsp';</script>");
        }


    %>
</body>
</html>
