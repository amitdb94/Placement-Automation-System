<%-- 
    Document   : abtToVisit
    Created on : 15 Jul, 2017, 9:36:34 PM
    Author     : Amit Dubey(aD)
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Companies</title>
    </head>
    <body>
        <%
            String c = request.getParameter("cname");
            String ct = request.getParameter("con");
            String l = request.getParameter("lead");

            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/pas_db", "root", "");
            Statement st = conn.createStatement();
            String sql = "SELECT * from comdata";
            ResultSet rs = st.executeQuery(sql);
            //response.sendRedirect("entry1.jsp");

        %>
        <table border="5" width="3" cellspacing="3" cellpadding="2">     
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Company Name</th>
                    <th>Lead</th>
                    <th>Contact</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <%  String name, ld, ph;
                    int i = 0;
                    while (rs.next()) {
                        name = rs.getString(1);
                        ld = rs.getString(4);
                        ph = rs.getString(3);
                        i = i + 1;
                %>
                <tr>
                    <td><%=i%></td>
                    <td><%=name%></td>
                    <td><%=ld%></td>
                    <td><%=ph%></td>
                    <td><input type="button" onclick="location= 'visited.jsp'" value="Visited"></td>
                </tr>
                <%
                    }

                %>

            </tbody>    
        </table>     
    </body>
</html>