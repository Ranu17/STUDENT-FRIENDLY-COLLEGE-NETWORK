<%-- 
    Document   : view_ques_ans
    Created on : Mar 27, 2019, 2:05:06 AM
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
              <title>Question Answer</title>
              <link rel="icon" href="image/LogoSite.png" type="image/png" sizes="16x16">
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
    <body style="background-image: url(image/img2.jpg); background-repeat: no-repeat; background-size: cover">
    <center>
        <h1 style="color:white;background-color:black">QUESTIONS / ANSWERS</h1>
        
      
        <table>
            <tr>
                <th>QUESTION ID</th>
                <th>QUESTION :</th>
                <th>ANSWER 1</th>
                <th>ANSWER 2</th>
                <th>ANSWER 3</th>
                <th>ANSWER 4</th>
                <th>ANSWER 5</th>
               
            </tr>
        </body>
        </html>
        <%
            try
            {
            Statement stm = conn.createStatement();
            String s = "SELECT * FROM question_answer";
            ResultSet r = stm.executeQuery(s);
            while ( r.next() )
             { 
                 //out.print("<tr>");
                 out.print("<td>" +  r.getString ("ques_id") + "</td>" ); 
                 out.print("<td>" +  r.getString ("ques") + "</td>");
                 out.print("<td>" +  r.getString ("ans1") + "</td>");
                 out.print("<td>" +  r.getString ("ans2") + "</td>");
                 out.print("<td>" +  r.getString ("ans3") + "</td>");
                 out.print("<td>" +  r.getString ("ans4") + "</td>");
                 out.print("<td>" +  r.getString ("ans5") + "</td>");
                 
                 //<form method="post" action='delete_found.jsp'></form>
                
               // out.println("<td><b><form  action='bus_display.jsp'></form></b>");
                
               // <!--out.println("<td><b><a href="delete_found.jsp"><input type='submit' name='delete' value='Delete'></form></b>");
                //out.print("<td><input type=button value='Delete' </td>");
                  //<button onclick="removeSelectedRow();"></button>;
                  //<button onclick="removeSelectedRow();">Remove</button>;
                 out.print("</tr>");
                //out.println("<td>" + "<input type=button value='Delete' onclick="removeSelectedRow();>Remove</button>" + </td>);-->
                
                
                 
             }
            }
            catch(Exception e){
                out.println(e);
            }
            
         %>  
       