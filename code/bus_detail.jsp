<%-- 
    Document   : bus_detail
    Created on : Mar 20, 2019, 2:03:40 AM
    Author     : RASHI
--%>

<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bus Info</title>
    </head>
    <body>
        <%  
           // Connection con=null;
            // Statement st=null;
            String to = request.getParameter("to");
            String bus_dep_time =request.getParameter("dep_time");
            String bus_arr_time =request.getParameter("arr_time");
            String bus_date = request.getParameter("date");
           // SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
           // Date dat = sdf.parse(bus_date);
            //DateFormat formatter ;
            //formatter = new SimpleDateFormat("mm/dd/yyyy").parse();
            //Date dat=(Date)formatter.parse(request.getParameter("date"));
            String contact = request.getParameter("contact");
            
           
           
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentdb?autoReconnect=true&useSSL=false&allowPublicKeyRetrieval=true", "root", "root");
                Statement st = con.createStatement();
                //createStatement.setDate(index,new java.sql.Date(dat.getTime()));
                 //java.sql.Date sd1 = new java.sql.Date(date.getTime());
                st.executeUpdate("insert into bus_information(bus_to,bus_dep_time,bus_arr_time,date,contact)values('"+to+"','"+bus_dep_time+"','"+bus_arr_time+"','"+bus_date+"','"+contact+"')");
                 response.sendRedirect("My_Site.html");
                //out.println("data is inserted");
                
            }
            catch(Exception e){
                out.println(e);
         }
            
            
            
            
            
            
        %>
    </body>
</html>
