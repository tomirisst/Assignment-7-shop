<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: tomirissayat
  Date: 02.11.2020
  Time: 19:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Confirmation Page</title>
</head>
<body>
<style>
    body {
        background-image: url("https://s53.radikal.ru/i141/1103/26/5625ab6b3fe1.jpg");
        background-repeat: no-repeat;
        background-size: cover;
    }
</style>

<h3 style="color:white; font-family: 'Roboto', sans-serif; font-style:italic; text-align: center">List of bought items:</h3>
<%
    ArrayList<String> shopList = (ArrayList<String>) request.getSession().getAttribute("list");
    if (shopList != null) {
        for (String item : shopList) {
%>
<div style="text-align: center">
    <%=item%>
</div>
<%
        }
        session.setAttribute("list", new ArrayList<String>());
    }
    Date d = new Date(request.getSession().getCreationTime());
    Date l = new Date(request.getSession().getLastAccessedTime());
    int count = 0;
    if (session.getAttribute("count") != null) {
        count = (int) session.getAttribute("count");
    }
%>
<br>
<div style="text-align: center">
<h3 style="color:white; font-family: 'Roboto', sans-serif; font-style:italic;text-align: center">Session started:</h3>
<%=d%>
<br>
<h3 style="color:white; font-family: 'Roboto', sans-serif; font-style:italic;text-align: center">Session finished:</h3>
<%=l%>
<br><br>
<h3 style="color:white; font-family: 'Roboto', sans-serif; font-style:italic;text-align: center">Number of website visits:</h3>
<%= count%>
</div>
<br><br>

<form method="post" action="index.jsp" style="text-align: center">
    <button type="submit" style="background-color: darkred; color: white; border: 1px solid transparent;
    border-radius: .25rem; padding: .7rem 1rem; line-height: 1.3rem;">Log out</button>
</form>

</body>
</html>