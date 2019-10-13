<%-- 
    Document   : apti_quiz
    Created on : Mar 22, 2019, 3:03:48 PM
    Author     : RASHI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*"%>
<!DOCTYPE html>
<html>
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String ques=request.getParameter("txt_ques1");
            String ans1=request.getParameter("ans1");
            String ans2=request.getParameter("ans2");
            String ans3=request.getParameter("ans3");
            String ans4=request.getParameter("ans4");
            String correct=request.getParameter("ans");
            
            
            //if(request.getParameter("btn_add")!= null)
            //{
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentdb?autoReconnect=true&useSSL=false&allowPublicKeyRetrieval=true", "root", "root");
                Statement st = con.createStatement();
                
                st.executeUpdate("insert into apti_ques(ques,ans1,ans2,ans3,ans4,correct_ans)values('"+ques+"','"+ans1+"','"+ans2+"','"+ans3+"','"+ans4+"','"+correct+"')");
                
                out.println("data is inserted");
                
            }
            catch(Exception e){
                out.println(e);
         }
            //}
        
        
        
        %>
        
            
    </body>
</html>
