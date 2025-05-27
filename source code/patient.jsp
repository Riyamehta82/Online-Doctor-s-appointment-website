<%@page language="java"%>
<%@page import="java.sql.*"%>
<html>
<head>
</head>
<body>
<%
Connection con=null;
Statement stmt=null;
ResultSet res=null;
String name;
try
{
String  aa=request.getParameter("nm1") ;
String bb=request.getParameter("nm2");



  Class.forName("oracle.jdbc.driver.OracleDriver");
    con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","ayushivi1404");
stmt=con.createStatement();

name="select * from register where email='"+aa+"' or password='"+bb+"'";
 
res=stmt.executeQuery(name);
if(res.next())
{
 
%>
<jsp:forward page="/dash.html"/>
<%
}
else
{
%>
<jsp:forward page="/register.html"/>
<%
}
}
catch(Exception s)
{
out.println(s);
}
%>
</body>
</html>     