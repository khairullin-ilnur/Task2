<%--
  Created by Ilnur.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <meta name="author" content="Khairullin Ilnur ">
    <meta charset="UTF-8">
</head>
<body>
    <%
        String name = "placeholder=\"E-Mail\"";
        String pas = "placeholder=\"Age\"";
        if (request.getParameter("fieldName") != null) {
            name = "value=\""+request.getParameter("fieldName")+"\"";
        }
        if (request.getParameter("fieldPass") != null) {
            pas = "value=\""+request.getParameter("fieldPass")+"\"";
        }
    %>

    <h1> Hello! Enter you e-mail and age, please. </h1>
    <%
        if (request.getParameter("error_msg") != null) { %>
    <p><font color="red">${param.error_msg}</font></p>
    <% }  %>

    <form action="/account">
        <div class="front-sign-in">
            <input type="text" <%=name%> name="fieldEmail">
            <input type="text" <%=pas%> name="fieldAge">
            <input type="submit" value="Login">
        </div>
    </form>
</body>
</html>
