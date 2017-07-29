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
<body>


<%
      Connection con;
      PreparedStatement ps;
      ResultSet rs;
    
      try 
       { 
      
                       // Class.forName("oracle.jdbc.driver.OracleDriver");
                      //  con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","nandita");
      Class.forName("com.mysql.jdbc.Driver");




//Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/credit_card", "intern" , "intern");
 con = DriverManager.getConnection("jdbc:mysql://localhost/system?user=root&password=intern");
                

System.out.println("Connected Successfully To Oracle");
            String year=request.getParameter("year");
            String branch=request.getParameter("branch");
            String rollnumber=request.getParameter("rollnumber");
            String password=request.getParameter("password"); 
	       Cookie c=new Cookie("MY",year);
c.setMaxAge(365 * 24 * 60 * 60);
		Cookie c1=new Cookie("MY1",branch);
c1.setMaxAge(365 * 24 * 60 * 60);
	Cookie c2=new Cookie("MY2",rollnumber);
c2.setMaxAge(365 * 24 * 60 * 60);
	
 response.addCookie(c);
response.addCookie(c1);
response.addCookie(c2);
%>
value:<%=year%>
<%		
            
                  
                  if(year.equals("4") && branch.equals("it"))
                  {
                  ps=con.prepareStatement("select * from ivit where rollnumber=? and password=?");
                  ps.setString(1,rollnumber);
                  ps.setString(2,password);
                  rs=ps.executeQuery();
                  if(rs.next())
                      {
                        %>


                     <p><a href="form.jsp">this 4th YEAR FEEEDBACK FORM</a><p>

<%                                           
                        
                      }
                  else
                   {

%>

<jsp:forward page="studlogin.html"/>
<%

                       
                        
                    }
                 }

               else 
                 {
                      if(year.equals("3") && branch.equals("it"))
                 {
                  ps=con.prepareStatement("select * from iiiit where ROLLNUMBER=? and PASSWORD=?");
                  ps.setString(1,rollnumber);
                  ps.setString(2,password);
                  rs=ps.executeQuery();
                  if(rs.next())
                  {         
      %>
    
  	<p><a href="form.jsp">this 3rd YEAR FEEEDBACK FORM</a><p>
<%		
                        
                  }
                  else
                  {
%>

              <jsp:forward page="studlogin.html"/>
<%          
                        
                 }
                }

                else
               {
                   if(year.equals("2") && branch.equals("it"))
                 {
                       
                  ps=con.prepareStatement("select * from iiit where rollnumber=? and password=?");
                  ps.setString(1,rollnumber);
                  ps.setString(2,password);
                  rs=ps.executeQuery();
                  if(rs.next())
                  {
%>

                     <p><a href="form.jsp">this 2th YEAR FEEEDBACK FORM</a><p>
<%    
  			
                        
                  }
                  else
                  {
%>

                         <jsp:forward page="studlogin.html"/>
<%
                        
                  }



            }

               else
                      {
                    if(year.equals("1") && branch.equals("it"))
                 {
                  ps=con.prepareStatement("select * from iit where rollnumber=? and password=?");
                  ps.setString(1,rollnumber);
                  ps.setString(2,password);
                  rs=ps.executeQuery();
                  if(rs.next())
                  {
%>
<p><a href="form.jsp">this 1st YEAR FEEEDBACK FORM</a><p>
<%    
  			
                        
                  }
                  else
                  {
%>

                        <jsp:forward page="studlogin.html"/>
<%
                        
                  }
                    }
                     }
                       }}
                          
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