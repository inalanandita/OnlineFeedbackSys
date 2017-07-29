<%@page import="java.io.IOException"%>
<%@ page language="java" contentType="text/html" %>
<%@ page import= "java.sql.*"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.lang.String"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Date "%>

<head>
<title>feedback form</title>
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
<br/><br/><br/><br/><br/><br/>
<%

      Connection con=null;
      
PreparedStatement ps;
ResultSet rs;
      

         String n1="MY";
String n2="MY1";
String n3="MY2";
Cookie[] cookie=request.getCookies();
Cookie p=null;
Cookie q=null;
Cookie r=null;
if(cookie!=null)
{
for(int i=0;i<cookie.length;i++)
{
if(cookie[i].getName().equals(n1))
{
 p=cookie[i];
cookie[i].setMaxAge(0);
}
else if(cookie[i].getName().equals(n2))
{
 q=cookie[i];
cookie[i].setMaxAge(0);

}
 else if(cookie[i].getName().equals(n3))
{
 r=cookie[i];
cookie[i].setMaxAge(0);

}
}
}
String year=p.getValue();
String branch=q.getValue();
String rollnumber=r.getValue();
%>

<%


             try
            {
		//Class.forName("oracle.jdbc.driver.OracleDriver");
                // con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","vnrvjiet"); 
Class.forName("com.mysql.jdbc.Driver");




//Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/credit_card", "intern" , "intern");
 con = DriverManager.getConnection("jdbc:mysql://localhost/system?user=root&password=intern");
  if(year.equals("4") && branch.equals("it"))
        {

 ps=con.prepareStatement("select * from it4 where rollnumber=?");
ps.setString(1,rollnumber);
 rs=ps.executeQuery();
                  if(rs.next())
                      {
                        %>
<center><h1>YOU already entered this feedform </h1></center>
<%                                           
                        
                      }
                  else
                   {
            String f1p1=request.getParameter("f1p1");
            String f1p2=request.getParameter("f1p2");
            String f1p3=request.getParameter("f1p3");
            String f1p4=request.getParameter("f1p4");
             String f1p5=request.getParameter("f1p5");
            String f1p6=request.getParameter("f1p6");
            String f1p7=request.getParameter("f1p7");
            String f1p8=request.getParameter("f1p8");
           String f1p9=request.getParameter("f1p9"); 
          ps.executeUpdate("insert into it4 values ('"+rollnumber+"','1',"+f1p1+","+f1p2+","+f1p3+","+f1p4+","+f1p5+","+f1p6+","+f1p7+","+f1p8+","+f1p9+")");
            String f2p1=request.getParameter("f2p1");
            String f2p2=request.getParameter("f2p2");
            String f2p3=request.getParameter("f2p3");
            String f2p4=request.getParameter("f2p4");
             String f2p5=request.getParameter("f2p5");
            String f2p6=request.getParameter("f2p6");
            String f2p7=request.getParameter("f2p7");
            String f2p8=request.getParameter("f2p8");
           String f2p9=request.getParameter("f2p9"); 
          ps.executeUpdate("insert into it4 values ('"+rollnumber+"','2',"+f2p1+","+f2p2+","+f2p3+","+f2p4+","+f2p5+","+f2p6+","+f2p7+","+f2p8+","+f2p9+")");
         String f3p1=request.getParameter("f3p1");
            String f3p2=request.getParameter("f3p2");
            String f3p3=request.getParameter("f3p3");
            String f3p4=request.getParameter("f3p4");
             String f3p5=request.getParameter("f3p5");
            String f3p6=request.getParameter("f3p6");
            String f3p7=request.getParameter("f3p7");
            String f3p8=request.getParameter("f3p8");
           String  f3p9=request.getParameter("f3p9"); 
         ps.executeUpdate("insert into it4 values ('"+rollnumber+"','3',"+f3p1+","+f3p2+","+f3p3+","+f3p4+","+f3p5+","+f3p6+","+f3p7+","+f3p8+","+f3p9+")");
         String f4p1=request.getParameter("f4p1");
            String f4p2=request.getParameter("f4p2");
            String f4p3=request.getParameter("f4p3");
            String f4p4=request.getParameter("f4p4");
             String f4p5=request.getParameter("f4p5");
            String f4p6=request.getParameter("f4p6");
            String f4p7=request.getParameter("f4p7");
            String f4p8=request.getParameter("f4p8");
           String f4p9=request.getParameter("f4p9"); 
         ps.executeUpdate("insert into it4 values ('"+rollnumber+"','4',"+f4p1+","+f4p2+","+f4p3+","+f4p4+","+f4p5+","+f4p6+","+f4p7+","+f4p8+","+f4p9+")");
         String f5p1=request.getParameter("f5p1");
            String f5p2=request.getParameter("f5p2");
            String f5p3=request.getParameter("f5p3");
            String f5p4=request.getParameter("f5p4");
             String f5p5=request.getParameter("f5p5");
            String f5p6=request.getParameter("f5p6");
            String f5p7=request.getParameter("f5p7");
            String f5p8=request.getParameter("f5p8");
           String f5p9=request.getParameter("f5p9"); 
          ps.executeUpdate("insert into it4 values ('"+rollnumber+"','5',"+f5p1+","+f5p2+","+f5p3+","+f5p4+","+f5p5+","+f5p6+","+f5p7+","+f5p8+","+f5p9+")");
         String f6p1=request.getParameter("f6p1");
            String f6p2=request.getParameter("f6p2");
            String f6p3=request.getParameter("f6p3");
            String f6p4=request.getParameter("f6p4");
             String f6p5=request.getParameter("f6p5");
            String f6p6=request.getParameter("f6p6");
            String f6p7=request.getParameter("f6p7");
            String f6p8=request.getParameter("f6p8");
           String f6p9=request.getParameter("f6p9"); 
         ps.executeUpdate("insert into it4 values ('"+rollnumber+"','6',"+f6p1+","+f6p2+","+f6p3+","+f6p4+","+f6p5+","+f6p6+","+f6p7+","+f6p8+","+f6p9+")");
%>

    
    <body>
     <h1>thank you for ur feedback</h1>
        <input type="button" value="logout" onclick="window.location = 'home.html';"/>
         </body>
         </html>
<%
 
         ps.close();
        con.close();
         
}
}
else
{
if(year.equals("3") && branch.equals("it"))
        {

 ps=con.prepareStatement("select * from it3 where rollnumber=?");
ps.setString(1,rollnumber);
 rs=ps.executeQuery();
                  if(rs.next())
                      {
                        %>
<center><h1>YOU already entered this feedform </h1></center>
<%                                           
                        
                      }
                  else
                   {
            String f1p1=request.getParameter("f1p1");
            String f1p2=request.getParameter("f1p2");
            String f1p3=request.getParameter("f1p3");
            String f1p4=request.getParameter("f1p4");
             String f1p5=request.getParameter("f1p5");
            String f1p6=request.getParameter("f1p6");
            String f1p7=request.getParameter("f1p7");
            String f1p8=request.getParameter("f1p8");
           String f1p9=request.getParameter("f1p9"); 
          ps.executeUpdate("insert into it3 values ('"+rollnumber+"','1',"+f1p1+","+f1p2+","+f1p3+","+f1p4+","+f1p5+","+f1p6+","+f1p7+","+f1p8+","+f1p9+")");
            String f2p1=request.getParameter("f2p1");
            String f2p2=request.getParameter("f2p2");
            String f2p3=request.getParameter("f2p3");
            String f2p4=request.getParameter("f2p4");
             String f2p5=request.getParameter("f2p5");
            String f2p6=request.getParameter("f2p6");
            String f2p7=request.getParameter("f2p7");
            String f2p8=request.getParameter("f2p8");
           String f2p9=request.getParameter("f2p9"); 
          ps.executeUpdate("insert into it3 values ('"+rollnumber+"','2',"+f2p1+","+f2p2+","+f2p3+","+f2p4+","+f2p5+","+f2p6+","+f2p7+","+f2p8+","+f2p9+")");
         String f3p1=request.getParameter("f3p1");
            String f3p2=request.getParameter("f3p2");
            String f3p3=request.getParameter("f3p3");
            String f3p4=request.getParameter("f3p4");
             String f3p5=request.getParameter("f3p5");
            String f3p6=request.getParameter("f3p6");
            String f3p7=request.getParameter("f3p7");
            String f3p8=request.getParameter("f3p8");
           String  f3p9=request.getParameter("f3p9"); 
         ps.executeUpdate("insert into it3 values ('"+rollnumber+"','3',"+f3p1+","+f3p2+","+f3p3+","+f3p4+","+f3p5+","+f3p6+","+f3p7+","+f3p8+","+f3p9+")");
         String f4p1=request.getParameter("f4p1");
            String f4p2=request.getParameter("f4p2");
            String f4p3=request.getParameter("f4p3");
            String f4p4=request.getParameter("f4p4");
             String f4p5=request.getParameter("f4p5");
            String f4p6=request.getParameter("f4p6");
            String f4p7=request.getParameter("f4p7");
            String f4p8=request.getParameter("f4p8");
           String f4p9=request.getParameter("f4p9"); 
         ps.executeUpdate("insert into it3 values ('"+rollnumber+"','4',"+f4p1+","+f4p2+","+f4p3+","+f4p4+","+f4p5+","+f4p6+","+f4p7+","+f4p8+","+f4p9+")");
         String f5p1=request.getParameter("f5p1");
            String f5p2=request.getParameter("f5p2");
            String f5p3=request.getParameter("f5p3");
            String f5p4=request.getParameter("f5p4");
             String f5p5=request.getParameter("f5p5");
            String f5p6=request.getParameter("f5p6");
            String f5p7=request.getParameter("f5p7");
            String f5p8=request.getParameter("f5p8");
           String f5p9=request.getParameter("f5p9"); 
         ps.executeUpdate("insert into it3 values ('"+rollnumber+"','5',"+f5p1+","+f5p2+","+f5p3+","+f5p4+","+f5p5+","+f5p6+","+f5p7+","+f5p8+","+f5p9+")");
         String f6p1=request.getParameter("f6p1");
            String f6p2=request.getParameter("f6p2");
            String f6p3=request.getParameter("f6p3");
            String f6p4=request.getParameter("f6p4");
             String f6p5=request.getParameter("f6p5");
            String f6p6=request.getParameter("f6p6");
            String f6p7=request.getParameter("f6p7");
            String f6p8=request.getParameter("f6p8");
           String f6p9=request.getParameter("f6p9"); 
         ps.executeUpdate("insert into it3 values ('"+rollnumber+"','6',"+f6p1+","+f6p2+","+f6p3+","+f6p4+","+f6p5+","+f6p6+","+f6p7+","+f6p8+","+f6p9+")");
%>

        
    <body>
     <h1>thank you for ur feedback</h1>
 <input type="button" value="logout" onclick="window.location = 'home.html';"/>
         </body>
         </html>
<%

         ps.close();
        con.close();
         
}
}

else
{
if(year.equals("2") && branch.equals("it"))
        {

 ps=con.prepareStatement("select * from it2 where rollnumber=?");
ps.setString(1,rollnumber);
 rs=ps.executeQuery();
                  if(rs.next())
                      {
                        %>
<center><h1>YOU already entered this feedform </h1></center>
<%                                           
                        
                      }
                  else
                   {
            String f1p1=request.getParameter("f1p1");
            String f1p2=request.getParameter("f1p2");
            String f1p3=request.getParameter("f1p3");
            String f1p4=request.getParameter("f1p4");
             String f1p5=request.getParameter("f1p5");
            String f1p6=request.getParameter("f1p6");
            String f1p7=request.getParameter("f1p7");
            String f1p8=request.getParameter("f1p8");
           String f1p9=request.getParameter("f1p9"); 
          ps.executeUpdate("insert into it2 values ('"+rollnumber+"','1',"+f1p1+","+f1p2+","+f1p3+","+f1p4+","+f1p5+","+f1p6+","+f1p7+","+f1p8+","+f1p9+")");
            String f2p1=request.getParameter("f2p1");
            String f2p2=request.getParameter("f2p2");
            String f2p3=request.getParameter("f2p3");
            String f2p4=request.getParameter("f2p4");
             String f2p5=request.getParameter("f2p5");
            String f2p6=request.getParameter("f2p6");
            String f2p7=request.getParameter("f2p7");
            String f2p8=request.getParameter("f2p8");
           String f2p9=request.getParameter("f2p9"); 
          ps.executeUpdate("insert into it2 values ('"+rollnumber+"','2',"+f2p1+","+f2p2+","+f2p3+","+f2p4+","+f2p5+","+f2p6+","+f2p7+","+f2p8+","+f2p9+")");
         String f3p1=request.getParameter("f3p1");
            String f3p2=request.getParameter("f3p2");
            String f3p3=request.getParameter("f3p3");
            String f3p4=request.getParameter("f3p4");
             String f3p5=request.getParameter("f3p5");
            String f3p6=request.getParameter("f3p6");
            String f3p7=request.getParameter("f3p7");
            String f3p8=request.getParameter("f3p8");
           String  f3p9=request.getParameter("f3p9"); 
         ps.executeUpdate("insert into it2 values ('"+rollnumber+"','3',"+f3p1+","+f3p2+","+f3p3+","+f3p4+","+f3p5+","+f3p6+","+f3p7+","+f3p8+","+f3p9+")");
         String f4p1=request.getParameter("f4p1");
            String f4p2=request.getParameter("f4p2");
            String f4p3=request.getParameter("f4p3");
            String f4p4=request.getParameter("f4p4");
             String f4p5=request.getParameter("f4p5");
            String f4p6=request.getParameter("f4p6");
            String f4p7=request.getParameter("f4p7");
            String f4p8=request.getParameter("f4p8");
           String f4p9=request.getParameter("f4p9"); 
         ps.executeUpdate("insert into it2 values ('"+rollnumber+"','4',"+f4p1+","+f4p2+","+f4p3+","+f4p4+","+f4p5+","+f4p6+","+f4p7+","+f4p8+","+f4p9+")");
         String f5p1=request.getParameter("f5p1");
            String f5p2=request.getParameter("f5p2");
            String f5p3=request.getParameter("f5p3");
            String f5p4=request.getParameter("f5p4");
             String f5p5=request.getParameter("f5p5");
            String f5p6=request.getParameter("f5p6");
            String f5p7=request.getParameter("f5p7");
            String f5p8=request.getParameter("f5p8");
           String f5p9=request.getParameter("f5p9"); 
          ps.executeUpdate("insert into it2 values ('"+rollnumber+"','5',"+f5p1+","+f5p2+","+f5p3+","+f5p4+","+f5p5+","+f5p6+","+f5p7+","+f5p8+","+f5p9+")");
         String f6p1=request.getParameter("f6p1");
            String f6p2=request.getParameter("f6p2");
            String f6p3=request.getParameter("f6p3");
            String f6p4=request.getParameter("f6p4");
             String f6p5=request.getParameter("f6p5");
            String f6p6=request.getParameter("f6p6");
            String f6p7=request.getParameter("f6p7");
            String f6p8=request.getParameter("f6p8");
           String f6p9=request.getParameter("f6p9"); 
         ps.executeUpdate("insert into it2 values ('"+rollnumber+"','6',"+f6p1+","+f6p2+","+f6p3+","+f6p4+","+f6p5+","+f6p6+","+f6p7+","+f6p8+","+f6p9+")");
%>

        
    <body>
     <h1>thank you for ur feedback</h1>
 <input type="button" value="logout" onclick="window.location = 'home.html';"/>
         </body>
         </html>
<%

         ps.close();
        con.close();
         
}
}

else
{
if(year.equals("1") && branch.equals("it"))
        {

 ps=con.prepareStatement("select * from it1 where rollnumber=?");
ps.setString(1,rollnumber);
 rs=ps.executeQuery();
                  if(rs.next())
                      {
                        %>
<center><h1>YOU already entered this feedform </h1></center>
<%                                           
                        
                      }
                  else
                   {
            String f1p1=request.getParameter("f1p1");
            String f1p2=request.getParameter("f1p2");
            String f1p3=request.getParameter("f1p3");
            String f1p4=request.getParameter("f1p4");
             String f1p5=request.getParameter("f1p5");
            String f1p6=request.getParameter("f1p6");
            String f1p7=request.getParameter("f1p7");
            String f1p8=request.getParameter("f1p8");
           String f1p9=request.getParameter("f1p9"); 
          ps.executeUpdate("insert into it1 values ('"+rollnumber+"','1',"+f1p1+","+f1p2+","+f1p3+","+f1p4+","+f1p5+","+f1p6+","+f1p7+","+f1p8+","+f1p9+")");
            String f2p1=request.getParameter("f2p1");
            String f2p2=request.getParameter("f2p2");
            String f2p3=request.getParameter("f2p3");
            String f2p4=request.getParameter("f2p4");
             String f2p5=request.getParameter("f2p5");
            String f2p6=request.getParameter("f2p6");
            String f2p7=request.getParameter("f2p7");
            String f2p8=request.getParameter("f2p8");
           String f2p9=request.getParameter("f2p9"); 
          ps.executeUpdate("insert into it1 values ('"+rollnumber+"','2',"+f2p1+","+f2p2+","+f2p3+","+f2p4+","+f2p5+","+f2p6+","+f2p7+","+f2p8+","+f2p9+")");
         String f3p1=request.getParameter("f3p1");
            String f3p2=request.getParameter("f3p2");
            String f3p3=request.getParameter("f3p3");
            String f3p4=request.getParameter("f3p4");
             String f3p5=request.getParameter("f3p5");
            String f3p6=request.getParameter("f3p6");
            String f3p7=request.getParameter("f3p7");
            String f3p8=request.getParameter("f3p8");
           String  f3p9=request.getParameter("f3p9"); 
         ps.executeUpdate("insert into it1 values ('"+rollnumber+"','3',"+f3p1+","+f3p2+","+f3p3+","+f3p4+","+f3p5+","+f3p6+","+f3p7+","+f3p8+","+f3p9+")");
         String f4p1=request.getParameter("f4p1");
            String f4p2=request.getParameter("f4p2");
            String f4p3=request.getParameter("f4p3");
            String f4p4=request.getParameter("f4p4");
             String f4p5=request.getParameter("f4p5");
            String f4p6=request.getParameter("f4p6");
            String f4p7=request.getParameter("f4p7");
            String f4p8=request.getParameter("f4p8");
           String f4p9=request.getParameter("f4p9"); 
         ps.executeUpdate("insert into it1 values ('"+rollnumber+"','4',"+f4p1+","+f4p2+","+f4p3+","+f4p4+","+f4p5+","+f4p6+","+f4p7+","+f4p8+","+f4p9+")");
         String f5p1=request.getParameter("f5p1");
            String f5p2=request.getParameter("f5p2");
            String f5p3=request.getParameter("f5p3");
            String f5p4=request.getParameter("f5p4");
             String f5p5=request.getParameter("f5p5");
            String f5p6=request.getParameter("f5p6");
            String f5p7=request.getParameter("f5p7");
            String f5p8=request.getParameter("f5p8");
           String f5p9=request.getParameter("f5p9"); 
          ps.executeUpdate("insert into it1 values ('"+rollnumber+"','5',"+f5p1+","+f5p2+","+f5p3+","+f5p4+","+f5p5+","+f5p6+","+f5p7+","+f5p8+","+f5p9+")");
         String f6p1=request.getParameter("f6p1");
            String f6p2=request.getParameter("f6p2");
            String f6p3=request.getParameter("f6p3");
            String f6p4=request.getParameter("f6p4");
             String f6p5=request.getParameter("f6p5");
            String f6p6=request.getParameter("f6p6");
            String f6p7=request.getParameter("f6p7");
            String f6p8=request.getParameter("f6p8");
           String f6p9=request.getParameter("f6p9"); 
         ps.executeUpdate("insert into it1 values ('"+rollnumber+"','6',"+f6p1+","+f6p2+","+f6p3+","+f6p4+","+f6p5+","+f6p6+","+f6p7+","+f6p8+","+f6p9+")");
%>

        
    <body>
     <h1>thank you for ur feedback</h1>
 <input type="button" value="logout" onclick="window.location = 'home.html';"/>
         </body>
         </html>
<%

         ps.close();
        con.close();
         
}
}


}}}





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