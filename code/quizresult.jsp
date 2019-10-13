<%-- 
    Document   : quizresult
    Created on : Mar 26, 2019, 3:20:11 PM
    Author     : RASHI
--%>
<%@page import="java.sql.*"%>"
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<script>
        //var q1=document.getElementById("1");
        //var q2=document.getElementById("2");
        //var q3=document.getElementById("3");
       //var q4=document.getElementById("4");
</script>
</head>

<%
    try 
    {
    Class.forName ("com.mysql.jdbc.Driver");            
    //Connection  conn=null;  
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentdb?autoReconnect=true&useSSL=false&allowPublicKeyRetrieval=true", "root", "root");
    String q1=request.getParameter("j");
    String q2=request.getParameter("l");
    String q3=request.getParameter("k");
    out.println(q1);
    out.println(q2);
    out.println(q3);
  
    int count=0;

    
            Statement stm = conn.createStatement();
            String s = "SELECT correct_ans FROM apti_ques where id='1' ";
            ResultSet rs = stm.executeQuery(s);
            while(rs.next())
            {
                
                if(q1.equals(rs.getString("correct_ans")))
                {
                    count++;
               
               }
            }
            rs.close();
 
            Statement stm1 = conn.createStatement();
            String s1 = "SELECT correct_ans FROM apti_ques where id='2' ";
            ResultSet rs1 = stm.executeQuery(s1);
            while(rs1.next())
            {
                if(q2.equals(rs1.getString("correct_ans")))
                {
                    count++;
                }
            }
            rs1.close();
    
    
    
            Statement stm2 = conn.createStatement();
            String s2 = "SELECT correct_ans FROM apti_ques where id='3' ";
            ResultSet rs2 = stm.executeQuery(s2);
            while(rs2.next())
            {
                if(q3.equals(rs1.getString("correct_ans")))
                {
                    count++;
                }
            }
            
     rs2.close();
    
    
            out.println("YOUR SCORE IS : "+count);
    }
    catch(Exception e)
    {
        out.println(e);
    }
    
   %>