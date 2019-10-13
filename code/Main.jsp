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
            String sid = request.getParameter("smartcard_id");
            String firstname = request.getParameter("first_name");
            String lastname = request.getParameter("last_name");
            String fname = request.getParameter("father_name");
            String course= request.getParameter("course");
            String major = request.getParameter("major");
            String password = request.getParameter("password");
            String security_answer = request.getParameter("security_answer");
            
            
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentdb?autoReconnect=true&useSSL=false&allowPublicKeyRetrieval=true", "root", "root");
                Statement st = con.createStatement();
                
                st.executeUpdate("insert into student_detail(smartcard_id,first_name,last_name,father_name,course,major,password,security_answer)values('"+sid+"','"+firstname+"','"+lastname+"','"+fname+"','"+course+"','"+major+"','"+password+"','"+security_answer+"')");
                
                out.println("data is inserted");
                
            }
            catch(Exception e){
                out.println(e);
         }
       %>
    </body>
</html>
