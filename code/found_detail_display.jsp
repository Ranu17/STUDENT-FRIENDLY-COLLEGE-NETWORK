<%-- 
    Document   : found_detail_display
    Created on : 23 Mar, 2019, 11:12:18 PM
    Author     : hp
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
    <body style="background-image: url(image/Wall.jpg)">
    <center>
        <h1 style="color:white;background-color:black">FOUND ITEMS TABLE</h1>
        
      
        <table>
            <tr>
                <th>Item ID</th>
                <th>Name</th>
                <th>Description</th>
                <th>Location</th>
                <th>Date</th>
                <th>Contact</th>
               
            </tr>
        </body>
        </html>
        <%
            Statement stm = conn.createStatement();
            String s = "SELECT * FROM found_items";
            ResultSet r = stm.executeQuery(s);
            while ( r.next() )
             { 
                 out.print("<tr>");
                 out.print("<td>" +  r.getString ("item_id") + "</td>" ); 
                 out.print("<td>" +  r.getString ("name") + "</td>");
                 out.print("<td>" +  r.getString ("description") + "</td>");
                 out.print("<td>" +  r.getString ("location") + "</td>");
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
       