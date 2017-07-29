<%@page import="java.io.IOException"%>
<%@ page language="java" contentType="text/html" %>
<%@ page import= "java.sql.*"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.lang.String"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Date "%>
<%
String n1="FAC";

Cookie[] cookie1=request.getCookies();
Cookie facname=null;

if(cookie1!=null)
{
for(int i=0;i<cookie1.length;i++)
{
if(cookie1[i].getName().equals(n1))
{
 facname=cookie1[i];
}

 
}
}
response.addCookie(facname);
String fname=facname.getValue();
%>
<html>
<head>
<title>Report</title>
<link rel="stylesheet" href="style.css">
</head>
<header>
<img src="io.jpg" height="100px" alt="" id="i">
<img src="ccc.jpg" height="80px" id="icon">
<img src="fbi.jpg" height="70px" align="right" id="icon1" >
</header>
<header-line >
<ul class="h-list r-align">
<li class="corner"><a href=""><font color="#0489B1">H</a>
<li class="first"><a href="home.html" align="right">Home</a>
<li><a href="admin.html" font>Admin</a>
<li><a href="faculty.html">Faculty</a>
<li class="last"><a href="students.html" >Students</a>
</ul>
</header-line>
<br/><br/><br/><br/><br/><br/>
<body>
<h1 align="center">REPORT</h1><br/>
<h2 align="center"><%=fname%></h2><br/>
<%

