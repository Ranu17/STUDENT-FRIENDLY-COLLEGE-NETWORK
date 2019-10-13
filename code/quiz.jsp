<%-- 
    Document   : quiz
    Created on : Mar 24, 2019, 9:56:55 PM
    Author     : RASHI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
<% 
String ans=" ";
if(request.getParameter("correct_ans")!=null)
{
ans=request.getParameter("correct_ans").toString();
}

Connection conn = null;
String driver = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/";
String db = "studentdb";
String user = "root";
String pass = "root";
Statement st = null;
ResultSet qrst;
ResultSet rs = null;

String id=request.getParameter("id");
System.out.println("id:"+id);

int i=1;

String s,g;

int count=0;

try {

Class.forName(driver);
conn = DriverManager.getConnection(url+db,user,pass);

st = conn.createStatement();
rs = st.executeQuery("select * from apti_ques");
while(rs.next()) {
%>
<br>
<br/>
<center>

<table border="1" width="500px" bgcolor="pink" cellspacing="0" cellpadding="0">
<tr>
<td width="100%">

<form name="form1">

<h2 align="center"><font color="red">Online Quiz Application</font></h2>

<b>Select Correct Answer</b>
<table border="0" width="500px" cellspacing="2" cellpadding="4">
<tr>

<td width="50%"> Question:</td>
out.print("<input type="hidden" name="ques">"+rs.getString(1)+"</input>");
<tr>
<td><%= rs.getString("ques") %></td></tr>
<tr>
<td>

1: <input type="radio" name="a" value= "QA" /></td>
<td><%= rs.getString("ans1") %></td></tr> 
<tr>
<td>
2: <input type="radio" name="a" value="QB" /></td>
<td><%= rs.getString("ans2") %></td></tr>

<tr>
<td>
3: <input type="radio" name="a" value="QC" /></td>
<td><%= rs.getString("ans3") %> </td></tr>

<tr>
<td>
4: <input type="radio" name="a" value="QD" /> </td>
<td> <%= rs.getString("ans4") %> </td></tr>

<tr>
<td>
<center>
<input type="submit" value="Submit" name="submit"></center></td></tr>
</table>

</form>
</td>
</tr>
</table>
</center>
</body>
<% g=request.getParameter("a");
%>
<% 
if(g.equals(ans)){

count++;
out.println("Correct");

}
else
out.println("false");
%>

<%
}}

catch (Exception ex) {
ex.printStackTrace();

%>

<%
} finally {
if (rs != null) rs.close();
if (st != null) st.close();
if (conn != null) conn.close();
}
out.println("Score="+count);
%>
</html>


