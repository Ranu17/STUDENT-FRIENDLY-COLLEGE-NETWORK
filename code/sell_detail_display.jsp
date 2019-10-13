<%-- 
    Document   : lost_detail_display
    Created on : 23 Mar, 2019, 11:15:01 PM
    Author     : hp
--%>

<%@page import="java.io.OutputStream"%>
<%@page import="javax.ejb.Remove"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
    <%
            Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentdb?autoReconnect=true&useSSL=false&allowPublicKeyRetrieval=true", "root", "root");
                Statement st = con.createStatement();
            %>
        <html>
          <head>  
              <link rel="icon" href="image/LogoSite.png" type="image/png" sizes="16x16">
              <title>Sell Details Display</title>
             <style>
            table {  
            color: #333; /* Lighten up font color */
            font-family: Helvetica, Arial, sans-serif; /* Nicer font */
            width: 900px; 
            border-collapse: 
            collapse; border-spacing: 0; 
               }

        td, th { border: 1px solid #CCC; height: 70px; } /* Make cells a bit taller */

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
    
        <body style="background-image: url(image/pix6.jpeg);background-repeat: no-repeat; background-size: cover">
    <center>
        <h1 style="color:white;background-color:black">SELL ITEMS TABLE</h1>
        
      
        <table>
            <tr>
                <th>Item ID</th>
                <th>Name</th>
                <th>Description</th>
                <th>Price</th>
                <th>Contact</th>
                <th>Sell Item's Image</th>
               
            </tr>
        </body>
        </html>
        <%
            Statement stm = con.createStatement();
            //Blob image=null;
            //byte[] imgData = null;
            String s = "SELECT * FROM sell_items";
            ResultSet r = stm.executeQuery(s);
            while ( r.next() )
                
             { 
                 //image = r.getBlob(3);
                 //imgData = lost_image.getBytes(1, (int) image.length());
                 //response.setContentType("image/gif");
                 //OutputStream o = response.getOutputStream();
                 out.print("<tr>");
                 out.print("<td>" +  r.getString ("item_id") + "</td>" ); 
                 out.print("<td>" +  r.getString ("item_name") + "</td>");
                 out.print("<td>" +  r.getString ("sell_item_des") + "</td>");
                 out.print("<td>" +  r.getString ("sell_item_price") + "</td>");
                 out.print("<td>" +  r.getString ("sell_contact") + "</td>");
                 out.print("<td><img  height='200px' width='200px' src='image/" +  r.getString("item_image") + "'></td>");
                 //image=r.getBlob(3);
                 //imgData = image.getBytes(3,(int)image.length());
                 //response.setContentType("image/jpg");
                 //OutputStream o = response.getOutputStream();

//o.write(imgData);

//o.flush();

//o.close();
                 
               
                 
                 
               
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
      
