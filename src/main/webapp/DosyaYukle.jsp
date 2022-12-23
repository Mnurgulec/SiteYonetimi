<%@ page import="java.io.*,java.sql.*,java.util.*,java.text.*,java.text.SimpleDateFormat" %>
<html>
    <%
        int val = 0;
        String dosyakaydet = "";
        String dosyaadi = request.getContentType();
        if ((dosyaadi != null) && (dosyaadi.indexOf("multipart/form-data") >= 0)) {
            DataInputStream in = new DataInputStream(request.getInputStream());
            int dosyauz = request.getContentLength();
            byte veri[] = new byte[dosyauz];
            int okunan = 0;
            int toplamokunan = 0;
            while (toplamokunan < dosyauz) {
                okunan = in.read(veri, toplamokunan, dosyauz);
                toplamokunan += okunan;
            }
            String file = new String(veri);
            dosyakaydet = file.substring(file.indexOf("filename=\"") + 10);
            dosyakaydet = dosyakaydet.substring(0, dosyakaydet.indexOf("\n"));
            dosyakaydet = dosyakaydet.substring(dosyakaydet.lastIndexOf("\\") + 1, dosyakaydet.indexOf("\""));
            int son = dosyaadi.lastIndexOf("=");
            String boun = dosyaadi.substring(son + 1, dosyaadi.length());
            int yukle;
            yukle = file.indexOf("dosyaadi=\"");
            yukle = file.indexOf("\n", yukle) + 1;
            yukle = file.indexOf("\n", yukle) + 1;
            yukle = file.indexOf("\n", yukle) + 1;
            int boundaryLocation = file.indexOf(boun, yukle) - 4;
            int basla = ((file.substring(0, yukle)).getBytes()).length;
            int bitir = ((file.substring(0, boundaryLocation)).getBytes()).length;
            dosyakaydet = "C:/kedi/" + dosyakaydet;
            File ff = new File(dosyakaydet);
            FileOutputStream dosya = new FileOutputStream(ff);
            dosya.write(veri, basla, (bitir - basla));
            dosya.flush();
            dosya.close();
    %>
    <%
        PreparedStatement pstatement = null;
        String line = null;
        String value = null;
        try {
            StringBuilder contents = new StringBuilder();
            BufferedReader input = new BufferedReader(new FileReader(dosyakaydet));
            while ((line = input.readLine()) != null) {
                contents.append(line);
            }
            value = contents.toString();
            System.out.println("Value:" + value);
            PreparedStatement preparedStatement;
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup12?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup12", "grup12");
            Statement st = con.createStatement();
            java.util.Date now = new java.util.Date();
            String DATE_FORMAT = "yyyy-MM-dd hh:mm:ss";
            SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);

            String strDateNew = sdf.format(now);

            String queryString = "INSERT INTO yonetici set file_data='" + value + "',file_date='" + strDateNew + "'";

            //out.println(queryString);
            pstatement = con.prepareStatement(queryString);

            val = pstatement.executeUpdate();

            if (val > 0) {
    %>
    <br><br>
    <b>File 	<% out.println(dosyakaydet);%> has been uploaded and inserted into Database at <%=strDateNew%>.</b>
    <%
                }

            } catch (Exception e) {
               out.println(e);
            }
        }
    %>
</html>


