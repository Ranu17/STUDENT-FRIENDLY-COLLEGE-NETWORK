<%-- 
    Document   : lost_detail_display
    Created on : 23 Mar, 2019, 11:15:01 PM
    Author     : hp
--%>

<%@page import="javax.swing.ImageIcon"%>
<%@page import="java.awt.Image"%>
<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.ByteArrayInputStream"%>
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
              <title>Lost Items Display</title>
              <link rel="icon" href="image/LogoSite.png" type="image/png" sizes="16x16">
             <style>
            table {  
            color: #333; /* Lighten up font color */
            font-family: Helvetica, Arial, sans-serif; /* Nicer font */
            width: 1100px; 
            border-collapse: collapse;
            border-spacing:4px; 
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
          <body style="background-image: url(image/Mag.jpg)">
    <center>
        <br><br><br>
        <h1 style="color:white;background-color:black">LOST ITEMS TABLE</h1>
        
      
        <table>
            <tr>
                <th>Item ID</th>
                <th>Name</th>
                <th>Description</th>
                <th>Location</th>
                <th>Date</th>
                <th>Contact</th>
                <th>Lost Item's Image</th>
               
            </tr>
        </body>
        </html>
        <%
            Statement stm = con.createStatement();
            //Blob image=null;
            //byte[] imgData = null;
            String s = "SELECT * FROM lost_items";
            ResultSet r = stm.executeQuery(s);
            while ( r.next() )
                
             { 
               
                   // byte[] img = r.getBytes("lost_image");
                     /* Blob aBlob = r.getBlob("lost_image");
  	                    byte[] imageByte = aBlob.getBytes(1, (int) aBlob.length());
  	                     InputStream is=new ByteArrayInputStream(imageByte);
  	                    BufferedImage imag=ImageIO.read(is);
  	                    Image image = imag;
  	                    // img = Toolkit.getDefaultToolkit().createImage(imageByte);
  	                    //  img = img.getScaledInstance(200,200,Image.SCALE_SMOOTH);
  	                	ImageIcon icon =new ImageIcon(image); */
  	                	


                    //Resize The ImageIcon
                   /* ImageIcon image = new ImageIcon(img);
                    Image im = image.getImage();
                    Image myImg = im.getScaledInstance(label.getWidth(), label.getHeight(),Image.SCALE_SMOOTH);
                    ImageIcon newImage = new ImageIcon(myImg);
                    label.setIcon(newImage);*/
                 //image = r.getBlob(3);
                 //imgData = lost_image.getBytes(1, (int) image.length());
                 //response.setContentType("image/gif");
                 //OutputStream o = response.getOutputStream();
                 out.print("<tr>");
                 out.print("<td>" +  r.getString ("item_id") + "</td>" ); 
                 out.print("<td>" +  r.getString ("name") + "</td>");
                 out.print("<td>" +  r.getString ("description") + "</td>");
                 out.print("<td>" +  r.getString ("location") + "</td>");
                 out.print("<td>" +  r.getString ("date") + "</td>");
                 out.print("<td>" +  r.getString ("contact") + "</td>");
                  out.print("<td><img height='200px' width='200px' src='image/" + r.getString("lost_image") + "'></td>");
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
      
