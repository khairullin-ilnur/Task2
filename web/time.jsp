<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.sql.Date" %>
<%--
  Created by Ilnur.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Time</title>
    <meta name="author" content="Khairullin Ilnur ">
    <meta charset="UTF-8">
</head>
<body>
    <% String mTime;
       SimpleDateFormat mSimpleDateFormat = new SimpleDateFormat("dd/MM/yyyy kk:mm");
       mTime = mSimpleDateFormat.format(new java.util.Date()); %>
    <p><%=mTime%></p>
</body>
</html>
