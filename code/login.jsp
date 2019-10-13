<%-- 
    Document   : login
    Created on : Mar 10, 2019, 10:25:53 AM
    Author     : RASHI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Connection conn=null;
        Statement stat=null;
        ResultSet rs = null;
        boolean status=false;
         String id=request.getParameter("smartcard");
         String psw=request.getParameter("password");
         String role=request.getParameter("role");
         
           try
             
            {
            Class.forName("com.mysql.jdbc.Driver");
             conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentdb?autoReconnect=true&useSSL=false&allowPublicKeyRetrieval=true", "root", "root");
            stat=conn.createStatement();
            
          /*   PreparedStatement pst = conn.prepareStatement("Select smartcard_id,password from student_detail where smartcard_id=? and password=?");
        pst.setString(1,id);
        pst.setString(2, psw);
         ResultSet rs = pst.executeQuery(); 
        if(rs.next())           
           out.println("Valid login credentials");        
        else
           out.println("Invalid login credentials"); */
         rs=stat.executeQuery("select smartcard_id,password from student_detail where smartcard_id ='"+id+"' and password='"+psw+"' and role='"+role+"' ");

     
            status=rs.next();
            if(status)
            {
                if(role.equals ("ADMIN"))
                {
              // out.println("verified");
           
                     //response.sendRedirect("admin_main.html");
                    response.sendRedirect("admin_main_1.html");
                }
               else
                {
                 response.sendRedirect("test.jsp");
                 //response.sendRedirect("admin_main.html");
                 // out.println("Please enter the required details correctly");

                }
            }
             else
              {
                    //out.println("<p> Details can't be matched</p>");
                     response.sendRedirect("MainPage.html");
              }
            }
           catch(Exception e)
            {
              out.println("e");
            }
 
            
            
        %>
    </body>
</html>
