<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : logout
    Created on : 15 Jul, 2017, 9:35:14 PM
    Author     : Amit Dubey(aD)
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.invalidate();
            response.sendRedirect("tpoHome.html");
                    %>
        <h1>Hello World!</h1>
    </body>
</html>
<sql:update var="m" dataSource="mm">
    DELETE FROM table_name
    WHERE column_name = some_value
</sql:update>