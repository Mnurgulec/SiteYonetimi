<%-- 
    Document   : CikisYap2
    Created on : 26 Ara 2022, 20:27:32
    Author     : tugce
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>TU-MANİ</title>
</head>
<body>
    <%
        session.invalidate();
        response.sendRedirect("index.jsp");
    %>

    <h1><font color="Red">Çıkış Başarılı</font></h1>

    <a href="index.jsp">Go-Back To Home Page</a>
</body>
</html>
ss