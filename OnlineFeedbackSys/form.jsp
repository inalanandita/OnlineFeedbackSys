<%@ page language="java" contentType="text/html" %>

  <%
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
}
else if(cookie[i].getName().equals(n2))
{
 q=cookie[i];

}
 else if(cookie[i].getName().equals(n3))
{
 r=cookie[i];

}
}
}
response.addCookie(p);
response.addCookie(q);
response.addCookie(r);
%>
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
<h1 align="center">feedback form</h1><br/>

<form method="post" action="http://localhost:8080/vnrvjiet new/1.jsp">
<table  align="center" bgcolor="#EFF5FB"   border="0px solid white" frame="void" rules="rows" cellpadding="7px">

<tr bgcolor=#EFF8FB>
<th  height="34"></td>
<th width="23"><b>1</b>
    </td>
<th width="23"><b>2</b>
    </td>
<th width="23"><b>3</b>
    </td>
<th width="23"><b>4</b>
    </td>
<th width="23"><b>5</b>
    </td>
<th width="23"><b>6</b>
    </td>
</tr>

<tr bgcolor=#A9E2F3>
<td width="180" height="80" >Teacher gives a good introduction to 
the subject and creates interest</td>
<td >
  <table >
       <tr>
         <td>E:<input type="radio" name="f1p1" value="5"></td>
         <td>G:<input type="radio" name="f1p1" value="4"></td>   
         <td>S:<input type="radio" name="f1p1" value="2"></td>
         <td>U:<input type="radio" name="f1p1" value="0"></td> 
        </tr>
   </table>
</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f2p1" value="5"></td>
         <td>G:<input type="radio" name="f2p1" value="4"></td>   
         <td>S:<input type="radio" name="f2p1" value="2"></td>
         <td>U:<input type="radio" name="f2p1" value="0"></td> 
        </tr>
   </table>
</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f3p1" value="5"></td>
         <td>G:<input type="radio" name="f3p1" value="4"></td>   
         <td>S:<input type="radio" name="f3p1" value="2"></td>
         <td>U:<input type="radio" name="f3p1" value="0"></td> 
        </tr>
   </table>
</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f4p1" value="5"></td>
         <td>G:<input type="radio" name="f4p1" value="4"></td>   
         <td>S:<input type="radio" name="f4p1" value="2"></td>
         <td>U:<input type="radio" name="f4p1" value="0"></td> 
        </tr>
   </table>
</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f5p1" value="5"></td>
         <td>G:<input type="radio" name="f5p1" value="4"></td>   
         <td>S:<input type="radio" name="f5p1" value="2"></td>
         <td>U:<input type="radio" name="f5p1" value="0"></td> 
        </tr>
   </table>
</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f6p1" value="5"></td>
         <td>G:<input type="radio" name="f6p1" value="4"></td>   
         <td>S:<input type="radio" name="f6p1" value="2"></td>
         <td>U:<input type="radio" name="f6p1" value="0"></td> 
        </tr>
   </table>
</td>
</tr>
<tr bgcolor=#EFF8FB>
<td width="180" height="80" >Teachers Planning & Delivery of subject is good</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f1p2" value="5"></td>
         <td>G:<input type="radio" name="f1p2" value="4"></td>   
         <td>S:<input type="radio" name="f1p2" value="2"></td>
         <td>U:<input type="radio" name="f1p2" value="0"></td> 
        </tr>
   </table>
</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f2p2" value="5"></td>
         <td>G:<input type="radio" name="f2p2" value="4"></td>   
         <td>S:<input type="radio" name="f2p2" value="2"></td>
         <td>U:<input type="radio" name="f2p2" value="0"></td> 
        </tr>
   </table>
</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f3p2" value="5"></td>
         <td>G:<input type="radio" name="f3p2" value="4"></td>   
         <td>S:<input type="radio" name="f3p2" value="2"></td>
         <td>U:<input type="radio" name="f3p2" value="0"></td> 
        </tr>
   </table>
</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f4p2" value="5"></td>
         <td>G:<input type="radio" name="f4p2" value="4"></td>   
         <td>S:<input type="radio" name="f4p2" value="2"></td>
         <td>U:<input type="radio" name="f4p2" value="0"></td> 
        </tr>
   </table>
</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f5p2" value="5"></td>
         <td>G:<input type="radio" name="f5p2" value="4"></td>   
         <td>S:<input type="radio" name="f5p2" value="2"></td>
         <td>U:<input type="radio" name="f5p2" value="0"></td> 
        </tr>
   </table>
