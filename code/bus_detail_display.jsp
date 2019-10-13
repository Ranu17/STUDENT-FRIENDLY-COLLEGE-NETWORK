<%-- 
    Document   : bus_detail_display
    Created on : Mar 23, 2019, 6:30:42 PM
    Author     : RASHI
--%>

<%@page import="javax.ejb.Remove"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
    <%
            Class.forName ("com.mysql.jdbc.Driver");            
            Connection  conn=null;  
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentdb?autoReconnect=true&useSSL=false&allowPublicKeyRetrieval=true", "root", "root");
            %>
        <html>
          <head>  
             <style>
            table {  
            color: #333; /* Lighten up font color */
            font-family: Helvetica, Arial, sans-serif; /* Nicer font */
            width: 900px; 
            border-collapse: 
            collapse; border-spacing: 0; 
               }

        td, th { border: 1px solid #CCC; height: 50px; } /* Make cells a bit taller */

        th {  
            background: #F3F3F3; /* Light grey background */
            font-weight: bold; /* Make sure they're bold */
        }

        td {  
            background: #FAFAFA; /* Lighter grey background */
            text-align: center; /* Center our text */
        }   
        </style>
          </head>
          <body style="background-image: url(image/img2.jpg); background-repeat:no-repeat;background-size: cover">
    <center>
        <h1 style="color:white;background-color:black">BUS TABLE</h1>
        
      
        <table>
            <tr>
                <th>bus_id</th>
                <th>TO</th>
                <th>Departure Time</th>
                <th>Arrival Time</th>
                <th>Date</th>
                <th>Contact</th>
               
            </tr>
        </body>
        </html>
        <%
            Statement stm = conn.createStatement();
            String s = "SELECT * FROM bus_information ";
            ResultSet r = stm.executeQuery(s);
            while ( r.next() )
             { 
                 out.print("<tr>");
                 out.print("<td>" +  r.getString ("bus_id") + "</td>" ); 
                 out.print("<td>" +  r.getString ("bus_to") + "</td>");
                 out.print("<td>" +  r.getString ("bus_dep_time") + "</td>");
                 out.print("<td>" +  r.getString ("bus_arr_time") + "</td>");
                 out.print("<td>" +  r.getString ("date") + "</td>");
                  out.print("<td>" +  r.getString ("contact") + "</td>");
                 
                 //<form method="post" action='delete_found.jsp'></form>
                
               // out.println("<td><b><form  action='bus_display.jsp'></form></b>");
                
               // <!--out.println("<td><b><a href="delete_found.jsp"><input type='submit' name='delete' value='Delete'></form></b>");
                //out.print("<td><input type=button value='Delete' </td>");
                  //<button onclick="removeSelectedRow();"></button>;
                  //<button onclick="removeSelectedRow();">Remove</button>;
                 out.print("</tr>");
                //out.println("<td>" + "<input type=button value='Delete' onclick="removeSelectedRow();>Remove</button>" + </td>);-->
                
                
                 
             }
            
         %>  
      