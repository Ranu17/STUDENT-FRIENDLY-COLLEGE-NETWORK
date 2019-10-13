 <%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%-- 
    Document   : Main
    Created on : 1 Mar, 2019, 6:36:43 PM
    Author     : Ranu Rajput
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Jsp Page</title>
    </head>
    <body>
    <%
            String name = request.getParameter("item_name");
            String description = request.getParameter("lost_item_des");
            String date = request.getParameter("date");
            String location = request.getParameter("lost_location");
            String contact= request.getParameter("lost_contact");
            String pic=request.getParameter("item_image");
            File file = new File(pic);
            //FileInputStream fis = new FileInputStream(file);
            //String major = request.getParameter("major");
            //String password = request.getParameter("password");
            //String security_answer = request.getParameter("security_answer");
            //int id=1000;
            //id++;
            
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentdb?autoReconnect=true&useSSL=false&allowPublicKeyRetrieval=true", "root", "root");
                Statement st = con.createStatement();
                
                st.executeUpdate("insert into lost_items(name,description,date,location,contact,lost_image)values('"+name+"','"+description+"','"+date+"','"+location+"','"+contact+"','"+file+"')");
                 response.sendRedirect("My_Site.html");
                //out.println("data is inserted");
                
            }
            catch(Exception e){
                out.println(e);
         }
       %>
    </body>
</html>
