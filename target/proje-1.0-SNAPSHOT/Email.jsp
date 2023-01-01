<%-- 
    Document   : Email.jsp
    Created on : 3 Ara 2022, 11:30:16
    Author     : user
--%>
<%@ page import = "java.io.*,java.util.*,javax.mail.*"%>
<%@ page import = "javax.mail.internet.*,javax.activation.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<%
request.setCharacterEncoding("ISO-8859-9");
%>
<%
    
    String result;
   // alici mail adresi
   
    String to ="hayrunnisayurdagul3@gmail.com";
    // String header = request.getParameter("header");
  // String subject = request.getParameter("message");
   // gonderici mail adresi
   final String from = request.getParameter("from");
   //gonderici sifre
   final String password=request.getParameter("password");
   // ozellik nesnesi olusturuluyor
   Properties properties = System.getProperties();
   // mail server ayarlari yapiliyor
   properties.put("mail.smtp.host", "smtp.mailgun.org");
   properties.put("mail.smtp.port", "587");
   properties.put("mail.smtp.starttls.enable", "true");
   properties.put("mail.smtp.auth", "true"); 
  
   // Mail icin session nesnesi olusturulur.
   Session mailSession = Session.getInstance(properties,
                           new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                           return new PasswordAuthentication(from, password);
                    }
             }); 
   try {
      // olusturulan sessiondan mimemesage nesnesi olusturulur
      MimeMessage message = new MimeMessage(mailSession);
      
      // gonderici adresi set ediliyor
      message.setFrom(new InternetAddress(from));
      
      // alici adresi set ediliyor
      message.addRecipient(Message.RecipientType.TO,
                               new InternetAddress(to));
      // mail basligi set ediliyor
      message.setSubject(request.getParameter("header"));
      
      // mail icerigi set ediliyor
      message.setText(request.getParameter("message"));
      
      // mail gonderiliyor
      Transport.send(message);
      //mail gonderilir ise sonuc 1
      response.sendRedirect("Iletisim.jsp?sonuc=1");
   } catch (MessagingException mex) {
      mex.printStackTrace();
    //mail gonderilemez ise sonuc 0
      response.sendRedirect("Iletisim.jsp?sonuc=0");
   }
%>
</body>
</html>