<%-- 
    Document   : WelcomePage
    Created on : 28 Mar, 2018, 9:15:01 PM
    Author     : jayantb95
--%>

<%@page import="java.sql.*"  contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% Class.forName("org.apache.derby.jdbc.ClientDriver"); %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
    </head>
    <body>
    <center><h1>Welcome ${username}</h1></center>

    <%
        //http 1.1
        response.setHeader("Cache-Control", "no-cache, no-store, must=revalidate");
        //http 1.0
        response.setHeader("Pragma", "no-cache");
        //proxies
        response.setHeader("Expires", "0");
        if (session.getAttribute("username") == null) {
            response.sendRedirect("LoginPage.jsp");
        }
    %>

    <%
        Connection connection = DriverManager.getConnection(
                "jdbc:derby://localhost:1527/JSP_DB", "root", "root");

        Statement statement = connection.createStatement();
        ResultSet resultset = statement.executeQuery(
                "select name, uname, pwd, contact from users");
    %>


    <h2><table id ="t01" style="width:100%">
            <tr>
                <th>S.No</th>
                <th>Name</th>
                <th>Username</th>
                <th>password</th>
                <th>Contact</th> 
            </tr>
            <% while (resultset.next()) {%>
            <tr>
                <td></td>
                <td> <%= resultset.getString(1)%></td>
                <td> <%= resultset.getString(2)%></td>
                <td> <%= resultset.getString(3)%></td>
                <td> <%= resultset.getString(4)%></td>
            </tr>
            <% }%>
        </table>
        <a href="SignupPage.jsp">Add new user</a>
        <form action="ServletLogout">
            <center><input type="submit" value="Logout"/></center>
        </form>
    </h2>
</body>
</html>
<style>

    body{
        font-family: Iceland;
    }
    table, th, td {
        border: 1px solid black;
    }

    table#t01 tr:nth-child(even) {
        background-color: #eee;
    }
    table#t01 tr:nth-child(odd) {
        background-color: #fff;
    }
    table#t01 th {
        background-color: black;
        color: white;
    }

    tr td:first-child:before{
        counter-increment: Serial;      /* Increment the Serial counter */
        content: counter(Serial); /* Display the counter */
    }

    body {
        counter-reset: Serial;           /* Set the Serial counter to 0 */
    }

    .ui-helper-center {
        text-align: center;
    }


</style>