</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f6p2" value="5"></td>
         <td>G:<input type="radio" name="f6p2" value="4"></td>   
         <td>S:<input type="radio" name="f6p2" value="2"></td>
         <td>U:<input type="radio" name="f6p2" value="0"></td> 
        </tr>
   </table>
</td>
</tr>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" >Teacher is knowledgeable about subject</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f1p3" value="5"></td>
         <td>G:<input type="radio" name="f1p3" value="4"></td>   
         <td>S:<input type="radio" name="f1p3" value="2"></td>
         <td>U:<input type="radio" name="f1p3" value="0"></td> 
        </tr>
   </table>
</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f2p3" value="5"></td>
         <td>G:<input type="radio" name="f2p3" value="4"></td>   
         <td>S:<input type="radio" name="f2p3" value="2"></td>
         <td>U:<input type="radio" name="f2p3" value="0"></td> 
        </tr>
   </table>
</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f3p3" value="5"></td>
         <td>G:<input type="radio" name="f3p3" value="4"></td>   
         <td>S:<input type="radio" name="f3p3" value="2"></td>
         <td>U:<input type="radio" name="f3p3" value="0"></td> 
        </tr>
   </table>
</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f4p3" value="5"></td>
         <td>G:<input type="radio" name="f4p3" value="4"></td>   
         <td>S:<input type="radio" name="f4p3" value="2"></td>
         <td>U:<input type="radio" name="f4p3" value="0"></td> 
        </tr>
   </table>
</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f5p3" value="5"></td>
         <td>G:<input type="radio" name="f5p3" value="4"></td>   
         <td>S:<input type="radio" name="f5p3" value="2"></td>
         <td>U:<input type="radio" name="f5p3" value="0"></td> 
        </tr>
   </table>
</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f6p3" value="5"></td>
         <td>G:<input type="radio" name="f6p3" value="4"></td>   
         <td>S:<input type="radio" name="f6p3" value="2"></td>
         <td>U:<input type="radio" name="f6p3" value="0"></td> 
        </tr>
   </table>
</td>
</tr>
<tr bgcolor=#EFF8FB>
<td width="180" height="80" >Teacher speaks clearly and audibly</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f1p4" value="5"></td>
         <td>G:<input type="radio" name="f1p4" value="4"></td>   
         <td>S:<input type="radio" name="f1p4" value="2"></td>
         <td>U:<input type="radio" name="f1p4" value="0"></td> 
        </tr>
   </table>
</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f2p4" value="5"></td>
         <td>G:<input type="radio" name="f2p4" value="4"></td>   
         <td>S:<input type="radio" name="f2p4" value="2"></td>
         <td>U:<input type="radio" name="f2p4" value="0"></td> 
        </tr>
   </table>
</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f3p4" value="5"></td>
         <td>G:<input type="radio" name="f3p4" value="4"></td>   
         <td>S:<input type="radio" name="f3p4" value="2"></td>
         <td>U:<input type="radio" name="f3p4" value="0"></td> 
        </tr>
   </table>
</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f4p4" value="5"></td>
         <td>G:<input type="radio" name="f4p4" value="4"></td>   
         <td>S:<input type="radio" name="f4p4" value="2"></td>
         <td>U:<input type="radio" name="f4p4" value="0"></td> 
        </tr>
   </table>
</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f5p4" value="5"></td>
         <td>G:<input type="radio" name="f5p4" value="4"></td>   
         <td>S:<input type="radio" name="f5p4" value="2"></td>
         <td>U:<input type="radio" name="f5p4" value="0"></td> 
        </tr>
   </table>
</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f6p4" value="5"></td>
         <td>G:<input type="radio" name="f6p4" value="4"></td>   
         <td>S:<input type="radio" name="f6p4" value="2"></td>
         <td>U:<input type="radio" name="f6p4" value="0"></td> 
        </tr>
   </table>
</td>
</tr>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" >Teacher’s writing on the board is clear and visible</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f1p5" value="5"></td>
         <td>G:<input type="radio" name="f1p5" value="4"></td>   
         <td>S:<input type="radio" name="f1p5" value="2"></td>
         <td>U:<input type="radio" name="f1p5" value="0"></td> 
        </tr>
   </table>
</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f2p5" value="5"></td>
         <td>G:<input type="radio" name="f2p5" value="4"></td>   
         <td>S:<input type="radio" name="f2p5" value="2"></td>
         <td>U:<input type="radio" name="f2p5" value="0"></td> 
        </tr>
   </table>
