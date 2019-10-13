<%-- 
    Document   : add_answer
    Created on : 26 Mar, 2019, 7:45:43 PM
    Author     : hp
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Answers Page</title>
    </head>
    <body>
    <%
            Statement stmt;
             //boolean status=false;
            int q  = Integer.parseInt(request.getParameter("qid"));
            out.println(q);
           String a= request.getParameter("ans");
            //String def= "yes";
               out.println(q);
               int r=1;
           try{
           Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentdb?autoReconnect=true&useSSL=false&allowPublicKeyRetrieval=true", "root", "root");
                stmt = con.createStatement();
               String s = "SELECT count FROM question_answer where ques_id='"+q+"'" ;
               out.println(s);
               if(!s.equals("null"))
               {    
                  int c=Integer.parseInt(s);
                  
               if (c==0){
               int x=stmt.executeUpdate("update question_answer set ans5='"+a+"',count='1' where ques_id="+q+"");
                //int y=stmt.executeUpdate("update question_answer set count="+1+" where ques_id="+q+"");
                 /*if(x>0)
                  response.sendRedirect("My_Site.html");
                else
                    out.println("Data not updated");*/
               }
               
              else if (c==1){
               int x=stmt.executeUpdate("update question_answer set ans1='"+a+"',count='2' where ques_id="+q+"");
               // int y=stmt.executeUpdate("update question_answer set count="+2+" where ques_id="+q+"");
                /* if(x>0)
                  response.sendRedirect("My_Site.html");
                else
                    out.println("Data not updated");*/
               }
               
              else if (c==2){
               int x=stmt.executeUpdate("update question_answer set ans2='"+a+"',count='3' where ques_id="+q+"");
                //int y = stmt.executeUpdate("update question_answer set count="+3+" where ques_id="+q+"");
                 if(x>0)
                  response.sendRedirect("My_Site.html");
                else
                    out.println("Data not updated");
               }
               
              else if (c==3){
               int x=stmt.executeUpdate("update question_answer set ans3='"+a+"',count='4' where ques_id="+q+"");
               // int y=stmt.executeUpdate("update question_answer set count="+4+" where ques_id="+q+"");
                 /*if(x>0)
                  response.sendRedirect("My_Site.html");
                else
                    out.println("Data not updated");*/
               }
               
              else if (c==4){
               int x=stmt.executeUpdate("update question_answer set ans4='"+a+"', count='5' where ques_id="+q+"");
                //int y=stmt.executeUpdate("update question_answer set count="+5+" where ques_id="+q+"");
                 /*if(x>0)
                  response.sendRedirect("My_Site.html");
                else
                    out.println("Data not updated");*/
               }
               }
               else
                   out.println("Null input");
           }
           catch(Exception ex)
           {
              out.println(ex);
           }
           // out.println("data is inserted");
       
             
     
        /* else if(ans1 != null)
        {
            st.executeUpdate("insert into answers(ques_id,ans1)values('"+1+"','"+ans1+"')");
            out.println("data is inserted");
                 
        }
     
     
         else if(ans2 != null)
        {
            st.executeUpdate("insert into answers(ques_id,ans2)values('"+1+"','"+ans2+"')");
            out.println("data is inserted");
        }
  
     
         else if(ans3 != null)
        {
            st.executeUpdate("insert into answers(ques_id,ans3)values('"+1+"','"+ans3+"')");
            out.println("data is inserted");
        }
     
     
         else if(ans4 != null)
        {
            st.executeUpdate("insert into answers(ques_id,ans4)values('"+1+"','"+ans4+"')");
            out.println("data is inserted");
        }
               
        
              */  
        
     %>
                
            
     
    </body>
</html>
