<%-- 
    Document   : admin_delete_found
    Created on : 22 Mar, 2019, 10:11:36 PM
    Author     : hp
--%>
<%@page import="javax.ejb.Remove"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
    <%
            Class.forName ("com.mysql.jdbc.Driver");            
            Connection  conn=null;  
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentdb?autoReconnect=true&useSSL=false&allowPublicKeyRetrieval=true", "root", "project");
    %>
    <body>
    <center>
        <h1>USERS TABLE</h1>
        
      
        <table>
            <tr>
                <th>item_id</th>
                <th>Name</th>
                <th>Description</th>
                <th>Location</th>
                <th>Contact</th>
                <th>Date</th>
               
            </tr>
    
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
                 out.print("<td>" +  r.getString ("contact") + "</td>");
                 out.print("<td>" +  r.getString ("date") + "</td>");
                 
                 //<form method="post" action='delete_found.jsp'></form>
                
                out.println("<td><b><form  action='delete_found.jsp'><input type='submit' name='delete' value='Delete'></form></b>");
                
               // <!--out.println("<td><b><a href="delete_found.jsp"><input type='submit' name='delete' value='Delete'></form></b>");
                //out.print("<td><input type=button value='Delete' </td>");
                  //<button onclick="removeSelectedRow();"></button>;
                  //<button onclick="removeSelectedRow();">Remove</button>;
                 out.print("</tr>");
                //out.println("<td>" + "<input type=button value='Delete' onclick="removeSelectedRow();>Remove</button>" + </td>);-->
                
                
                 
             }
            
         %>  
        <!-- <script>
              var rIndex,
                table = document.getElementById("found_items");
              function removeSelectedRow()
            {
                table.deleteRow(rIndex);
                // clear input text
                //document.getElementById("fname").value = "";
                //document.getElementById("lname").value = "";
                //document.getElementById("age").value = "";
            }
             </script> 
        
       -->