</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f3p5" value="5"></td>
         <td>G:<input type="radio" name="f3p5" value="4"></td>   
         <td>S:<input type="radio" name="f3p5" value="2"></td>
         <td>U:<input type="radio" name="f3p5" value="0"></td> 
        </tr>
   </table>
</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f4p5" value="5"></td>
         <td>G:<input type="radio" name="f4p5" value="4"></td>   
         <td>S:<input type="radio" name="f4p5" value="2"></td>
         <td>U:<input type="radio" name="f4p5" value="0"></td> 
        </tr>
   </table>
</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f5p5" value="5"></td>
         <td>G:<input type="radio" name="f5p5" value="4"></td>   
         <td>S:<input type="radio" name="f5p5" value="2"></td>
         <td>U:<input type="radio" name="f5p5" value="0"></td> 
        </tr>
   </table>
</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f6p5" value="5"></td>
         <td>G:<input type="radio" name="f6p5" value="4"></td>   
         <td>S:<input type="radio" name="f6p5" value="2"></td>
         <td>U:<input type="radio" name="f6p5" value="0"></td> 
        </tr>
   </table>
</td>
</tr>
<tr bgcolor=#EFF8FB>
<td width="180" height="80" >Teacher asks relevant questions and encourages questions & 
Innovative ideas from the students</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f1p6" value="5"></td>
         <td>G:<input type="radio" name="f1p6" value="4"></td>   
         <td>S:<input type="radio" name="f1p6" value="2"></td>
         <td>U:<input type="radio" name="f1p6" value="0"></td> 
        </tr>
   </table>
</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f2p6" value="5"></td>
         <td>G:<input type="radio" name="f2p6" value="4"></td>   
         <td>S:<input type="radio" name="f2p6" value="2"></td>
         <td>U:<input type="radio" name="f2p6" value="0"></td> 
        </tr>
   </table>
</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f3p6" value="5"></td>
         <td>G:<input type="radio" name="f3p6" value="4"></td>   
         <td>S:<input type="radio" name="f3p6" value="2"></td>
         <td>U:<input type="radio" name="f3p6" value="0"></td> 
        </tr>
   </table>
</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f4p6" value="5"></td>
         <td>G:<input type="radio" name="f4p6" value="4"></td>   
         <td>S:<input type="radio" name="f4p6" value="2"></td>
         <td>U:<input type="radio" name="f4p6" value="0"></td> 
        </tr>
   </table>
</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f5p6" value="5"></td>
         <td>G:<input type="radio" name="f5p6" value="4"></td>   
         <td>S:<input type="radio" name="f5p6" value="2"></td>
         <td>U:<input type="radio" name="f5p6" value="0"></td> 
        </tr>
   </table>
</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f6p6" value="5"></td>
         <td>G:<input type="radio" name="f6p6" value="4"></td>   
         <td>S:<input type="radio" name="f6p6" value="2"></td>
         <td>U:<input type="radio" name="f6p6" value="0"></td> 
        </tr>
   </table>
</td>
</tr>
<tr bgcolor=#A9E2F3>
<td width="180" height="80">Teacher comes to class on time and leaves on time</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f1p7" value="5"></td>
         <td>G:<input type="radio" name="f1p7" value="4"></td>   
         <td>S:<input type="radio" name="f1p7" value="2"></td>
         <td>U:<input type="radio" name="f1p7" value="0"></td> 
        </tr>
   </table>
</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f2p7" value="5"></td>
         <td>G:<input type="radio" name="f2p7" value="4"></td>   
         <td>S:<input type="radio" name="f2p7" value="2"></td>
         <td>U:<input type="radio" name="f2p7" value="0"></td> 
        </tr>
   </table>
</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f3p7" value="5"></td>
         <td>G:<input type="radio" name="f3p7" value="4"></td>   
         <td>S:<input type="radio" name="f3p7" value="2"></td>
         <td>U:<input type="radio" name="f3p7" value="0"></td> 
        </tr>
   </table>
</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f4p7" value="5"></td>
         <td>G:<input type="radio" name="f4p7" value="4"></td>   
         <td>S:<input type="radio" name="f4p7" value="2"></td>
         <td>U:<input type="radio" name="f4p7" value="0"></td> 
        </tr>
   </table>
