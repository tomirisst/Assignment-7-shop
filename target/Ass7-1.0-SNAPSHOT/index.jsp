<%--
  Created by IntelliJ IDEA.
  User: tomirissayat
  Date: 02.11.2020
  Time: 15:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration</title>
    <meta charset="UTF-8">
    <title>Registration</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="fancy_btn.css">
</head>
<body>
<style>
    body {
        background-image: url("https://s53.radikal.ru/i141/1103/26/5625ab6b3fe1.jpg");
        background-repeat: no-repeat;
        background-size: cover;
    }
</style>
<div class="container container-login" style = "margin-top: 10px; color: #fff;">
    <div class="col-md-8" style="margin-left: 150px">
        <form method="post" action="CookieServlet">
            <span class="error text-danger" id="errormsg" style="display: none"></span>
            <h3 style="background-color: rgba(255, 61, 61, 0.568); height: 50px; text-align: center; padding: 5px"><b>Registration</b></h3>
            <div class="form-group">
                <small id="availability"></small><br>
                <label>Email address</label>
                <input type="email" class="form-control" id="InputEmail1" aria-describedby="emailHelp" style="background-color: rgba(14, 56, 156, 0.329); border: 0px; color: white;">
            </div>
            <div class="form-group">
                <label for="firstName">First Name</label>
                <input type="text" class="form-control" id="firstName" style="background-color: rgba(14, 56, 156, 0.329); border: 0px; color: white;">
            </div>
            <div class="form-group">
                <label for="secondName">Second Name</label>
                <input type="text" class="form-control" id="secondName" style="background-color: rgba(14, 56, 156, 0.329); border: 0px; color: white;">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <input type="password" class="form-control" id="exampleInputPassword1" style="background-color: rgba(14, 56, 156, 0.329); border: 0px; color: white;">
            </div>
            <button style="width: 100%; height: 42px; text-align: center; font-size: 1.1em;
                background-color: rgba(255, 61, 61, 0.668); color: white" type="submit" class="btn btn-primary1" id="register">Registrate</button>
        </form>
    </div>
</div>
</div>
</body>
</html>
