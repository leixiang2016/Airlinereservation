<%--
  Created by IntelliJ IDEA.
  User: Rachel
  Date: 2/13/2017
  Time: 6:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<link rel="stylesheet" href="/style.css">
<head>
    <title>Iowa Air Admin</title>
</head>
<body>
<div class="tab">
    <a style="width:363px" href="javascript:void(0)" name="Flights" id="defaultOpen" class="tablinks" onclick="openTab(event, 'Flights')">Flights</a>
    <a style="width:363px" href="javascript:void(0)" name="Passenger Tickets" class="tablinks" onclick="openTab(event, 'Passenger Tickets')">Passenger Tickets</a>
</div>

<div id="Flights" class="tabcontent">
    <%@ include file="flights.jsp"%>
</div>

<div id="Passenger Tickets" class="tabcontent">
    <h3 style="color:#2c71c9;float:left">Search for Tickets</h3>
    <br>
    <form style="float:left;text-align: left">
        <label for="ticketnum">Ticket number: </label>
        <input type="number" id="ticketnum" style="width:150px">
        <label for="lastname">Last name: </label>
        <input type="text" id="lastname" style="width:150px">
        <label for="firstname">First name: </label>
        <input type="text" id="firstname" style="width:150px">
        <br>
        <br>
        <%ArrayList<ArrayList<String>> tickets = ReservationsServlet.getTickets(session);%>
        <input type="submit" class="prettybutton" name="searchtickets" value="Search">
    </form>
    <br>
    <h3 style="color:#2c71c9;float:left">Passenger Tickets</h3>
    <table class="prettytable" border="1">
        <tr>
            <th>Ticket Number</th>
            <th>Last Name</th>
            <th>First Name</th>
            <th>ID #</th>
            <th>Manage</th>
        </tr>
        <%for(ArrayList<String> ticket : tickets){%>
        <%if(!ReservationsServlet.isPassed(ticket.get(3))){%>
        <tr>
            <td><%=ticket.get(0)%></td>
            <td><%=ticket.get(1)%></td>
            <td><%=ticket.get(2)%><br><%=ticket.get(3)+" "%><%=ticket.get(4)%></td>
            <td><%=ticket.get(5)%><br><%=ticket.get(6)+" "%><%=ticket.get(7)%></td>
            <td style="text-align:center"><input type="submit" class="prettybutton" value="Check in" name="ticketnumber">
                <input type="submit" class="prettybutton" value="Cancel ticket" name="cancelticketnumber"></td>
        </tr>
    </table>
    <%}}%>
</div>
</body>
</html>
<%@ include file="tabs.jsp"%>