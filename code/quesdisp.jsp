<%-- 
    Document   : quesdisp
    Created on : Mar 27, 2019, 2:28:09 PM
    Author     : RASHI
--%>
 
            
            <%@page import="javax.ejb.Remove"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
    
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
        
        
input[type="text"]
{
	border: none;
	border-bottom: 2px solid #fff;
	background: transparent;
	outline: none;
	height: 15px;
	color: #fff;
	font-size: 20px;
        text-align: center;
        padding-bottom: 4px;
        
}

input[type=submit]{
	border: none;
	outline: none;
	height: 40px;
	background: #1c8adb;
	color: #fff;
	font-size: 18px;
	border-radius: 20px;
	margin-top: 25px;
}
p{
	font-weight: bold;
	color: white;
        font-size: 20px;
}
        </style>
          </head>
          <body style="background-image: url(image/img_1.jpg); background-repeat: no-repeat; background-size: cover ">
    <center>
        <h1 style="color:white;background-color:black">ANSWER QUESTIONS</h1>
        <form name="f1">
      
        <table>
            <tr>
                <th>QUES_ID</th>
                <th>QUESTION</th>
               </tr>
        
<%
            Class.forName ("com.mysql.jdbc.Driver");            
            Connection conn=null;  
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentdb?autoReconnect=true&useSSL=false&allowPublicKeyRetrieval=true", "root", "root");
            %>
             <%
            Statement stm = conn.createStatement();
            String s = "SELECT ques_id,ques FROM question_answer";
            ResultSet r = stm.executeQuery(s);
            while ( r.next() )
             { 
                 out.print("<tr>");
                 out.print("<td>" +  r.getString ("ques_id") + "</td>" ); 
                 out.print("<td>" +  r.getString ("ques") + "</td>");
                 
                 //<form method="post" action='delete_found.jsp'></form>
                
               // out.println("<td><b><form  action='bus_display.jsp'></form></b>");
                
               // <!--out.println("<td><b><a href="delete_found.jsp"><input type='submit' name='delete' value='Delete'></form></b>");
                //out.print("<td><input type=button value='Delete' </td>");
                  //<button onclick="removeSelectedRow();"></button>;
                  //<button onclick="removeSelectedRow();">Remove</button>;
                 out.print("</tr>");
                //out.println("<td>" + "<input type=button value='Delete' onclick="removeSelectedRow();>Remove</button>" + </td>);-->
                
                
                 
             }
            out.println("</table>");
         %>  
         <p style="margin-top:400px;">QUESTION ID</p>
         <input type="text" name="qid"/>
         <br><br>
         <p style="margin-top:4px">ANSWER</p>
      <input type="text" name="ans" style="height:50px ;width:50%"/>
      <br><br>
      <input type="submit" name="btn_submit" value="SUBMIT" /><br>    
      </form>
      </body>
        </html>
        
        <%
            
            
           
               
           try{
               
               
               
               if(request.getParameter("btn_submit")!=null)
               {
                   
                    Statement stmt;
             //boolean status=false;
            String q  = request.getParameter("qid");
            out.println(q);
           String a= request.getParameter("ans");
            //String def= "yes";
               out.println(a);
                   
                
               
               
               Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentdb?autoReconnect=true&useSSL=false&allowPublicKeyRetrieval=true", "root", "root");
                // st = con.createStatement();
                
                //st.executeUpdate("insert into student_detail(smartcard_id,first_name,last_name,father_name,course,major,password,security_answer)values('"+sid+"','"+firstname+"','"+lastname+"','"+fname+"','"+course+"','"+major+"','"+password+"','"+security_answer+"')");
                //out.println("data is inserted");
               
                stmt = con.createStatement();
                int x=stmt.executeUpdate("update question_answer set ans5='"+a+"' where ques_id="+Integer.parseInt(q)+"");
                
                if(x>0)
                  response.sendRedirect("My_Site.html");
                else
                    out.println("Data not updated");
                       
                       
           }
                       
                       
               
           }
           catch(Exception ex)
           {
              out.println(ex);
           }
                
        
     %>
            
           