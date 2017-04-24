<%--
  Created by IntelliJ IDEA.
  User: Rachel
  Date: 2/13/2017
  Time: 6:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<link rel="stylesheet" href="/style.css">
<head>
    <title>Iowa Air New Password</title>
</head>
<body style="color:white;height:1200px;background:url(Images/homebackground.jpg)">
<h1>New Password</h1>
<form action="/newpasswordservlet">
    <div style="padding:10px">
        <span>Old Password: </span>
        <input type="password" name="oldpassword">
    </div>
<div style="padding:10px">
    <p style="width:200px">Password must be at least 8 characters and contain one capital letter.</p>
    <span>New Password: </span>
    <input type="password" name="password">
</div>
<div style="padding:10px">
    <span style="padding:0px 10px 0px 0px">Confirm New Password: </span>
    <input type="password" name="confirmpassword">
</div>
    <% if(session.getAttribute("errormessage")!=null){%>
    <div style="font-weight:bold;color:#db8c3e; padding:5px">
        <%=session.getAttribute("errormessage")%>
    </div>
    <%session.removeAttribute("errormessage");}%>
    <input type="submit" class="signinbutton" name="changepassword" value="Change Password">
</form>
</body>
</html>
