<%-- 
    Document   : delete_found
    Created on : 23 Mar, 2019, 12:22:14 AM
    Author     : hp
--%>

 <%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ page import ="java.sql.*" %>
 <%

String ID = request.getParameter("item_id");
//int v=Integer.parseInt(ID);
String Name = request.getParameter("Name");
String Description = request.getParameter("Description");
String Location = request.getParameter("Location");
String Contact = request.getParameter("Contact");
String Date = request.getParameter("Date");

try
{
Class.forName ("com.mysql.jdbc.Driver");            
Connection  conn=null;  
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentdb?autoReconnect=true&useSSL=false&allowPublicKeyRetrieval=true", "root", "project");
//String exe =  "delete from found_items where item_id='"+IDE+"' "; 
//String exe =  "delete from found_items where item_id=1002 ";
String exe= "delete from found_items where item_id='"+ID+"' "; /* AND name='" + request.getParameter(Name) + "'AND description='" + request.getParameter(Description)  + "'AND location='" + request.getParameter(Location) + "'AND contact='" + request.getParameter(Contact) + "'AND date='" + request.getParameter(Date) + "'";*/

java.sql.Statement st = conn.createStatement();

st.executeUpdate(exe);


out.println("deleted");
}
catch(Exception e){
                out.println(e);
         }
//response.sendRedirect("admin_delete_found.jsp");
//st.close();
%>