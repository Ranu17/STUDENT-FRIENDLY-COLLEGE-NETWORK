<%-- 
    Document   : add_question
    Created on : 26 Mar, 2019, 7:29:09 PM
    Author     : hp
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
        <title>Questions</title>
    </head>
    <body>
    <%
            String text = request.getParameter("txt_ques");
           
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentdb?autoReconnect=true&useSSL=false&allowPublicKeyRetrieval=true", "root", "root");
                Statement st = con.createStatement();
               // SET SQL_MODE="";
                st.executeUpdate("insert into question_answer(ques)values('"+text+"')");
                 response.sendRedirect("My_Site.html");
                //out.println("data is inserted");
                
            }
            catch(Exception e){
                out.println(e);
         }
       %>
    </body>
</html>