</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f5p7" value="5"></td>
         <td>G:<input type="radio" name="f5p7" value="4"></td>   
         <td>S:<input type="radio" name="f5p7" value="2"></td>
         <td>U:<input type="radio" name="f5p7" value="0"></td> 
        </tr>
   </table>
</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f6p7" value="5"></td>
         <td>G:<input type="radio" name="f6p7" value="4"></td>   
         <td>S:<input type="radio" name="f6p7" value="2"></td>
         <td>U:<input type="radio" name="f6p7" value="0"></td> 
        </tr>
   </table>
</td>
</tr>
<tr bgcolor=#EFF8FB>
<td width="180" height="80" >Teacher is regular and maintains discipline</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f1p8" value="5"></td>
         <td>G:<input type="radio" name="f1p8" value="4"></td>   
         <td>S:<input type="radio" name="f1p8" value="2"></td>
         <td>U:<input type="radio" name="f1p8" value="0"></td> 
        </tr>
   </table>
</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f2p8" value="5"></td>
         <td>G:<input type="radio" name="f2p8" value="4"></td>   
         <td>S:<input type="radio" name="f2p8" value="2"></td>
         <td>U:<input type="radio" name="f2p8" value="0"></td> 
        </tr>
   </table>
</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f3p8" value="5"></td>
         <td>G:<input type="radio" name="f3p8" value="4"></td>   
         <td>S:<input type="radio" name="f3p8" value="2"></td>
         <td>U:<input type="radio" name="f3p8" value="0"></td> 
        </tr>
   </table>
</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f4p8" value="5"></td>
         <td>G:<input type="radio" name="f4p8" value="4"></td>   
         <td>S:<input type="radio" name="f4p8" value="2"></td>
         <td>U:<input type="radio" name="f4p8" value="0"></td> 
        </tr>
   </table>
</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f5p8" value="5"></td>
         <td>G:<input type="radio" name="f5p8" value="4"></td>   
         <td>S:<input type="radio" name="f5p8" value="2"></td>
         <td>U:<input type="radio" name="f5p8" value="0"></td> 
        </tr>
   </table>
</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f6p8" value="5"></td>
         <td>G:<input type="radio" name="f6p8" value="4"></td>   
         <td>S:<input type="radio" name="f6p8" value="2"></td>
         <td>U:<input type="radio" name="f6p8" value="0"></td> 
        </tr>
   </table>
</td>
</tr>
<tr bgcolor=#A9E2F3>
<td width="180" height="80" >Teacher’s correction of answer scripts are fair and impartial</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f1p9" value="5"></td>
         <td>G:<input type="radio" name="f1p9" value="4"></td>   
         <td>S:<input type="radio" name="f1p9" value="2"></td>
         <td>U:<input type="radio" name="f1p9" value="0"></td> 
        </tr>
   </table>
</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f2p9" value="5"></td>
         <td>G:<input type="radio" name="f2p9" value="4"></td>   
         <td>S:<input type="radio" name="f2p9" value="2"></td>
         <td>U:<input type="radio" name="f2p9" value="0"></td> 
        </tr>
   </table>
</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f3p9" value="5"></td>
         <td>G:<input type="radio" name="f3p9" value="4"></td>   
         <td>S:<input type="radio" name="f3p9" value="2"></td>
         <td>U:<input type="radio" name="f3p9" value="0"></td> 
        </tr>
   </table>
</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f4p9" value="5"></td>
         <td>G:<input type="radio" name="f4p9" value="4"></td>   
         <td>S:<input type="radio" name="f4p9" value="2"></td>
         <td>U:<input type="radio" name="f4p9" value="0"></td> 
        </tr>
   </table>
</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f5p9" value="5"></td>
         <td>G:<input type="radio" name="f5p9" value="4"></td>   
         <td>S:<input type="radio" name="f5p9" value="2"></td>
         <td>U:<input type="radio" name="f5p9" value="0"></td> 
        </tr>
   </table>
</td>
<td >
  <table>
       <tr>
         <td>E:<input type="radio" name="f6p9" value="5"></td>
         <td>G:<input type="radio" name="f6p9" value="4"></td>   
         <td>S:<input type="radio" name="f6p9" value="2"></td>
         <td>U:<input type="radio" name="f6p9" value="0"></td> 
        </tr>
   </table>
</td>
</tr>
</table>
<br/>
<center><p>any suggestions:</p>
<textarea rows="5" cols="35"></textarea><br/><br/><br/>
<input type="submit" value="submit" ></center>
</form>
</body>
</html>   