<%@ page language="java" import="java.net.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<html>
<body>
<% 
String s1 = request.getParameter("nm1");
String s2 = request.getParameter("nm2");
String s3 = request.getParameter("nm3");
String s4 = request.getParameter("nm4");
String s5 = request.getParameter("nm5");
String s6 = request.getParameter("nm6");
String s7 = request.getParameter("nm7");
String s8 = request.getParameter("nm8");
String s9 = request.getParameter("nm9");
String s10 = request.getParameter("nm10");
String s11 = request.getParameter("nm11");
String s12 = request.getParameter("nm12");
String s13 = request.getParameter("nm13");

Connection con = null;
Statement s = null;
try
{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","ayushivi1404");

PreparedStatement ps = con.prepareStatement("insert into doctorr values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
ps.setString(1,s1);
ps.setString(2,s2);
ps.setString(3,s3);
ps.setString(4,s4);
ps.setString(5,s5);
ps.setString(6,s6);
ps.setString(7,s7);
ps.setString(8,s8);
ps.setString(9,s9);
ps.setString(10,s10);
ps.setString(11,s11);
ps.setString(12,s12);
ps.setString(13,s13);

 
ps.executeUpdate(); 
}
catch(Exception se){out.println(se);}
%>
<p> You have registred succefully</p>
</body>
</html>