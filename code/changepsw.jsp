<%-- 
    Document   : changepsw
    Created on : Mar 11, 2019, 1:31:30 AM
    Author     : RASHI
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           
            String Newpass = request.getParameter("newpassword");
            String conpass = request.getParameter("conpassword");
            String scname=request.getParameter("school_name");


            Connection con = null;
            Statement st = null;
            //String pass = "";
            ResultSet rs;
           // int id = 0;
            try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentdb?autoReconnect=true&useSSL=false&allowPublicKeyRetrieval=true", "root", "root");
            st = con.createStatement();
            rs=st.executeQuery("select * from student_detail where security_answer='"+scname+"'");
            if(rs.next())
            {
            //rs = st.executeQuery("select * from student_detail where password= '"+ OldPassword + "'");
            //if (rs.next()) { 
            //pass = rs.getString("password");
            //} 
            if(Newpass.equals(conpass))
            {
            //if (pass.equals(OldPassword)) {
            st = con.createStatement();
            st.executeUpdate("update student_detail set password='"+Newpass+"' where security_answer='"+scname+"'");
           // out.println("Password changed successfully");
             response.sendRedirect("MainPage.html");
            st.close();
            con.close();
            } 
            }
            else {
                 response.sendRedirect("forget_pass.html");
               //out.println("Details can't be matched");
            }
/*}else{
out.println("new password and confirm new password is not matching");
}*/


}
            
catch (Exception e) {
out.println(e);
}
            
            
            
            
            
        %>
    </body>
</html>
