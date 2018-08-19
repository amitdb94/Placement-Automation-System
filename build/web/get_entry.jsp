<%-- 
    Document   : get_entry
    Created on : 16 Jul, 2017, 11:20:17 AM
    Author     : Amit Dubey(aD)
--%>

<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String c = request.getParameter("cname");
            String a = request.getParameter("cadd");
            String ct = request.getParameter("con");
            String l = request.getParameter("lead");

            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/pas_db", "root", "");
            Statement st = conn.createStatement();
            String sql = "INSERT INTO comdata VALUES('" + c + "','" + a + "','" + ct + "','" + l + "')";
            st.executeUpdate(sql);
            response.sendRedirect("entry1.jsp");

        %>
    </body>
</html>
