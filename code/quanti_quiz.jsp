<%-- 
    Document   : quanti_quiz
    Created on : Mar 23, 2019, 10:55:16 PM
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
        
            <title>Quantitative Quiz</title>     
    <body bgcolor="#FFFBC9">
    <center>
        <h1><b>QUANTITATIVE QUIZ</b></h1>
    </center>
        
      
       
        <%
            Statement stm = conn.createStatement();
            String s = "SELECT * FROM quanti_ques where id='1'";
            ResultSet r = stm.executeQuery(s);
            if(r.next() )
             { 
                 out.print("");
                 out.print("<textarea type='hidden'readonly style='resize: none;height:90px;width:100%'>" +  r.getString ("ques") + "</textarea>" );
                  out.println("<br>");
                   
                 out.println("<label>A.</label><input id='1' type='radio' name='j' value='radio1'>" +  r.getString ("ans1") + "</input></input></label>");
                 out.println("<br>");
                 out.println("<label>B.</label><input id='2' type='radio' name='j' value='radio2'>" +  r.getString ("ans2") + "</input></input></label>");
                  out.println("<br>");
                 out.println("<label>C.</label><input id='3' type='radio' name='j' value='radio3'>" +  r.getString ("ans3") + "</input></input></label>");
                  out.println("<br>");
                 out.println("<label>D.</label><input id='4' type='radio' name='j' value='radio4'>" +  r.getString ("ans4") + "</input></input></label>");
                  out.println("<br><br>");
                 
                  
              //}
            // out.println(j);
            }
            %>
            
            <%
            Statement stm1 = conn.createStatement();
            String s1 = "SELECT * FROM quanti_ques where id='2' ";
            ResultSet r1 = stm.executeQuery(s1);
            //int i1=0;
           // for(int j=0;j<1;j++)
            //{
             if(r1.next() )
             { 
                 out.print("");
                 out.print("<textarea type='hidden'readonly style='resize: none;height:90px;width:100%'>" +  r1.getString ("ques") + "</textarea>" );
                  out.println("<br>");
                   
                 out.println("<label>A.</label><input id='1' type='radio' name='l' value='radio1'>" +  r1.getString ("ans1") + "</input></input></label>");
                 out.println("<br>");
                 out.println("<label>B.</label><input id='2' type='radio' name='l' value='radio2'>" +  r1.getString ("ans2") + "</input></input></label>");
                  out.println("<br>");
                 out.println("<label>C.</label><input id='3' type='radio' name='l' value='radio3'>" +  r1.getString ("ans3") + "</input></input></label>");
                  out.println("<br>");
                 out.println("<label>D.</label><input id='4' type='radio' name='l' value='radio4'>" +  r1.getString ("ans4") + "</input></input></label>");
                  out.println("<br><br>");
                 
                  
              }
            // out.println(j);
            //}
            %>
            
            <%
            
            Statement stm2 = conn.createStatement();
            String s2 = "SELECT * FROM quanti_ques where id='3' ";
            ResultSet r2 = stm.executeQuery(s2);
           // int i2=0;
            
           // for(int j=0;j<1;j++)
            //{
             if(r2.next() )
             { 
                 out.print("");
                 out.print("<textarea type='hidden'readonly style='resize: none;height:90px;width:100%'>" +  r2.getString ("ques") + "</textarea>" );
                  out.println("<br>");
                   
                 out.println("<label>A.</label><input id='1' type='radio' name='k' value='radio1'>" +  r2.getString ("ans1") + "</input></input></label>");
                 out.println("<br>");
                 out.println("<label>B.</label><input id='2' type='radio' name='k' value='radio2'>" +  r2.getString ("ans2") + "</input></input></label>");
                  out.println("<br>");
                 out.println("<label>C.</label><input id='3' type='radio' name='k' value='radio3'>" +  r2.getString ("ans3") + "</input></input></label>");
                  out.println("<br>");
                 out.println("<label>D.</label><input id='4' type='radio' name='k' value='radio4'>" +  r2.getString ("ans4") + "</input></input></label>");
                  out.println("<br><br>");
                 
                  
              }
            
             
               
            
          
           /* while ( r.next() )
             { 
                 out.print("");
                 out.print("<textarea type='hidden'readonly style='resize: none;height:90px;width:100%'>" +  r.getString ("ques") + "</textarea>" );
                  out.println("<br>");
                 out.println("<label>A.</label><input type='radio' name='radio' value='radio1'>" +  r.getString ("ans1") + "</input></input></label>");
                 out.println("<br>");
                 out.println("<label>B.</label><input type='radio' name='radio' value='radio2'>" +  r.getString ("ans2") + "</input></input></label>");
                  out.println("<br>");
                 out.println("<label>C.</label><input type='radio' name='radio' value='radio3'>" +  r.getString ("ans3") + "</input></input></label>");
                  out.println("<br>");
                 out.println("<label>D.</label><input type='radio' name='radio' value='radio4'>" +  r.getString ("ans4") + "</input></input></label>");
                  out.println("<br><br>");
                  
                 
                 //<form method="post" action='delete_found.jsp'></form>
                
               // out.println("<td><b><form  action='bus_display.jsp'></form></b>");
                
               // <!--out.println("<td><b><a href="delete_found.jsp"><input type='submit' name='delete' value='Delete'></form></b>");
                //out.print("<td><input type=button value='Delete' </td>");
                  //<button onclick="removeSelectedRow();"></button>;
                  //<button onclick="removeSelectedRow();">Remove</button>;
                
                //out.println("<td>" + "<input type=button value='Delete' onclick="removeSelectedRow();>Remove</button>" + </td>);-->
                */
                
                 
             
            
         %>  
         <%
            Statement stm3 = conn.createStatement();
            String s3 = "SELECT * FROM quanti_ques where id='4' ";
            ResultSet r3 = stm3.executeQuery(s3);
            //int i1=0;
           // for(int j=0;j<1;j++)
            //{
             if(r3.next() )
             { 
                 out.print("");
                 out.print("<textarea type='hidden'readonly style='resize: none;height:90px;width:100%'>" +  r3.getString ("ques") + "</textarea>" );
                  out.println("<br>");
                   
                 out.println("<label>A.</label><input id='1' type='radio' name='l' value='radio1'>" +  r3.getString ("ans1") + "</input></input></label>");
                 out.println("<br>");
                 out.println("<label>B.</label><input id='2' type='radio' name='l' value='radio2'>" +  r3.getString ("ans2") + "</input></input></label>");
                  out.println("<br>");
                 out.println("<label>C.</label><input id='3' type='radio' name='l' value='radio3'>" +  r3.getString ("ans3") + "</input></input></label>");
                  out.println("<br>");
                 out.println("<label>D.</label><input id='4' type='radio' name='l' value='radio4'>" +  r3.getString ("ans4") + "</input></input></label>");
                  out.println("<br><br>");
                 
                  
              }
            // out.println(j);
            //}
             %>
             <%
             Statement stm4 = conn.createStatement();
            String s4 = "SELECT * FROM quanti_ques where id='5' ";
            ResultSet r4 = stm3.executeQuery(s4);
            //int i1=0;
           // for(int j=0;j<1;j++)
            //{
             if(r4.next() )
             { 
                 out.print("");
                 out.print("<textarea type='hidden'readonly style='resize: none;height:90px;width:100%'>" +  r4.getString ("ques") + "</textarea>" );
                  out.println("<br>");
                   
                 out.println("<label>A.</label><input id='1' type='radio' name='l' value='radio1'>" +  r4.getString ("ans1") + "</input></input></label>");
                 out.println("<br>");
                 out.println("<label>B.</label><input id='2' type='radio' name='l' value='radio2'>" +  r4.getString ("ans2") + "</input></input></label>");
                  out.println("<br>");
                 out.println("<label>C.</label><input id='3' type='radio' name='l' value='radio3'>" +  r4.getString ("ans3") + "</input></input></label>");
                  out.println("<br>");
                 out.println("<label>D.</label><input id='4' type='radio' name='l' value='radio4'>" +  r4.getString ("ans4") + "</input></input></label>");
                  out.println("<br><br>");
                 
                  
              }
            %>
            <input button type="Submit" type="submit" value="SUBMIT" name="submit" onclick="location.href=''">
</body>
            
      