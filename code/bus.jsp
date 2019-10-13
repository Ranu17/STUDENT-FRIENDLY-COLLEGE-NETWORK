<%-- 
    Document   : bus
    Created on : Mar 22, 2019, 10:12:39 AM
    Author     : RASHI
--%>
<%@page import="java.sql.*"%>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
             String to = request.getParameter("major");
             String date=request.getParameter("date");
       if(request.getParameter("search_bus")!= null)
       {
       try {
        Class.forName("com.mysql.jdbc.Driver");
        //Connection con = DriverManager.getConnection("jdbc:mysql://x.x.x.x:3306/javaquery", "username", "password");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentdb?autoReconnect=true&useSSL=false&allowPublicKeyRetrieval=true", "root", "root");
        Statement smt = con.createStatement(); //Create Statement to interact
        ResultSet r = smt.executeQuery("select * from bus_information where(bus_to='" + to+ "' and date='"+date+"');");
        while (r.next()) {
          //name = r.getString("name");
                        bus_to= r. getString("bus_to");
                        bus_dep_time=r.getTime("bus_dep_time");
                       bus_arr_time=  r.getTime("bus_arr_time");
                         date=  r.getDate("date");
                       contact= r.getString("contact");
        }
        con.close
   } catch (Exception e) {
        e.printStackTrace();
   }
   }
%>
Name:<%out.print(name);%>
    </body>
</html>
