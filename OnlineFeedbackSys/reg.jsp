<%@page import="java.io.IOException"%>
<%@ page language="java" contentType="text/html" %>
<%@ page import= "java.sql.*"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.lang.String"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Date "%>
<html>
<head>
<title>Report</title>
<link rel="stylesheet" href="style.css">
</head>
<div id="wrapper">
<header>
<img src="io.jpg" height="100%" alt="" id="i">
<img src="ccc.jpg" height="80%" >
<img src="fbi.jpg" height="65%" align="right" id="icon1" >
</header>

<div id="topnav" style="clear:both;width:100%;height:35px;">
<div style="float:left;width:25%;word-spacing:35px;font-size:20px;padding-left:25%;padding-top:6px;white-space:nowrap;text-align:left;">
<header-line>
<a class="topnav" href="home.html" align="right">Home</a>
<a class="topnav" href="admin.html" font>Admin</a>
<a class="topnav" href="facfrm.html">Faculty</a>
<a class="topnav" href="studlogin.html" >Students</a>
</div>
<div style="float:right;font-size:20px;padding-right:15%;padding-top:7px;white-space:nowrap;text-align:right;">
<a class="topnav" href="about us.html" >about us</a>
</div>
</div>
</header-line>
</div>
<body>
<h1 align="center">REPORT</h1><br/>

<%

      Connection con=null;
  String[] facu={"","","","","",""};   
int i=0; 
int sum=0;
int avg=0;
int sum1=0;
int avg1=0;
int sum2=0;
int avg2=0;
int sum3=0;
int avg3=0;
int sum4=0;
int avg4=0;
int sum5=0;
int avg5=0;
int sum6=0;
int avg6=0;
int sum7=0;
int avg7=0;
int sum8=0;
int avg8=0;
int sum9=0;
int avg9=0;
PreparedStatement ps;
ResultSet rs;
   String year=request.getParameter("year");
            String branch=request.getParameter("branch");
%>

