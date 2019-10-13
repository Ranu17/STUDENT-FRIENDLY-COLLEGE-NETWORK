<%-- 
    Document   : Main1
    Created on : Mar 24, 2019, 11:53:43 PM
    Author     : RASHI
--%>

<%@page import="java.sql.ResultSet"%>
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
            String stud="Student";
            int flag=0;
            
            try{
                Connection con;
                Statement st,stmt;
                boolean status=false;
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentdb?autoReconnect=true&useSSL=false&allowPublicKeyRetrieval=true", "root", "root");
                st = con.createStatement();
                String s = "SELECT smartcard_id FROM student_detail where smartcard_id='"+sid+"'";
                ResultSet r = st.executeQuery(s); 
                status=r.next();
                if(status)
                {
                  stmt=con.createStatement();
                  stmt.executeUpdate("update student_detail set first_name='"+firstname+"',last_name='"+lastname+"',father_name='"+fname+"',course='"+course+"',major='"+major+"',password='"+password+"',security_answer='"+security_answer+"',role='"+stud+"' where smartcard_id='"+sid+"'");
                   response.sendRedirect("MainPage.html");
                  //out.println("data is inserted");
                
                }
                else
                {
                       out.println("Not a banasthali student");
                }
               
                
                }
               
            catch(Exception e){
                out.println(e);
         }
       %>
    </body>
</html>

