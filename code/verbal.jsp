<%-- 
    Document   : verbal
    Created on : Mar 26, 2019, 1:00:23 AM
    Author     : RASHI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="javax.ejb.Remove"%>

<!DOCTYPE html>
<%@ page import="java.sql.*" %>
    <%
         Class.forName ("com.mysql.jdbc.Driver");            
         Connection  conn=null;  
         conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentdb?autoReconnect=true&useSSL=false&allowPublicKeyRetrieval=true", "root", "root");
     %>
        
     <title>Verbal Quiz</title>    
    <body bgcolor="#FCeCE9">
    <center>
        <h1 style="size:20px"><b>VERBAL QUIZ</b></h1>
   
    
    
       
        <%
            
            int v_id=3001;
            Statement stm = conn.createStatement();
            for(int i=0;i<3;i++)
            {
            if(request.getParameter("btn") !=null)
            {
            String s = "SELECT * FROM verbal_ques where id='"+v_id+"' ";
            
          

            ResultSet r = stm.executeQuery(s);
            while(r.next())
            {
                 out.print("");
                 out.print("<textarea type='hidden'readonly style='resize:none;position: absolute;left:300px;top:150px;height:90px;width:50%'>" +  r.getString ("ques") + "</textarea>" );
                  out.println("<br><table><tr>");
                  out.println("<td style='position:absolute;left:310px;top:280px'>"+1+"</td>");
                  out.println("<td><input type='radio' name='radio' value='radio1' style='position:absolute;left:340px;top:280px'></td>");
                 out.print("<td style='position:absolute;left:370px;top:280px'>" +  r.getString ("ans1") + "</td>" ); 
                 out.println("</tr><tr>");
                  out.println("<td style='position:absolute;left:310px;top:310px'>"+2+"</td>");
                  out.println("<td><input type='radio' name='radio' value='radio1' style='position:absolute;left:340px;top:310px'></td>");
                 out.print("<td style='position:absolute;left:370px;top:310px'>" +  r.getString ("ans2") + "</td>");
                 out.println("</tr><tr>");
                 out.println("<td style='position:absolute;left:310px;top:340px'>"+3+"</td>");
                  out.println("<td><input type='radio' name='radio' value='radio1' style='position:absolute;left:340px;top:340px'></td>");
                 out.print("<td style='position:absolute;left:370px;top:340px'>" +  r.getString ("ans3") + "</td>");
                 out.println("</tr><tr>");
                 out.println("<td style='position:absolute;left:310px;top:370px'>"+4+"</td>");
                  out.println("<td><input type='radio' name='radio' value='radio1' style='position:absolute;left:340px;top:370px'></td>");
                 out.print("<td style='position:absolute;left:370px;top:370px'>" +  r.getString ("ans4") + "</td>");
                 out.println("</tr>");
                 
                
            }
                 
                 //<form method="post" action='delete_found.jsp'></form>
                
               // out.println("<td><b><form  action='bus_display.jsp'></form></b>");
                
               // <!--out.println("<td><b><a href="delete_found.jsp"><input type='submit' name='delete' value='Delete'></form></b>");
                //out.print("<td><input type=button value='Delete' </td>");
                  //<button onclick="removeSelectedRow();"></button>;
                  //<button onclick="removeSelectedRow();">Remove</button>;
                
                //out.println("<td>" + "<input type=button value='Delete' onclick="removeSelectedRow();>Remove</button>" + </td>);-->       
                 //v_id++;
              
             out.println("<input type='submit' value='Submit' name='btn' style='position:absolute;left:550px;top:450px' onclick='verbal.jsp'>");
              v_id++;
             out.println(v_id);
            }
            }
            
         %> 
         </center> 
  </body>