int avg1=0;
int avg2=0;
int avg3=0;
int avg4=0;
int avg5=0;
int avg6=0;
int avg7=0;
int avg8=0;
int avg9=0;
int p1=0;
int p2=0;
int p3=0;
int p4=0;
int p5=0;
int p6=0;
int p7=0;
int p8=0;
int p9=0;
Connection con=null;
PreparedStatement ps;
ResultSet rs;
String year=request.getParameter("year");
String branch=request.getParameter("branch");
%>
<%
try
            {
		//Class.forName("oracle.jdbc.driver.OracleDriver");
              
 //  con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","feedback","vnrvjiet");
Class.forName("com.mysql.jdbc.Driver");




//Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/credit_card", "intern" , "intern");
 con = DriverManager.getConnection("jdbc:mysql://localhost/system?user=root&password=intern");
 if(year.equals("4") && branch.equals("it"))
        {
ps=con.prepareStatement("select * from it4 where fac=fname;");
rs=ps.executeQuery();
if(rs.next())
{
                  while(rs.next())
                      {
p1=p1+rs.getInt("p1");
p2=p2+rs.getInt("p2");
p3=p3+rs.getInt("p3");
p4=p4+rs.getInt("p4");
p5=p5+rs.getInt("p5");
p6=p6+rs.getInt("p6");
p7=p7+rs.getInt("p7");
p8=p8+rs.getInt("p8");
p9=p9+rs.getInt("p9");
}
avg1=p1/300;
avg2=p2/300;
avg3=p3/300;
avg4=p4/300;
avg5=p5/300;
avg6=p6/300;
avg7=p7/300;
avg8=p8/300;
avg9=p9/300;
%>

<table  align="center" bgcolor="#EFF5FB"   border="0px solid white" frame="void" rules="rows" cellpadding="7px">
<tr bgcolor=#EFF8FB>
<th  height="34"></td>
<th width="23"><b>Parameter</b>
    </td>
<th width="23"><b>Scaling on %</b>
    </td>
</tr>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" >Teacher gives a good introduction to 
the subject and creates interest
</td>
<td width="180" height="80" ><%=avg1%> 
</td></tr>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" >Teachers Planning & Delivery of subject is good
</td>
<td width="180" height="80" ><%=avg2%> 
</td></tr>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" >Teacher is knowledgeable about subject
</td>
<td width="180" height="80" ><%=avg3%> 
</td></tr>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" >Teacher speaks clearly and audibly
</td>
<td width="180" height="80" ><%=avg4%> 
</td></tr>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" >Teacher’s writing on the board is clear and visible
</td>
<td width="180" height="80" ><%=avg5%> 
</td></tr>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" >Teacher asks relevant questions and encourages questions & 
Innovative ideas from the students
</td>
<td width="180" height="80" ><%=avg6%> 
</td></tr>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" >Teacher comes to class on time and leaves on time
</td>
<td width="180" height="80" ><%=avg7%> 
</td></tr>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" >Teacher is regular and maintains discipline
</td>
<td width="180" height="80" ><%=avg8%> 
</td></tr>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" >Teacher’s correction of answer scripts are fair and impartial
</td>
<td width="180" height="80" ><%=avg9%> 
</td></tr>
</table>
<br>
<br>
<center><input type="button" 
  onClick="window.print()" 
  value="Print This Page"/>&nbsp&nbsp<input type="button" value="logout" onclick="window.location = 'main.html';"/></center>
<% 
}
else
{
%>
<center><h1>!!Please enter correct details!!</h1></center>
%<
<%@ include file="facform.html" %>
}

}
else 
{
if(year.equals("3") && branch.equals("it"))
        {
ps=con.prepareStatement("select * from it3 where fac=fname;");
rs=ps.executeQuery();
                  while(rs.next())
                      {
p1=p1+rs.getInt("p1");
p2=p2+rs.getInt("p2");
p3=p3+rs.getInt("p3");
p4=p4+rs.getInt("p4");
p5=p5+rs.getInt("p5");
p6=p6+rs.getInt("p6");
p7=p7+rs.getInt("p7");
p8=p8+rs.getInt("p8");
p9=p9+rs.getInt("p9");
}
avg1=p1/300;
avg2=p2/300;
avg3=p3/300;
avg4=p4/300;
avg5=p5/300;
avg6=p6/300;
avg7=p7/300;
avg8=p8/300;
avg9=p9/300;
%>

<table  align="center" bgcolor="#EFF5FB"   border="0px solid white" frame="void" rules="rows" cellpadding="7px">
<tr bgcolor=#EFF8FB>
<th  height="34"></td>
<th width="23"><b>Parameter</b>
    </td>
<th width="23"><b>Scaling on %</b>
    </td>
</tr>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" >Teacher gives a good introduction to 
the subject and creates interest
</td>
<td width="180" height="80" ><%=avg1%> 
</td></tr>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" >Teachers Planning & Delivery of subject is good
</td>
<td width="180" height="80" ><%=avg2%> 
</td></tr>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" >Teacher is knowledgeable about subject
</td>
<td width="180" height="80" ><%=avg3%> 
</td></tr>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" >Teacher speaks clearly and audibly
</td>
<td width="180" height="80" ><%=avg4%> 
</td></tr>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" >Teacher’s writing on the board is clear and visible
</td>
<td width="180" height="80" ><%=avg5%> 
</td></tr>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" >Teacher asks relevant questions and encourages questions & 
Innovative ideas from the students
</td>
<td width="180" height="80" ><%=avg6%> 
</td></tr>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" >Teacher comes to class on time and leaves on time
</td>
<td width="180" height="80" ><%=avg7%> 
</td></tr>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" >Teacher is regular and maintains discipline
</td>
<td width="180" height="80" ><%=avg8%> 
</td></tr>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" >Teacher’s correction of answer scripts are fair and impartial
</td>
<td width="180" height="80" ><%=avg9%> 
</td></tr>
</table>
<br>
<br>
<center><input type="button" 
  onClick="window.print()" 
  value="Print This Page"/>&nbsp&nbsp<input type="button" value="logout" onclick="window.location = 'main.html';"/></center>
<% 
}
else
{
%>
<center><h1>!!Please enter correct details!!</h1></center>
%<
<%@ include file="facform.html" %>
}

}
else 
{
if(year.equals("2") && branch.equals("it"))
        {
ps=con.prepareStatement("select * from it2 where fac=fname;");
rs=ps.executeQuery();
                  while(rs.next())
                      {
p1=p1+rs.getInt("p1");
p2=p2+rs.getInt("p2");
p3=p3+rs.getInt("p3");
p4=p4+rs.getInt("p4");
p5=p5+rs.getInt("p5");
p6=p6+rs.getInt("p6");
p7=p7+rs.getInt("p7");
p8=p8+rs.getInt("p8");
p9=p9+rs.getInt("p9");
}
avg1=p1/300;
avg2=p2/300;
avg3=p3/300;
avg4=p4/300;
avg5=p5/300;
avg6=p6/300;
avg7=p7/300;
avg8=p8/300;
avg9=p9/300;
%>

<table  align="center" bgcolor="#EFF5FB"   border="0px solid white" frame="void" rules="rows" cellpadding="7px">
<tr bgcolor=#EFF8FB>
<th  height="34"></td>
<th width="23"><b>Parameter</b>
    </td>
<th width="23"><b>Scaling on %</b>
    </td>
</tr>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" >Teacher gives a good introduction to 
the subject and creates interest
</td>
<td width="180" height="80" ><%=avg1%> 
</td></tr>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" >Teachers Planning & Delivery of subject is good
</td>
<td width="180" height="80" ><%=avg2%> 
</td></tr>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" >Teacher is knowledgeable about subject
</td>
<td width="180" height="80" ><%=avg3%> 
</td></tr>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" >Teacher speaks clearly and audibly
</td>
<td width="180" height="80" ><%=avg4%> 
</td></tr>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" >Teacher’s writing on the board is clear and visible
</td>
<td width="180" height="80" ><%=avg5%> 
</td></tr>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" >Teacher asks relevant questions and encourages questions & 
Innovative ideas from the students
</td>
<td width="180" height="80" ><%=avg6%> 
</td></tr>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" >Teacher comes to class on time and leaves on time
</td>
<td width="180" height="80" ><%=avg7%> 
</td></tr>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" >Teacher is regular and maintains discipline
</td>
<td width="180" height="80" ><%=avg8%> 
</td></tr>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" >Teacher’s correction of answer scripts are fair and impartial
</td>
<td width="180" height="80" ><%=avg9%> 
</td></tr>
</table>
<br>
<br>
<center><input type="button" 
  onClick="window.print()" 
  value="Print This Page"/>&nbsp&nbsp<input type="button" value="logout" onclick="window.location = 'main.html';"/></center>
<% 
}
else
{
%>
<center><h1>!!Please enter correct details!!</h1></center>
%<
<%@ include file="facform.html" %>
}

}
else
{
if(year.equals("1") && branch.equals("it"))
        {
ps=con.prepareStatement("select * from it1 where fac=fname;");
rs=ps.executeQuery();
                  while(rs.next())
                      {
p1=p1+rs.getInt("p1");
p2=p2+rs.getInt("p2");
p3=p3+rs.getInt("p3");
p4=p4+rs.getInt("p4");
p5=p5+rs.getInt("p5");
p6=p6+rs.getInt("p6");
p7=p7+rs.getInt("p7");
p8=p8+rs.getInt("p8");
p9=p9+rs.getInt("p9");
}
avg1=p1/300;
avg2=p2/300;
avg3=p3/300;
avg4=p4/300;
avg5=p5/300;
avg6=p6/300;
avg7=p7/300;
avg8=p8/300;
avg9=p9/300;
%>

<table  align="center" bgcolor="#EFF5FB"   border="0px solid white" frame="void" rules="rows" cellpadding="7px">
<tr bgcolor=#EFF8FB>
<th  height="34"></td>
<th width="23"><b>Parameter</b>
    </td>
<th width="23"><b>Scaling on %</b>
    </td>
</tr>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" >Teacher gives a good introduction to 
the subject and creates interest
</td>
<td width="180" height="80" ><%=avg1%> 
</td></tr>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" >Teachers Planning & Delivery of subject is good
</td>
<td width="180" height="80" ><%=avg2%> 
</td></tr>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" >Teacher is knowledgeable about subject
</td>
<td width="180" height="80" ><%=avg3%> 
</td></tr>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" >Teacher speaks clearly and audibly
</td>
<td width="180" height="80" ><%=avg4%> 
</td></tr>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" >Teacher’s writing on the board is clear and visible
</td>
<td width="180" height="80" ><%=avg5%> 
</td></tr>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" >Teacher asks relevant questions and encourages questions & 
Innovative ideas from the students
</td>
<td width="180" height="80" ><%=avg6%> 
</td></tr>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" >Teacher comes to class on time and leaves on time
</td>
<td width="180" height="80" ><%=avg7%> 
</td></tr>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" >Teacher is regular and maintains discipline
</td>
<td width="180" height="80" ><%=avg8%> 
</td></tr>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" >Teacher’s correction of answer scripts are fair and impartial
</td>
<td width="180" height="80" ><%=avg9%> 
</td></tr>
</table>
<br>
<br>
<center><input type="button" 
  onClick="window.print()" 
  value="Print This Page"/>&nbsp&nbsp<input type="button" value="logout" onclick="window.location = 'main.html';"/></center>
<% 
}
else
{
%>
<center><h1>!!Please enter correct details!!</h1></center>
%<
<%@ include file="facform.html" %>
}

}
}
}
}
}
}
 catch (SQLException e) 
                  {
                  e.printStackTrace();
                  }

 catch (ClassNotFoundException e)
                      {
                        System.out.println(e);
                   }  
%>