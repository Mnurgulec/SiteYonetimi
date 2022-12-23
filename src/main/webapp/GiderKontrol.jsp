<%-- 
    Document   : GiderKontrol
    Created on : 18 Ara 2022, 17:42:33
    Author     : tugce
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    <%

       // String kullanici = request.getParameter("kullaniciID");
        String aidat = request.getParameter("aidat");
        String elektrik = request.getParameter("elektrik");
        String su = request.getParameter("su");
        String gaz = request.getParameter("gaz");
        String guvenlik = request.getParameter("guvenlik");
        String temizlik = request.getParameter("temizlik");
        String diger = request.getParameter("diger");

        String sql = "INSERT INTO `borclar`(`aidat`, `elektrik`, `su`, `gaz`, `guvenlik`, `temizlik`,`diger`) VALUES ('"   + aidat + "','" + elektrik + "','" + su + "','" + gaz + "','" + guvenlik + "','" + temizlik + "','" + diger + "')";
        out.println("sql = " + sql);
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12", "grup12", "grup12");
            Statement stmt = con.createStatement();
            stmt.execute(sql);
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
</body>
</html>
