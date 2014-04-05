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
        if (request.getParameter("fieldEmail") != null) {
            name = "value=\""+request.getParameter("fieldEmail")+"\"";
        }
        if (request.getParameter("fieldAge") != null) {
            pas = "value=\""+request.getParameter("fieldAge")+"\"";
        }
    %>

    <h1> Hello!</h1>
    <h2>Enter you e-mail and age, please.</h2>

    <%
        if (request.getParameter("error_msg") != null) { %>
    <p><font color="red">${param.error_msg}</font></p>
    <% }  %>

    <form action="/account.jsp">
        <div class="front-sign-in">
            <input type="text" <%=name%> name="fieldEmail">
            <input type="text" <%=pas%> name="fieldAge">
            <input type="submit" value="Ok">
        </div>
    </form>
</body>
</html>
