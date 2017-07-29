<%@ page import= "java.io.IOException" %>

<%@ page  import= "java.sql.*" %>

<html>
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
<body>


<%
      Connection con;
      PreparedStatement ps;
      ResultSet rs;
    
      try 
       { 
      
                        //Class.forName("oracle.jdbc.driver.OracleDriver");
                       // con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vnrvjiet","vnrvjiet");
Class.forName("com.mysql.jdbc.Driver");




//Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/credit_card", "intern" , "intern");
 con = DriverManager.getConnection("jdbc:mysql://localhost/system?user=root&password=intern");           
 String facid=request.getParameter("facid"); 
            String pswd=request.getParameter("password"); 
	    
                  ps=con.prepareStatement("select * from faculty where facid=? and pswd=?");
                  ps.setString(1,facid);
                  ps.setString(2,pswd);
                  rs=ps.executeQuery();
                  if(rs.next())
                      {
                  %>  


                     <jsp:forward page="adform.html"/>     <%
                        }
                   else
                    {
                     
                %>      <jsp:forward page="facfrm.html"/>       <%
                      }
                          
          }



           
            catch (ClassNotFoundException e)
                      {
                        System.out.println(e);
                   } 
                  catch (SQLException e) 
                         {
                        System.out.println(e);
                      }
%>

              