<%
        try
            {
		//Class.forName("oracle.jdbc.driver.OracleDriver");
                 //con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","feedback","vnrvjiet"); 
Class.forName("com.mysql.jdbc.Driver");




//Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/credit_card", "intern" , "intern");
 con = DriverManager.getConnection("jdbc:mysql://localhost/system?user=root&password=intern");
                

  if(year.equals("4") && branch.equals("it"))
        {
ps=con.prepareStatement("select distinct fac from it4 order by fac");
rs=ps.executeQuery();
                  while(rs.next())
                      {
facu[i]=rs.getString("fac");
i++; 
}

ps=con.prepareStatement("select fac,average from reiv where fac='"+facu[0]+"'");
rs=ps.executeQuery();
if(rs.next())
{
%>
<table  align="center" bgcolor="#EFF5FB"   border="0px solid white" frame="void" rules="rows" cellpadding="7px">
<tr bgcolor=#EFF8FB>
<th  height="34"></td>
<th width="23"><b>Name of Faculty</b>
    </td>
<th width="23"><b>Scaling on %</b>
    </td>
</tr>

<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=rs.getString("fac")%> 
</td>
<td width="180" height="80" ><%=rs.getInt("average")%> 
</td></tr>
<%
ps=con.prepareStatement("select fac,average from reiv where fac='"+facu[1]+"'");
rs=ps.executeQuery();
while(rs.next())
{
%>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=rs.getString("fac")%> 
</td>
<td width="180" height="80" ><%=rs.getInt("average")%> 
</td></tr>
<%
}
ps=con.prepareStatement("select fac,average from reiv where fac='"+facu[2]+"'");
rs=ps.executeQuery();
while(rs.next())
{
%>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=rs.getString("fac")%> 
</td>
<td width="180" height="80" ><%=rs.getInt("average")%> 
</td></tr>
<%
}
ps=con.prepareStatement("select fac,average from reiv where fac='"+facu[3]+"'");
rs=ps.executeQuery();
while(rs.next())
{
%>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=rs.getString("fac")%> 
</td>
<td width="180" height="80" ><%=rs.getInt("average")%> 
</td>
</tr>
<%
}
ps=con.prepareStatement("select fac,average from reiv where fac='"+facu[4]+"'");
rs=ps.executeQuery();
while(rs.next())
{
%>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=rs.getString("fac")%> 
</td>
<td width="180" height="80" ><%=rs.getInt("average")%> 
</td>
</tr>
<%
}
ps=con.prepareStatement("select fac,average from reiv where fac='"+facu[5]+"'");
rs=ps.executeQuery();
while(rs.next())
{
%>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=rs.getString("fac")%> 
</td>
<td width="180" height="80" ><%=rs.getInt("average")%> 
</td>
</tr>
</table>
<br>
<br>
<center><input type="button" 
  onClick="window.print()" 
  value="Print This Page"/>&nbsp<input type="button" value="logout" onclick="window.location = 'home.html';"/>
</center>
<%
}

}
else
{

 ps=con.prepareStatement("select fac,p1+p2+p3+p4+p5+p6+p7+p8+p9 AS sum from it4 where fac='"+facu[0]+"'");
 rs=ps.executeQuery();
                  while(rs.next())
                      {
sum=sum+rs.getInt("sum");
}
avg=sum/27;
sum=0;
%>
<table  align="center" bgcolor="#EFF5FB"   border="0px solid white" frame="void" rules="rows" cellpadding="7px">
<tr bgcolor=#EFF8FB>
<th  height="34"></td>
<th width="23"><b>Name of Faculty</b>
    </td>
<th width="23"><b>Scaling on %</b>
    </td>
</tr>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=rs.getString("fac")%> 
</td>
<td width="180" height="80" ><%=rs.getInt("average")%> 
</td>
</tr>
<%

ps=con.prepareStatement("select p1 from it4 where fac='"+facu[0]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum1=sum1+rs.getInt("p1");
}
avg1=sum1/300;
ps=con.prepareStatement("select p2 from it4 where fac='"+facu[0]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum2=sum2+rs.getInt("p2");
}
avg2=sum2/300;
ps=con.prepareStatement("select p3 from it4 where fac='"+facu[0]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum3=sum3+rs.getInt("p3");
}
avg3=sum3/300;
ps=con.prepareStatement("select p4 from it4 where fac='"+facu[0]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum4=sum4+rs.getInt("p4");
}
avg4=sum4/300;
ps=con.prepareStatement("select p5 from it4 where fac='"+facu[0]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum5=sum5+rs.getInt("p5");
}
avg5=sum5/300;
ps=con.prepareStatement("select p6 from it4 where fac='"+facu[0]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum6=sum6+rs.getInt("p6");
}
avg6=sum6/300;

ps=con.prepareStatement("select p7 from it4 where fac='"+facu[0]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum7=sum7+rs.getInt("p7");
}
avg7=sum7/300;
ps=con.prepareStatement("select p8 from it4 where fac='"+facu[0]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum8=sum8+rs.getInt("p8");
}
avg8=sum8/300;
ps=con.prepareStatement("select p9 from it4 where fac='"+facu[0]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum9=sum9+rs.getInt("p9");
}
avg9=sum9/300;
ps.executeUpdate("insert into reiv values('"+facu[0]+"',"+avg1+","+avg2+","+avg3+","+avg4+","+avg5+","+avg6+","+avg7+","+avg8+","+avg9+","+avg+")");


 ps=con.prepareStatement("select fac,p1+p2+p3+p4+p5+p6+p7+p8+p9 as sum from it4 where fac='"+facu[1]+"'");
 rs=ps.executeQuery();
                  while(rs.next())
                      {
sum=sum+rs.getInt("sum");
}
avg=sum/27;
sum=0;
%>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=rs.getString("fac")%> 
</td>
<td width="180" height="80" ><%=rs.getInt("average")%> 
</td>
</tr>
<%
sum1=0;
ps=con.prepareStatement("select p1 from it4 where fac='"+facu[1]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum1=sum1+rs.getInt("p1");
}
avg1=sum1/300;
sum2=0;
ps=con.prepareStatement("select p2 from it4 where fac='"+facu[1]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum2=sum2+rs.getInt("p2");
}
avg2=sum2/300;
sum3=0;
ps=con.prepareStatement("select p3 from it4 where fac='"+facu[1]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum3=sum3+rs.getInt("p3");
}
avg3=sum3/300;
sum4=0;
ps=con.prepareStatement("select p4 from it4 where fac='"+facu[1]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum4=sum4+rs.getInt("p4");
}
avg4=sum4/300;
sum5=0;
ps=con.prepareStatement("select p5 from it4 where fac='"+facu[1]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum5=sum5+rs.getInt("p5");
}
avg5=sum5/300;
sum6=0;
ps=con.prepareStatement("select p6 from it4 where fac='"+facu[1]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum6=sum6+rs.getInt("p6");
}
avg6=sum6/300;
sum7=0;
ps=con.prepareStatement("select p7 from it4 where fac='"+facu[1]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum7=sum7+rs.getInt("p7");
}
avg7=sum7/300;
sum8=0;
ps=con.prepareStatement("select p8 from it4 where fac='"+facu[1]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum8=sum8+rs.getInt("p8");
}
avg8=sum8/300;
sum9=0;
ps=con.prepareStatement("select p9 from it4 where fac='"+facu[1]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum9=sum9+rs.getInt("p9");
}
avg9=sum9/300;
ps.executeUpdate("insert into reiv values('"+facu[1]+"',"+avg1+","+avg2+","+avg3+","+avg4+","+avg5+","+avg6+","+avg7+","+avg8+","+avg9+","+avg+")");
 


ps=con.prepareStatement("select fac,p1+p2+p3+p4+p5+p6+p7+p8+p9 as sum from it4 where fac='"+facu[2]+"'");
 rs=ps.executeQuery();
                  while(rs.next())
                      {
sum=sum+rs.getInt("sum");
}
avg=sum/27;
sum=0;

%>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=rs.getString("fac")%> 
</td>
<td width="180" height="80" ><%=rs.getInt("average")%> 
</td>
</tr>
<% 
sum1=0;
ps=con.prepareStatement("select p1 from it4 where fac='"+facu[2]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum1=sum1+rs.getInt("p1");
}
avg1=sum1/300;
sum2=0;
ps=con.prepareStatement("select p2 from it4 where fac='"+facu[2]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum2=sum2+rs.getInt("p2");
}
avg2=sum2/300;
sum3=0;
ps=con.prepareStatement("select p3 from it4 where fac='"+facu[2]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum3=sum3+rs.getInt("p3");
}
avg3=sum3/300;
sum4=0;
ps=con.prepareStatement("select p4 from it4 where fac='"+facu[2]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum4=sum4+rs.getInt("p4");
}
avg4=sum4/300;
sum5=0;
ps=con.prepareStatement("select p5 from it4 where fac='"+facu[2]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum5=sum5+rs.getInt("p5");
}
avg5=sum5/300;
sum6=0;
ps=con.prepareStatement("select p6 from it4 where fac='"+facu[2]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum6=sum6+rs.getInt("p6");
}
avg6=sum6/300;
sum7=0;
ps=con.prepareStatement("select p7 from it4 where fac='"+facu[2]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum7=sum7+rs.getInt("p7");
}
avg7=sum7/300;
sum8=0;
ps=con.prepareStatement("select p8 from it4 where fac='"+facu[2]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum8=sum8+rs.getInt("p8");
}
avg8=sum8/300;
sum9=0;
ps=con.prepareStatement("select p9 from it4 where fac='"+facu[2]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum9=sum9+rs.getInt("p9");
}
avg9=sum9/300;
ps.executeUpdate("insert into reiv values('"+facu[2]+"',"+avg1+","+avg2+","+avg3+","+avg4+","+avg5+","+avg6+","+avg7+","+avg8+","+avg9+","+avg+")");



 ps=con.prepareStatement("select fac,p1+p2+p3+p4+p5+p6+p7+p8+p9 as sum from it4 where fac='"+facu[3]+"'");
 rs=ps.executeQuery();
                  while(rs.next())
                      {
sum=sum+rs.getInt("sum");
}
avg=sum/27;
sum=0;
%>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=rs.getString("fac")%> 
</td>
<td width="180" height="80" ><%=rs.getInt("average")%> 
</td>
</tr>
<%
sum1=0;
ps=con.prepareStatement("select p1 from it4 where fac='"+facu[3]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum1=sum1+rs.getInt("p1");
}
avg1=sum1/300;
sum2=0;
ps=con.prepareStatement("select p2 from it4 where fac='"+facu[3]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum2=sum2+rs.getInt("p2");
}
avg2=sum2/300;
sum3=0;
ps=con.prepareStatement("select p3 from it4 where fac='"+facu[3]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum3=sum3+rs.getInt("p3");
}
avg3=sum3/300;
sum4=0;
ps=con.prepareStatement("select p4 from it4 where fac='"+facu[3]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum4=sum4+rs.getInt("p4");
}
avg4=sum4/300;
sum5=0;
ps=con.prepareStatement("select p5 from it4 where fac='"+facu[3]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum5=sum5+rs.getInt("p5");
}
avg5=sum5/300;
sum6=0;
ps=con.prepareStatement("select p6 from it4 where fac='"+facu[3]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum6=sum6+rs.getInt("p6");
}
avg6=sum6/300;
sum7=0;

ps=con.prepareStatement("select p7 from it4 where fac='"+facu[3]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum7=sum7+rs.getInt("p7");
}
avg7=sum7/300;
sum8=0;
ps=con.prepareStatement("select p8 from it4 where fac='"+facu[3]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum8=sum8+rs.getInt("p8");
}
avg8=sum8/300;
sum9=0;
ps=con.prepareStatement("select p9 from it4 where fac='"+facu[3]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum9=sum9+rs.getInt("p9");
}
avg9=sum9/300;
ps.executeUpdate("insert into reiv values('"+facu[3]+"',"+avg1+","+avg2+","+avg3+","+avg4+","+avg5+","+avg6+","+avg7+","+avg8+","+avg9+","+avg+")");


 ps=con.prepareStatement("select fac,p1+p2+p3+p4+p5+p6+p7+p8+p9 as sum from it4 where fac='"+facu[4]+"'");
 rs=ps.executeQuery();
                  while(rs.next())
                      {
sum=sum+rs.getInt("sum");
}
avg=sum/27;
sum=0;
%>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=rs.getString("fac")%> 
</td>
<td width="180" height="80" ><%=rs.getInt("average")%> 
</td>
</tr>
<%
sum1=0;
ps=con.prepareStatement("select p1 from it4 where fac='"+facu[4]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum1=sum1+rs.getInt("p1");
}
avg1=sum1/300;
sum2=0;
ps=con.prepareStatement("select p2 from it4 where fac='"+facu[4]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum2=sum2+rs.getInt("p2");
}
avg2=sum2/300;
sum3=0;
ps=con.prepareStatement("select p3 from it4 where fac='"+facu[4]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum3=sum3+rs.getInt("p3");
}
avg3=sum3/300;
sum4=0;
ps=con.prepareStatement("select p4 from it4 where fac='"+facu[4]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum4=sum4+rs.getInt("p4");
}
avg4=sum4/300;
sum5=0;
ps=con.prepareStatement("select p5 from it4 where fac='"+facu[4]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum5=sum5+rs.getInt("p5");
}
avg5=sum5/300;
sum6=0;
ps=con.prepareStatement("select p6 from it4 where fac='"+facu[4]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum6=sum6+rs.getInt("p6");
}
avg6=sum6/300;
sum7=0;
ps=con.prepareStatement("select p7 from it4 where fac='"+facu[4]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum7=sum7+rs.getInt("p7");
}
avg7=sum7/300;
sum8=0;
ps=con.prepareStatement("select p8 from it4 where fac='"+facu[4]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum8=sum8+rs.getInt("p8");
}
avg8=sum8/300;
sum9=0;
ps=con.prepareStatement("select p9 from it4 where fac='"+facu[4]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum9=sum9+rs.getInt("p9");
}
avg9=sum9/300;
ps.executeUpdate("insert into reiv values('"+facu[4]+"',"+avg1+","+avg2+","+avg3+","+avg4+","+avg5+","+avg6+","+avg7+","+avg8+","+avg9+","+avg+")");



 ps=con.prepareStatement("select fac,p1+p2+p3+p4+p5+p6+p7+p8+p9 as sum from it4 where fac='"+facu[5]+"'");
 rs=ps.executeQuery();
                  while(rs.next())
                      {
sum=sum+rs.getInt("sum");
}
avg=sum/27;
sum=0;
%>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=rs.getString("fac")%> 
</td>
<td width="180" height="80" ><%=rs.getInt("average")%> 
</td>
</tr>
</table>
<br>
<br>
<center><input type="button" 
  onClick="window.print()" 
  value="Print This Page"/>&nbsp&nbsp<input type="button" value="logout" onclick="window.location = 'home.html';"/></center>
<%
sum1=0;
ps=con.prepareStatement("select p1 from it4 where fac='"+facu[5]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum1=sum1+rs.getInt("p1");
}
avg1=sum1/300;
sum2=0;
ps=con.prepareStatement("select p2 from it4 where fac='"+facu[5]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum2=sum2+rs.getInt("p2");
}
avg2=sum2/300;
sum3=0;
ps=con.prepareStatement("select p3 from it4 where fac='"+facu[5]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum3=sum3+rs.getInt("p3");
}
avg3=sum3/300;
sum4=0;
ps=con.prepareStatement("select p4 from it4 where fac='"+facu[5]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum4=sum4+rs.getInt("p4");
}
avg4=sum4/300;
sum5=0;
ps=con.prepareStatement("select p5 from it4 where fac='"+facu[5]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum5=sum5+rs.getInt("p5");
}
avg5=sum5/300;
sum6=0;
ps=con.prepareStatement("select p6 from it4 where fac='"+facu[5]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum6=sum6+rs.getInt("p6");
}
avg6=sum6/300;
sum7=0;
ps=con.prepareStatement("select p7 from it4 where fac='"+facu[5]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum7=sum7+rs.getInt("p7");
}
avg7=sum7/300;
sum8=0;
ps=con.prepareStatement("select p8 from it4 where fac='"+facu[5]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum8=sum8+rs.getInt("p8");
}
avg8=sum8/300;
sum9=0;
ps=con.prepareStatement("select p9 from it4 where fac='"+facu[5]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum9=sum9+rs.getInt("p9");
}
avg9=sum9/300;
ps.executeUpdate("insert into reiv values('"+facu[5]+"',"+avg1+","+avg2+","+avg3+","+avg4+","+avg5+","+avg6+","+avg7+","+avg8+","+avg9+","+avg+")");
}
}
else 
{
  if(year.equals("3") && branch.equals("it"))
        {
ps=con.prepareStatement("select distinct fac from it3 order by fac");
rs=ps.executeQuery();
                  while(rs.next())
                      {
facu[i]=rs.getString("fac");
i++;
}

ps=con.prepareStatement("select fac,average from reiii where fac='"+facu[0]+"'");
rs=ps.executeQuery();
if(rs.next())
{
%>
<table  align="center" bgcolor="#EFF5FB"   border="0px solid white" frame="void" rules="rows" cellpadding="7px">
<tr bgcolor=#EFF8FB>

<th width="23"><b>Name of Faculty</b>
    </td>
<th width="23"><b>Scaling on %</b>
    </td>
</tr>

<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=rs.getString("fac")%> 
</td>
<td width="180" height="80" ><%=rs.getInt("average")%> 
</td></tr>
<%
ps=con.prepareStatement("select fac,average from reiii where fac='"+facu[1]+"'");
rs=ps.executeQuery();
while(rs.next())
{
%>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=rs.getString("fac")%> 
</td>
<td width="180" height="80" ><%=rs.getInt("average")%> 
</td></tr>
<%
}
ps=con.prepareStatement("select fac,average from reiii where fac='"+facu[2]+"'");
rs=ps.executeQuery();
while(rs.next())
{
%>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=rs.getString("fac")%> 
</td>
<td width="180" height="80" ><%=rs.getInt("average")%> 
</td></tr>
<%
}
ps=con.prepareStatement("select fac,average from reiii where fac='"+facu[3]+"'");
rs=ps.executeQuery();
while(rs.next())
{
%>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=rs.getString("fac")%> 
</td>
<td width="180" height="80" ><%=rs.getInt("average")%> 
</td>
</tr>
<%
}
ps=con.prepareStatement("select fac,average from reiii where fac='"+facu[4]+"'");
rs=ps.executeQuery();
while(rs.next())
{
%>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=rs.getString("fac")%> 
</td>
<td width="180" height="80" ><%=rs.getInt("average")%> 
</td>
</tr>
<%
}
ps=con.prepareStatement("select fac,average from reiii where fac='"+facu[5]+"'");
rs=ps.executeQuery();
while(rs.next())
{
%>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=rs.getString("fac")%> 
</td>
<td width="180" height="80" ><%=rs.getInt("average")%> 
</td>
</tr>
</table>
<br>
<br>
<center><input type="button" 
  onClick="window.print()" 
  value="Print This Page"/>&nbsp&nbsp<input type="button" value="logout" onclick="window.location = 'home.html';"/></center>
<%
}

}
else
{
 ps=con.prepareStatement("select fac,( p1 + p2 + p3 + p4 + p5 + p6 + p7 + p8 + p9 ) as sum from it3 where fac='"+facu[0]+"'");
 rs=ps.executeQuery();
                  while(rs.next())
                      {
sum=sum+rs.getInt("sum");
}
avg=sum/27;
sum=0;
%>

<table  align="center" bgcolor="#EFF5FB"   border="0px solid white" frame="void" rules="rows" cellpadding="7px">
<tr bgcolor=#EFF8FB>

<th width="23"><b>Name of Faculty</b>
    </td>
<th width="23"><b>Scaling on %</b>
    </td>
</tr>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=facu[0]%> 
</td>
<td width="180" height="80" ><%=avg%> 
</td>
</tr>
<%
sum1=0;
ps=con.prepareStatement("select p1 from it3 where fac='"+facu[0]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum1=sum1+rs.getInt("p1");
}
avg1=sum1/300;
sum2=0;
ps=con.prepareStatement("select p2 from it3 where fac='"+facu[0]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum2=sum2+rs.getInt("p2");
}
avg2=sum2/300;
sum3=0;
ps=con.prepareStatement("select p3 from it3 where fac='"+facu[0]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum3=sum3+rs.getInt("p3");
}
avg3=sum3/300;
sum4=0;
ps=con.prepareStatement("select p4 from it3 where fac='"+facu[0]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum4=sum4+rs.getInt("p4");
}
avg4=sum4/300;
sum5=0;
ps=con.prepareStatement("select p5 from it3 where fac='"+facu[0]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum5=sum5+rs.getInt("p5");
}
avg5=sum5/300;
sum6=0;
ps=con.prepareStatement("select p6 from it3 where fac='"+facu[0]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum6=sum6+rs.getInt("p6");
}
avg6=sum6/300;
sum7=0;
ps=con.prepareStatement("select p7 from it3 where fac='"+facu[0]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum7=sum7+rs.getInt("p7");
}
avg7=sum7/300;
sum8=0;
ps=con.prepareStatement("select p8 from it3 where fac='"+facu[0]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum8=sum8+rs.getInt("p8");
}
avg8=sum8/300;
sum9=0;
ps=con.prepareStatement("select p9 from it3 where fac='"+facu[0]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum9=sum9+rs.getInt("p9");
}
avg9=sum9/300;
ps.executeUpdate("insert into reiii values('"+facu[0]+"',"+avg1+","+avg2+","+avg3+","+avg4+","+avg5+","+avg6+","+avg7+","+avg8+","+avg9+","+avg+")");

 ps=con.prepareStatement("select fac,( p1 + p2 + p3 + p4 + p5 + p6 + p7 + p8 + p9 ) as sum from it3 where fac='"+facu[1]+"'");
 rs=ps.executeQuery();
                  while(rs.next())
                      {
sum=sum+rs.getInt("sum");
}
avg=sum/27;
sum=0;
%>

<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=facu[1]%> 
</td>
<td width="180" height="80" ><%=avg%> 
</td>
</tr>
<%
sum1=0;
ps=con.prepareStatement("select p1 from it3 where fac='"+facu[1]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum1=sum1+rs.getInt("p1");
}
avg1=sum1/300;
sum2=0;
ps=con.prepareStatement("select p2 from it3 where fac='"+facu[1]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum2=sum2+rs.getInt("p2");
}
avg2=sum2/300;
sum3=0;
ps=con.prepareStatement("select p3 from it3 where fac='"+facu[1]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum3=sum3+rs.getInt("p3");
}
avg3=sum3/300;
sum4=0;
ps=con.prepareStatement("select p4 from it3 where fac='"+facu[1]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum4=sum4+rs.getInt("p4");
}
avg4=sum4/300;
sum5=0;
ps=con.prepareStatement("select p5 from it3 where fac='"+facu[1]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum5=sum5+rs.getInt("p5");
}
avg5=sum5/300;
sum6=0;
ps=con.prepareStatement("select p6 from it3 where fac='"+facu[1]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum6=sum6+rs.getInt("p6");
}
avg6=sum6/300;
sum7=0;
ps=con.prepareStatement("select p7 from it3 where fac='"+facu[1]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum7=sum7+rs.getInt("p7");
}
avg7=sum7/300;
sum8=0;
ps=con.prepareStatement("select p8 from it3 where fac='"+facu[1]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum8=sum8+rs.getInt("p8");
}
avg8=sum8/300;
sum9=0;
ps=con.prepareStatement("select p9 from it3 where fac='"+facu[1]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum9=sum9+rs.getInt("p9");
}
avg9=sum9/300;
ps.executeUpdate("insert into reiii values('"+facu[1]+"',"+avg1+","+avg2+","+avg3+","+avg4+","+avg5+","+avg6+","+avg7+","+avg8+","+avg9+","+avg+")");
 


ps=con.prepareStatement("select fac,( p1 + p2 + p3 + p4 + p5 + p6 + p7 + p8 + p9 ) as sum from it3 where fac='"+facu[2]+"'");
 rs=ps.executeQuery();
                  while(rs.next())
                      {
sum=sum+rs.getInt("sum");
}
avg=sum/27;
sum=0;
%>

<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=facu[2]%> 
</td>
<td width="180" height="80" ><%=avg%> 
</td>
</tr>
<%
sum1=0;
ps=con.prepareStatement("select p1 from it3 where fac='"+facu[2]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum1=sum1+rs.getInt("p1");
}
avg1=sum1/300;
sum2=0;
ps=con.prepareStatement("select p2 from it3 where fac='"+facu[2]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum2=sum2+rs.getInt("p2");
}
avg2=sum2/300;
sum3=0;
ps=con.prepareStatement("select p3 from it3 where fac='"+facu[2]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum3=sum3+rs.getInt("p3");
}
avg3=sum3/300;
sum4=0;
ps=con.prepareStatement("select p4 from it3 where fac='"+facu[2]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum4=sum4+rs.getInt("p4");
}
avg4=sum4/300;
sum5=0;
ps=con.prepareStatement("select p5 from it3 where fac='"+facu[2]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum5=sum5+rs.getInt("p5");
}
avg5=sum5/300;
sum6=0;
ps=con.prepareStatement("select p6 from it3 where fac='"+facu[2]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum6=sum6+rs.getInt("p6");
}
avg6=sum6/300;
sum7=0;
ps=con.prepareStatement("select p7 from it3 where fac='"+facu[2]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum7=sum7+rs.getInt("p7");
}
avg7=sum7/300;
sum8=0;
ps=con.prepareStatement("select p8 from it3 where fac='"+facu[2]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum8=sum8+rs.getInt("p8");
}
avg8=sum8/300;
sum9=0;
ps=con.prepareStatement("select p9 from it3 where fac='"+facu[2]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum9=sum9+rs.getInt("p9");
}
avg9=sum9/300;
ps.executeUpdate("insert into reiii values('"+facu[2]+"',"+avg1+","+avg2+","+avg3+","+avg4+","+avg5+","+avg6+","+avg7+","+avg8+","+avg9+","+avg+")");



 ps=con.prepareStatement("select fac,( p1 + p2 + p3 + p4 + p5 + p6 + p7 + p8 + p9 ) as sum from it3 where fac='"+facu[3]+"'");
 rs=ps.executeQuery();
                  while(rs.next())
                      {
sum=sum+rs.getInt("sum");
}
avg=sum/27;
sum=0;
%>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=facu[3]%> 
</td>
<td width="180" height="80" ><%=avg%> 
</td>
</tr>
<%
sum1=0;
ps=con.prepareStatement("select p1 from it3 where fac='"+facu[3]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum1=sum1+rs.getInt("p1");
}
avg1=sum1/300;
sum2=0;
ps=con.prepareStatement("select p2 from it3 where fac='"+facu[3]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum2=sum2+rs.getInt("p2");
}
avg2=sum2/300;
sum3=0;
ps=con.prepareStatement("select p3 from it3 where fac='"+facu[3]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum3=sum3+rs.getInt("p3");
}
avg3=sum3/300;
sum4=0;
ps=con.prepareStatement("select p4 from it3 where fac='"+facu[3]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum4=sum4+rs.getInt("p4");
}
avg4=sum4/300;
sum5=0;
ps=con.prepareStatement("select p5 from it3 where fac='"+facu[3]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum5=sum5+rs.getInt("p5");
}
avg5=sum5/300;
sum6=0;
ps=con.prepareStatement("select p6 from it3 where fac='"+facu[3]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum6=sum6+rs.getInt("p6");
}
avg6=sum6/300;
sum7=0;
ps=con.prepareStatement("select p7 from it3 where fac='"+facu[3]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum7=sum7+rs.getInt("p7");
}
avg7=sum7/300;
sum8=0;
ps=con.prepareStatement("select p8 from it3 where fac='"+facu[3]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum8=sum8+rs.getInt("p8");
}
avg8=sum8/300;
sum9=0;
ps=con.prepareStatement("select p9 from it3 where fac='"+facu[3]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum9=sum9+rs.getInt("p9");
}
avg9=sum9/300;
ps.executeUpdate("insert into reiii values('"+facu[3]+"',"+avg1+","+avg2+","+avg3+","+avg4+","+avg5+","+avg6+","+avg7+","+avg8+","+avg9+","+avg+")");


 ps=con.prepareStatement("select fac,( p1 + p2 + p3 + p4 + p5 + p6 + p7 + p8 + p9 ) as sum from it3 where fac='"+facu[4]+"'");
 rs=ps.executeQuery();
                  while(rs.next())
                      {
sum=sum+rs.getInt("sum");
}
avg=sum/27;
sum=0;
%>

<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=facu[4]%> 
</td>
<td width="180" height="80" ><%=avg%> 
</td>
</tr>
<%
sum1=0;
ps=con.prepareStatement("select p1 from it3 where fac='"+facu[4]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum1=sum1+rs.getInt("p1");
}
avg1=sum1/300;
sum2=0;
ps=con.prepareStatement("select p2 from it3 where fac='"+facu[4]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum2=sum2+rs.getInt("p2");
}
avg2=sum2/300;
sum3=0;
ps=con.prepareStatement("select p3 from it3 where fac='"+facu[4]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum3=sum3+rs.getInt("p3");
}
avg3=sum3/300;
sum4=0;
ps=con.prepareStatement("select p4 from it3 where fac='"+facu[4]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum4=sum4+rs.getInt("p4");
}
avg4=sum4/300;
sum5=0;
ps=con.prepareStatement("select p5 from it3 where fac='"+facu[4]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum5=sum5+rs.getInt("p5");
}
avg5=sum5/300;
sum6=0;
ps=con.prepareStatement("select p6 from it3 where fac='"+facu[4]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum6=sum6+rs.getInt("p6");
}
avg6=sum6/300;
sum7=0;
ps=con.prepareStatement("select p7 from it3 where fac='"+facu[4]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum7=sum7+rs.getInt("p7");
}
avg7=sum7/300;
sum8=0;
ps=con.prepareStatement("select p8 from it3 where fac='"+facu[4]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum8=sum8+rs.getInt("p8");
}
avg8=sum8/300;
sum9=0;
ps=con.prepareStatement("select p9 from it3 where fac='"+facu[4]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum9=sum9+rs.getInt("p9");
}
avg9=sum9/300;
ps.executeUpdate("insert into reiii values('"+facu[4]+"',"+avg1+","+avg2+","+avg3+","+avg4+","+avg5+","+avg6+","+avg7+","+avg8+","+avg9+","+avg+")");



 ps=con.prepareStatement("select fac,( p1 + p2 + p3 + p4 + p5 + p6 + p7 + p8 + p9 ) as sum from it3 where fac='"+facu[5]+"'");
 rs=ps.executeQuery();
                  while(rs.next())
                      {
sum=sum+rs.getInt("sum");
}
avg=sum/27;
sum=0;
%>

<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=facu[5]%> 
</td>
<td width="180" height="80" ><%=avg%> 
</td>
</tr>
</table>
<br>
<br>
<center><input type="button" 
  onClick="window.print()" 
  value="Print This Page"/>&nbsp<input type="button" value="logout" onclick="window.location = 'home.html';"/></center>
<%
sum1=0;
ps=con.prepareStatement("select p1 from it3 where fac='"+facu[5]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum1=sum1+rs.getInt("p1");
}
avg1=sum1/300;
sum2=0;
ps=con.prepareStatement("select p2 from it3 where fac='"+facu[5]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum2=sum2+rs.getInt("p2");
}
avg2=sum2/300;
sum3=0;
ps=con.prepareStatement("select p3 from it3 where fac='"+facu[5]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum3=sum3+rs.getInt("p3");
}
avg3=sum3/300;
sum4=0;
ps=con.prepareStatement("select p4 from it3 where fac='"+facu[5]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum4=sum4+rs.getInt("p4");
}
avg4=sum4/300;
sum5=0;
ps=con.prepareStatement("select p5 from it3 where fac='"+facu[5]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum5=sum5+rs.getInt("p5");
}
avg5=sum5/300;
sum6=0;
ps=con.prepareStatement("select p6 from it3 where fac='"+facu[5]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum6=sum6+rs.getInt("p6");
}
avg6=sum6/300;
sum7=0;
ps=con.prepareStatement("select p7 from it3 where fac='"+facu[5]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum7=sum7+rs.getInt("p7");
}
avg7=sum7/300;
sum8=0;
ps=con.prepareStatement("select p8 from it3 where fac='"+facu[5]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum8=sum8+rs.getInt("p8");
}
avg8=sum8/300;
sum9=0;
ps=con.prepareStatement("select p9 from it3 where fac='"+facu[5]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum9=sum9+rs.getInt("p9");
}
avg9=sum9/300;
ps.executeUpdate("insert into reiii values('"+facu[5]+"',"+avg1+","+avg2+","+avg3+","+avg4+","+avg5+","+avg6+","+avg7+","+avg8+","+avg9+","+avg+")");
}

 }

else 
{
  if(year.equals("2") && branch.equals("it"))
        {
ps=con.prepareStatement("select distinct fac from it2 order by fac");
rs=ps.executeQuery();
                  while(rs.next())
                      {
facu[i]=rs.getString("fac");
i++;
}
ps=con.prepareStatement("select fac,average from reii where fac='"+facu[0]+"'");
rs=ps.executeQuery();
if(rs.next())
{
%>
<table  align="center" bgcolor="#EFF5FB"   border="0px solid white" frame="void" rules="rows" cellpadding="7px">
<tr bgcolor=#EFF8FB>
<th  height="34"></td>
<th width="23"><b>Name of Faculty</b>
    </td>
<th width="23"><b>Scaling on %</b>
    </td>
</tr>

<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=rs.getString("fac")%> 
</td>
<td width="180" height="80" ><%=rs.getInt("average")%> 
</td></tr>
<%
ps=con.prepareStatement("select fac,average from reii where fac='"+facu[1]+"'");
rs=ps.executeQuery();
while(rs.next())
{
%>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=rs.getString("fac")%> 
</td>
<td width="180" height="80" ><%=rs.getInt("average")%> 
</td></tr>
<%
}
ps=con.prepareStatement("select fac,average from reii where fac='"+facu[2]+"'");
rs=ps.executeQuery();
while(rs.next())
{
%>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=rs.getString("fac")%> 
</td>
<td width="180" height="80" ><%=rs.getInt("average")%> 
</td></tr>
<%
}
ps=con.prepareStatement("select fac,average from reii where fac='"+facu[3]+"'");
rs=ps.executeQuery();
while(rs.next())
{
%>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=rs.getString("fac")%> 
</td>
<td width="180" height="80" ><%=rs.getInt("average")%> 
</td>
</tr>
<%
}
ps=con.prepareStatement("select fac,average from reii where fac='"+facu[4]+"'");
rs=ps.executeQuery();
while(rs.next())
{
%>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=rs.getString("fac")%> 
</td>
<td width="180" height="80" ><%=rs.getInt("average")%> 
</td>
</tr>
<%
}
ps=con.prepareStatement("select fac,average from reii where fac='"+facu[5]+"'");
rs=ps.executeQuery();
while(rs.next())
{
%>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=rs.getString("fac")%> 
</td>
<td width="180" height="80" ><%=rs.getInt("average")%> 
</td>
</tr>
</table>
<br>
<br>
<center><input type="button" 
  onClick="window.print()" 
  value="Print This Page"/>&nbsp&nbsp<input type="button" value="logout" onclick="window.location = 'home.html';"/></center>
<%
}

}
else
{

 ps=con.prepareStatement("select fac,p1+p2+p3+p4+p5+p6+p7+p8+p9 as sum from it2 where fac='"+facu[0]+"'");
 rs=ps.executeQuery();
                  while(rs.next())
                      {
sum=sum+rs.getInt("sum");
}
avg=sum/27;
sum=0;
%>
<table  align="center" bgcolor="#EFF5FB"   border="0px solid white" frame="void" rules="rows" cellpadding="7px">
<tr bgcolor=#EFF8FB>
<th  height="34"></td>
<th width="23"><b>Name of Faculty</b>
    </td>
<th width="23"><b>Scaling on %</b>
    </td>
</tr>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=rs.getString("fac")%> 
</td>
<td width="180" height="80" ><%=rs.getInt("average")%> 
</td>
</tr>
<%
sum1=0;
ps=con.prepareStatement("select p1 from it2 where fac='"+facu[0]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum1=sum1+rs.getInt("p1");
}
avg1=sum1/300;
sum2=0;
ps=con.prepareStatement("select p2 from it2 where fac='"+facu[0]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum2=sum2+rs.getInt("p2");
}
avg2=sum2/300;
sum3=0;
ps=con.prepareStatement("select p3 from it2 where fac='"+facu[0]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum3=sum3+rs.getInt("p3");
}
avg3=sum3/300;
sum4=0;
ps=con.prepareStatement("select p4 from it2 where fac='"+facu[0]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum4=sum4+rs.getInt("p4");
}
avg4=sum4/300;
sum5=0;
ps=con.prepareStatement("select p5 from it2 where fac='"+facu[0]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum5=sum5+rs.getInt("p5");
}
avg5=sum5/300;
sum6=0;
ps=con.prepareStatement("select p6 from it2 where fac='"+facu[0]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum6=sum6+rs.getInt("p6");
}
avg6=sum6/300;
sum7=0;
ps=con.prepareStatement("select p7 from it2 where fac='"+facu[0]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum7=sum7+rs.getInt("p7");
}
avg7=sum7/300;
sum8=0;
ps=con.prepareStatement("select p8 from it2 where fac='"+facu[0]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum8=sum8+rs.getInt("p8");
}
avg8=sum8/300;
sum9=0;
ps=con.prepareStatement("select p9 from it2 where fac='"+facu[0]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum9=sum9+rs.getInt("p9");
}
avg9=sum9/300;
ps.executeUpdate("insert into reii values('"+facu[0]+"',"+avg1+","+avg2+","+avg3+","+avg4+","+avg5+","+avg6+","+avg7+","+avg8+","+avg9+","+avg+")");

 ps=con.prepareStatement("select fac,p1+p2+p3+p4+p5+p6+p7+p8+p9 as sum from it2 where fac='"+facu[1]+"'");
 rs=ps.executeQuery();
                  while(rs.next())
                      {
sum=sum+rs.getInt("sum");
}
avg=sum/27;
sum=0;
%>

<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=rs.getString("fac")%> 
</td>
<td width="180" height="80" ><%=rs.getInt("average")%> 
</td>
</tr>
<%
sum1=0;
ps=con.prepareStatement("select p1 from it2 where fac='"+facu[1]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum1=sum1+rs.getInt("p1");
}
avg1=sum1/300;
sum2=0;
ps=con.prepareStatement("select p2 from it2 where fac='"+facu[1]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum2=sum2+rs.getInt("p2");
}
avg2=sum2/300;
sum3=0;
ps=con.prepareStatement("select p3 from it2 where fac='"+facu[1]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum3=sum3+rs.getInt("p3");
}
avg3=sum3/300;
sum4=0;
ps=con.prepareStatement("select p4 from it2 where fac='"+facu[1]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum4=sum4+rs.getInt("p4");
}
avg4=sum4/300;
sum5=0;
ps=con.prepareStatement("select p5 from it2 where fac='"+facu[1]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum5=sum5+rs.getInt("p5");
}
avg5=sum5/300;
sum6=0;
ps=con.prepareStatement("select p6 from it2 where fac='"+facu[1]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum6=sum6+rs.getInt("p6");
}
avg6=sum6/300;
sum7=0;
ps=con.prepareStatement("select p7 from it2 where fac='"+facu[1]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum7=sum7+rs.getInt("p7");
}
avg7=sum7/300;
sum8=0;
ps=con.prepareStatement("select p8 from it2 where fac='"+facu[1]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum8=sum8+rs.getInt("p8");
}
avg8=sum8/300;
sum9=0;
ps=con.prepareStatement("select p9 from it2 where fac='"+facu[1]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum9=sum9+rs.getInt("p9");
}
avg9=sum9/300;
ps.executeUpdate("insert into reii values('"+facu[1]+"',"+avg1+","+avg2+","+avg3+","+avg4+","+avg5+","+avg6+","+avg7+","+avg8+","+avg9+","+avg+")");
 


ps=con.prepareStatement("select fac,p1+p2+p3+p4+p5+p6+p7+p8+p9 as sum from it2 where fac='"+facu[2]+"'");
 rs=ps.executeQuery();
                  while(rs.next())
                      {
sum=sum+rs.getInt("sum");
}
avg=sum/27;
sum=0;
%>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=rs.getString("fac")%> 
</td>
<td width="180" height="80" ><%=rs.getInt("average")%> 
</td>
</tr>
<%
sum1=0;
ps=con.prepareStatement("select p1 from it2 where fac='"+facu[2]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum1=sum1+rs.getInt("p1");
}
avg1=sum1/300;
sum2=0;
ps=con.prepareStatement("select p2 from it2 where fac='"+facu[2]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum2=sum2+rs.getInt("p2");
}
avg2=sum2/300;
sum3=0;
ps=con.prepareStatement("select p3 from it2 where fac='"+facu[2]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum3=sum3+rs.getInt("p3");
}
avg3=sum3/300;
sum4=0;
ps=con.prepareStatement("select p4 from it2 where fac='"+facu[2]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum4=sum4+rs.getInt("p4");
}
avg4=sum4/300;
sum5=0;
ps=con.prepareStatement("select p5 from it2 where fac='"+facu[2]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum5=sum5+rs.getInt("p5");
}
avg5=sum5/300;
sum6=0;
ps=con.prepareStatement("select p6 from it2 where fac='"+facu[2]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum6=sum6+rs.getInt("p6");
}
avg6=sum6/300;
sum7=0;
ps=con.prepareStatement("select p7 from it2 where fac='"+facu[2]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum7=sum7+rs.getInt("p7");
}
avg7=sum7/300;
sum8=0;
ps=con.prepareStatement("select p8 from it2 where fac='"+facu[2]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum8=sum8+rs.getInt("p8");
}
avg8=sum8/300;
sum9=0;
ps=con.prepareStatement("select p9 from it2 where fac='"+facu[2]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum9=sum9+rs.getInt("p9");
}
avg9=sum9/300;
ps.executeUpdate("insert into reii values('"+facu[2]+"',"+avg1+","+avg2+","+avg3+","+avg4+","+avg5+","+avg6+","+avg7+","+avg8+","+avg9+","+avg+")");



 ps=con.prepareStatement("select fac,p1+p2+p3+p4+p5+p6+p7+p8+p9 as sum from it2 where fac='"+facu[3]+"'");
 rs=ps.executeQuery();
                  while(rs.next())
                      {
sum=sum+rs.getInt("sum");
}
avg=sum/27;
sum=0;
%>

<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=rs.getString("fac")%> 
</td>
<td width="180" height="80" ><%=rs.getInt("average")%> 
</td>
</tr>
<%
sum1=0;
ps=con.prepareStatement("select p1 from it2 where fac='"+facu[3]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum1=sum1+rs.getInt("p1");
}
avg1=sum1/300;
sum2=0;
ps=con.prepareStatement("select p2 from it2 where fac='"+facu[3]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum2=sum2+rs.getInt("p2");
}
avg2=sum2/300;
sum3=0;
ps=con.prepareStatement("select p3 from it2 where fac='"+facu[3]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum3=sum3+rs.getInt("p3");
}
avg3=sum3/300;
sum4=0;
ps=con.prepareStatement("select p4 from it2 where fac='"+facu[3]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum4=sum4+rs.getInt("p4");
}
avg4=sum4/300;
sum5=0;
ps=con.prepareStatement("select p5 from it2 where fac='"+facu[3]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum5=sum5+rs.getInt("p5");
}
avg5=sum5/300;
sum6=0;
ps=con.prepareStatement("select p6 from it2 where fac='"+facu[3]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum6=sum6+rs.getInt("p6");
}
avg6=sum6/300;
sum7=0;
ps=con.prepareStatement("select p7 from it2 where fac='"+facu[3]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum7=sum7+rs.getInt("p7");
}
avg7=sum7/300;
sum8=0;
ps=con.prepareStatement("select p8 from it2 where fac='"+facu[3]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum8=sum8+rs.getInt("p8");
}
avg8=sum8/300;
sum9=0;
ps=con.prepareStatement("select p9 from it2 where fac='"+facu[3]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum9=sum9+rs.getInt("p9");
}
avg9=sum9/300;
ps.executeUpdate("insert into reii values('"+facu[3]+"',"+avg1+","+avg2+","+avg3+","+avg4+","+avg5+","+avg6+","+avg7+","+avg8+","+avg9+","+avg+")");


 ps=con.prepareStatement("select fac,p1+p2+p3+p4+p5+p6+p7+p8+p9 as sum from it2 where fac='"+facu[4]+"'");
 rs=ps.executeQuery();
                  while(rs.next())
                      {
sum=sum+rs.getInt("sum");
}
avg=sum/27;
sum=0;
%>

<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=rs.getString("fac")%> 
</td>
<td width="180" height="80" ><%=rs.getInt("average")%> 
</td>
</tr>
<%
sum1=0;
ps=con.prepareStatement("select p1 from it2 where fac='"+facu[4]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum1=sum1+rs.getInt("p1");
}
avg1=sum1/300;
sum2=0;
ps=con.prepareStatement("select p2 from it2 where fac='"+facu[4]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum2=sum2+rs.getInt("p2");
}
avg2=sum2/300;
sum3=0;
ps=con.prepareStatement("select p3 from it2 where fac='"+facu[4]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum3=sum3+rs.getInt("p3");
}
avg3=sum3/300;
sum4=0;
ps=con.prepareStatement("select p4 from it2 where fac='"+facu[4]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum4=sum4+rs.getInt("p4");
}
avg4=sum4/300;
sum5=0;
ps=con.prepareStatement("select p5 from it2 where fac='"+facu[4]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum5=sum5+rs.getInt("p5");
}
avg5=sum5/300;
sum6=0;
ps=con.prepareStatement("select p6 from it2 where fac='"+facu[4]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum6=sum6+rs.getInt("p6");
}
avg6=sum6/300;
sum7=0;
ps=con.prepareStatement("select p7 from it2 where fac='"+facu[4]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum7=sum7+rs.getInt("p7");
}
avg7=sum7/300;
sum8=0;
ps=con.prepareStatement("select p8 from it2 where fac='"+facu[4]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum8=sum8+rs.getInt("p8");
}
avg8=sum8/300;
sum9=0;
ps=con.prepareStatement("select p9 from it2 where fac='"+facu[4]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum9=sum9+rs.getInt("p9");
}
avg9=sum9/300;
ps.executeUpdate("insert into reii values('"+facu[4]+"',"+avg1+","+avg2+","+avg3+","+avg4+","+avg5+","+avg6+","+avg7+","+avg8+","+avg9+","+avg+")");



 ps=con.prepareStatement("select fac,p1+p2+p3+p4+p5+p6+p7+p8+p9 as sum from it2 where fac='"+facu[5]+"'");
 rs=ps.executeQuery();
                  while(rs.next())
                      {
sum=sum+rs.getInt("sum");
}
avg=sum/27;
sum=0;
%>

<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=rs.getString("fac")%> 
</td>
<td width="180" height="80" ><%=rs.getInt("average")%> 
</td>
</tr>
</table>
<br>
<br>
<center><input type="button" 
  onClick="window.print()" 
  value="Print This Page"/>&nbsp&nbsp<input type="button" value="logout" onclick="window.location = 'home.html';"/></center>
<%
sum1=0;
ps=con.prepareStatement("select p1 from it2 where fac='"+facu[5]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum1=sum1+rs.getInt("p1");
}
avg1=sum1/300;
sum2=0;
ps=con.prepareStatement("select p2 from it2 where fac='"+facu[5]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum2=sum2+rs.getInt("p2");
}
avg2=sum2/300;
sum3=0;
ps=con.prepareStatement("select p3 from it3 where fac='"+facu[5]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum3=sum3+rs.getInt("p3");
}
avg3=sum3/300;
sum4=0;
ps=con.prepareStatement("select p4 from it2 where fac='"+facu[5]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum4=sum4+rs.getInt("p4");
}
avg4=sum4/300;
sum5=0;
ps=con.prepareStatement("select p5 from it2 where fac='"+facu[5]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum5=sum5+rs.getInt("p5");
}
avg5=sum5/300;
sum6=0;
ps=con.prepareStatement("select p6 from it2 where fac='"+facu[5]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum6=sum6+rs.getInt("p6");
}
avg6=sum6/300;
sum7=0;
ps=con.prepareStatement("select p7 from it2 where fac='"+facu[5]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum7=sum7+rs.getInt("p7");
}
avg7=sum7/300;
sum8=0;
ps=con.prepareStatement("select p8 from it2 where fac='"+facu[5]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum8=sum8+rs.getInt("p8");
}
avg8=sum8/300;
sum9=0;
ps=con.prepareStatement("select p9 from it2 where fac='"+facu[5]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum9=sum9+rs.getInt("p9");
}
avg9=sum9/300;
ps.executeUpdate("insert into reii values('"+facu[5]+"',"+avg1+","+avg2+","+avg3+","+avg4+","+avg5+","+avg6+","+avg7+","+avg8+","+avg9+","+avg+")");
}
}
else 
{
  if(year.equals("1") && branch.equals("it"))
        {
ps=con.prepareStatement("select distinct fac from it1 order by fac");
rs=ps.executeQuery();
                  while(rs.next())
                      {
facu[i]=rs.getString("fac");
i++;
}

ps=con.prepareStatement("select fac,average from rei where fac='"+facu[0]+"'");
rs=ps.executeQuery();
if(rs.next())
{
%>
<table  align="center" bgcolor="#EFF5FB"   border="0px solid white" frame="void" rules="rows" cellpadding="7px">
<tr bgcolor=#EFF8FB>
<th  height="34"></td>
<th width="23"><b>Name of Faculty</b>
    </td>
<th width="23"><b>Scaling on %</b>
    </td>
</tr>

<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=rs.getString("fac")%> 
</td>
<td width="180" height="80" ><%=rs.getInt("average")%> 
</td></tr>
<%
ps=con.prepareStatement("select fac,average from rei where fac='"+facu[1]+"'");
rs=ps.executeQuery();
while(rs.next())
{
%>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=rs.getString("fac")%> 
</td>
<td width="180" height="80" ><%=rs.getInt("average")%> 
</td></tr>
<%
}
ps=con.prepareStatement("select fac,average from rei where fac='"+facu[2]+"'");
rs=ps.executeQuery();
while(rs.next())
{
%>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=rs.getString("fac")%> 
</td>
<td width="180" height="80" ><%=rs.getInt("average")%> 
</td></tr>
<%
}
ps=con.prepareStatement("select fac,average from rei where fac='"+facu[3]+"'");
rs=ps.executeQuery();
while(rs.next())
{
%>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=rs.getString("fac")%> 
</td>
<td width="180" height="80" ><%=rs.getInt("average")%> 
</td>
</tr>
<%
}
ps=con.prepareStatement("select fac,average from rei where fac='"+facu[4]+"'");
rs=ps.executeQuery();
while(rs.next())
{
%>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=rs.getString("fac")%> 
</td>
<td width="180" height="80" ><%=rs.getInt("average")%> 
</td>
</tr>
<%
}
ps=con.prepareStatement("select fac,average from rei where fac='"+facu[5]+"'");
rs=ps.executeQuery();
while(rs.next())
{
%>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=rs.getString("fac")%> 
</td>
<td width="180" height="80" ><%=rs.getInt("average")%> 
</td>
</tr>
</table>
<br>
<br>
<center><input type="button" 
  onClick="window.print()" 
  value="Print This Page"/>&nbsp&nbsp<input type="button" value="logout" onclick="window.location = 'home.html';"/></center>

<%
}

}

else
{
 ps=con.prepareStatement("select fac,p1+p2+p3+p4+p5+p6+p7+p8+p9 as sum from it1 where fac='"+facu[0]+"'");
 rs=ps.executeQuery();
                  while(rs.next())
                      {
sum=sum+rs.getInt("sum");
}
avg=sum/27;
sum=0;
%>
<table  align="center" bgcolor="#EFF5FB"   border="0px solid white" frame="void" rules="rows" cellpadding="7px">
<tr bgcolor=#EFF8FB>
<th  height="34"></td>
<th width="23"><b>Name of Faculty</b>
    </td>
<th width="23"><b>Scaling on %</b>
    </td>
</tr>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=rs.getString("fac")%> 
</td>
<td width="180" height="80" ><%=rs.getInt("average")%> 
</td>
</tr>
<%
ps=con.prepareStatement("select p1 from it1 where fac='"+facu[0]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum1=sum1+rs.getInt("p1");
}
avg1=sum1/300;
ps=con.prepareStatement("select p2 from it1 where fac='"+facu[0]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum2=sum2+rs.getInt("p2");
}
avg2=sum2/300;
ps=con.prepareStatement("select p3 from it1 where fac='"+facu[0]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum3=sum3+rs.getInt("p3");
}
avg3=sum3/300;
ps=con.prepareStatement("select p4 from it1 where fac='"+facu[0]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum4=sum4+rs.getInt("p4");
}
avg4=sum4/300;
ps=con.prepareStatement("select p5 from it1 where fac='"+facu[0]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum5=sum5+rs.getInt("p5");
}
avg5=sum5/300;
ps=con.prepareStatement("select p6 from it1 where fac='"+facu[0]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum6=sum6+rs.getInt("p6");
}
avg6=sum6/300;

ps=con.prepareStatement("select p7 from it1 where fac='"+facu[0]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum7=sum7+rs.getInt("p7");
}
avg7=sum7/300;
ps=con.prepareStatement("select p8 from it1 where fac='"+facu[0]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum8=sum8+rs.getInt("p8");
}
avg8=sum8/300;
ps=con.prepareStatement("select p9 from it1 where fac='"+facu[0]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum9=sum9+rs.getInt("p9");
}
avg9=sum9/300;
ps.executeUpdate("insert into rei values('"+facu[0]+"',"+avg1+","+avg2+","+avg3+","+avg4+","+avg5+","+avg6+","+avg7+","+avg8+","+avg9+","+avg+")");

 ps=con.prepareStatement("select fac,p1+p2+p3+p4+p5+p6+p7+p8+p9 as sum from it3 where fac='"+facu[1]+"'");
 rs=ps.executeQuery();
                  while(rs.next())
                      {
sum=sum+rs.getInt("sum");
}
avg=sum/27;
sum=0;
%>

<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=rs.getString("fac")%> 
</td>
<td width="180" height="80" ><%=rs.getInt("average")%> 
</td>
</tr>
<%
sum1=0;
ps=con.prepareStatement("select p1 from it1 where fac='"+facu[1]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum1=sum1+rs.getInt("p1");
}
avg1=sum1/300;
sum2=0;
ps=con.prepareStatement("select p2 from it1 where fac='"+facu[1]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum2=sum2+rs.getInt("p2");
}
avg2=sum2/300;
sum3=0;
ps=con.prepareStatement("select p3 from it1 where fac='"+facu[1]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum3=sum3+rs.getInt("p3");
}
avg3=sum3/300;
sum4=0;
ps=con.prepareStatement("select p4 from it1 where fac='"+facu[1]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum4=sum4+rs.getInt("p4");
}
avg4=sum4/300;
sum5=0;
ps=con.prepareStatement("select p5 from it1 where fac='"+facu[1]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum5=sum5+rs.getInt("p5");
}
avg5=sum5/300;
sum6=0;
ps=con.prepareStatement("select p6 from it1 where fac='"+facu[1]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum6=sum6+rs.getInt("p6");
}
avg6=sum6/300;
sum7=0;
ps=con.prepareStatement("select p7 from it1 where fac='"+facu[1]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum7=sum7+rs.getInt("p7");
}
avg7=sum7/300;
sum8=0;
ps=con.prepareStatement("select p8 from it1 where fac='"+facu[1]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum8=sum8+rs.getInt("p8");
}
avg8=sum8/300;
sum9=0;
ps=con.prepareStatement("select p9 from it1 where fac='"+facu[1]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum9=sum9+rs.getInt("p9");
}
avg9=sum9/300;
ps.executeUpdate("insert into rei values('"+facu[1]+"',"+avg1+","+avg2+","+avg3+","+avg4+","+avg5+","+avg6+","+avg7+","+avg8+","+avg9+","+avg+")");
 


ps=con.prepareStatement("select fac,p1+p2+p3+p4+p5+p6+p7+p8+p9 as sum from it1 where fac='"+facu[2]+"'");
 rs=ps.executeQuery();
                  while(rs.next())
                      {
sum=sum+rs.getInt("sum");
}
avg=sum/27;
sum=0;
%>

<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=rs.getString("fac")%> 
</td>
<td width="180" height="80" ><%=rs.getInt("average")%> 
</td>
</tr>
<%sum1=0;
ps=con.prepareStatement("select p1 from it1 where fac='"+facu[2]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum1=sum1+rs.getInt("p1");
}
avg1=sum1/300;
sum2=0;
ps=con.prepareStatement("select p2 from it1 where fac='"+facu[2]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum2=sum2+rs.getInt("p2");
}
avg2=sum2/300;
sum3=0;
ps=con.prepareStatement("select p3 from it1 where fac='"+facu[2]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum3=sum3+rs.getInt("p3");
}
avg3=sum3/300;
sum4=0;
ps=con.prepareStatement("select p4 from it1 where fac='"+facu[2]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum4=sum4+rs.getInt("p4");
}
avg4=sum4/300;
sum5=0;
ps=con.prepareStatement("select p5 from it1 where fac='"+facu[2]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum5=sum5+rs.getInt("p5");
}
avg5=sum5/300;
sum6=0;
ps=con.prepareStatement("select p6 from it1 where fac='"+facu[2]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum6=sum6+rs.getInt("p6");
}
avg6=sum6/300;
sum7=0;
ps=con.prepareStatement("select p7 from it1 where fac='"+facu[2]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum7=sum7+rs.getInt("p7");
}
avg7=sum7/300;
sum8=0;
ps=con.prepareStatement("select p8 from it1 where fac='"+facu[2]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum8=sum8+rs.getInt("p8");
}
avg8=sum8/300;
sum9=0;
ps=con.prepareStatement("select p9 from it1 where fac='"+facu[2]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum9=sum9+rs.getInt("p9");
}
avg9=sum9/300;
ps.executeUpdate("insert into rei values('"+facu[2]+"',"+avg1+","+avg2+","+avg3+","+avg4+","+avg5+","+avg6+","+avg7+","+avg8+","+avg9+","+avg+")");



 ps=con.prepareStatement("select fac,p1+p2+p3+p4+p5+p6+p7+p8+p9 as sum from it1 where fac='"+facu[3]+"'");
 rs=ps.executeQuery();
                  while(rs.next())
                      {
sum=sum+rs.getInt("sum");
}
avg=sum/27;
sum=0;
%>

<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=rs.getString("fac")%> 
</td>
<td width="180" height="80" ><%=rs.getInt("average")%> 
</td>
</tr>
<%
sum1=0;
ps=con.prepareStatement("select p1 from it1 where fac='"+facu[3]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum1=sum1+rs.getInt("p1");
}
avg1=sum1/300;
sum2=0;
ps=con.prepareStatement("select p2 from it1 where fac='"+facu[3]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum2=sum2+rs.getInt("p2");
}
avg2=sum2/300;
sum3=0;
ps=con.prepareStatement("select p3 from it1 where fac='"+facu[3]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum3=sum3+rs.getInt("p3");
}
avg3=sum3/300;
sum4=0;
ps=con.prepareStatement("select p4 from it1 where fac='"+facu[3]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum4=sum4+rs.getInt("p4");
}
avg4=sum4/300;
sum5=0;
ps=con.prepareStatement("select p5 from it1 where fac='"+facu[3]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum5=sum5+rs.getInt("p5");
}
avg5=sum5/300;
sum6=0;
ps=con.prepareStatement("select p6 from it1 where fac='"+facu[3]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum6=sum6+rs.getInt("p6");
}
avg6=sum6/300;
sum7=0;
ps=con.prepareStatement("select p7 from it1 where fac='"+facu[3]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum7=sum7+rs.getInt("p7");
}
avg7=sum7/300;
sum8=0;
ps=con.prepareStatement("select p8 from it1 where fac='"+facu[3]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum8=sum8+rs.getInt("p8");
}
avg8=sum8/300;
sum9=0;
ps=con.prepareStatement("select p9 from it1 where fac='"+facu[3]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum9=sum9+rs.getInt("p9");
}
avg9=sum9/300;
ps.executeUpdate("insert into rei values('"+facu[3]+"',"+avg1+","+avg2+","+avg3+","+avg4+","+avg5+","+avg6+","+avg7+","+avg8+","+avg9+","+avg+")");


 ps=con.prepareStatement("select fac,p1+p2+p3+p4+p5+p6+p7+p8+p9 as sum from it1 where fac='"+facu[4]+"'");
 rs=ps.executeQuery();
                  while(rs.next())
                      {
sum=sum+rs.getInt("sum");
}
avg=sum/27;
sum=0;
%>

<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=rs.getString("fac")%> 
</td>
<td width="180" height="80" ><%=rs.getInt("average")%> 
</td>
</tr>
<%
sum1=0;
ps=con.prepareStatement("select p1 from it1 where fac='"+facu[4]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum1=sum1+rs.getInt("p1");
}
avg1=sum1/300;
sum2=0;
ps=con.prepareStatement("select p2 from it1 where fac='"+facu[4]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum2=sum2+rs.getInt("p2");
}
avg2=sum2/300;
sum3=0;
ps=con.prepareStatement("select p3 from it1 where fac='"+facu[4]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum3=sum3+rs.getInt("p3");
}
avg3=sum3/300;
sum4=0;
ps=con.prepareStatement("select p4 from it1 where fac='"+facu[4]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum4=sum4+rs.getInt("p4");
}
avg4=sum4/300;
sum5=0;
ps=con.prepareStatement("select p5 from it1 where fac='"+facu[4]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum5=sum5+rs.getInt("p5");
}
avg5=sum5/300;
sum6=0;
ps=con.prepareStatement("select p6 from it1 where fac='"+facu[4]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum6=sum6+rs.getInt("p6");
}
avg6=sum6/300;
sum7=0;
ps=con.prepareStatement("select p7 from it1 where fac='"+facu[4]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum7=sum7+rs.getInt("p7");
}
avg7=sum7/300;
sum8=0;
ps=con.prepareStatement("select p8 from it1 where fac='"+facu[4]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum8=sum8+rs.getInt("p8");
}
avg8=sum8/300;
sum9=0;
ps=con.prepareStatement("select p9 from it1 where fac='"+facu[4]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum9=sum9+rs.getInt("p9");
}
avg9=sum9/300;
ps.executeUpdate("insert into rei values('"+facu[4]+"',"+avg1+","+avg2+","+avg3+","+avg4+","+avg5+","+avg6+","+avg7+","+avg8+","+avg9+","+avg+")");



 ps=con.prepareStatement("select fac,p1+p2+p3+p4+p5+p6+p7+p8+p9 as sum from it1 where fac='"+facu[5]+"'");
 rs=ps.executeQuery();
                  while(rs.next())
                      {
sum=sum+rs.getInt("sum");
}
avg=sum/27;
sum=0;
%>

<tr bgcolor=#A9E2F3>
<td width="180" height="80" ><%=rs.getString("fac")%> 
</td>
<td width="180" height="80" ><%=rs.getInt("average")%> 
</td>
</tr>
</table>
<br>
<br>
<center><input type="button" 
  onClick="window.print()" 
  value="Print This Page"/>&nbsp&nbsp<input type="button" value="logout" onclick="window.location = 'home.html';"/></center>
<%
sum1=0;
ps=con.prepareStatement("select p1 from it1 where fac='"+facu[5]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum1=sum1+rs.getInt("p1");
}
avg1=sum1/300;
sum2=0;
ps=con.prepareStatement("select p2 from it1 where fac='"+facu[5]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum2=sum2+rs.getInt("p2");
}
avg2=sum2/300;
sum3=0;
ps=con.prepareStatement("select p3 from it1 where fac='"+facu[5]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum3=sum3+rs.getInt("p3");
}
avg3=sum3/300;
sum4=0;
ps=con.prepareStatement("select p4 from it1 where fac='"+facu[5]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum4=sum4+rs.getInt("p4");
}
avg4=sum4/300;
sum5=0;
ps=con.prepareStatement("select p5 from it1 where fac='"+facu[5]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum5=sum5+rs.getInt("p5");
}
avg5=sum5/300;
sum6=0;
ps=con.prepareStatement("select p6 from it1 where fac='"+facu[5]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum6=sum6+rs.getInt("p6");
}
avg6=sum6/300;
sum7=0;
ps=con.prepareStatement("select p7 from it1 where fac='"+facu[5]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum7=sum7+rs.getInt("p7");
}
avg7=sum7/300;
sum8=0;
ps=con.prepareStatement("select p8 from it1 where fac='"+facu[5]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum8=sum8+rs.getInt("p8");
}
avg8=sum8/300;
sum9=0;
ps=con.prepareStatement("select p9 from it1 where fac='"+facu[5]+"'");
rs=ps.executeQuery();
                  while(rs.next())
                      {
 sum9=sum9+rs.getInt("p9");
}
avg9=sum9/300;
ps.executeUpdate("insert into rei values('"+facu[5]+"',"+avg1+","+avg2+","+avg3+","+avg4+","+avg5+","+avg6+","+avg7+","+avg8+","+avg9+","+avg+")");
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