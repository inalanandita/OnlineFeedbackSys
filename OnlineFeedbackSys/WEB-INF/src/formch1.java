import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;


public class formch1 extends HttpServlet 
  {
      Connection con;
      PreparedStatement ps;
  public void init(ServletConfig config)throws ServletException
    { 
      try 
       { 
       super.init(config);
                        Class.forName("oracle.jdbc.driver.OracleDriver");
                        con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nandita");

 
                } 
                  catch (ClassNotFoundException e)
                      {
                        System.out.println(e);
                   } 
                  catch (SQLException e) 
                         {
                        System.out.println(e);
                      }
                           }
     
      
    
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
              {
                        response.setContentType("text/html");
            PrintWriter pw=response.getWriter();
String yer="";
String brch="";
String roll="";
         Cookie[] c=request.getCookies();
Cookie[] c1=request.getCookies();
Cookie[] c2=request.getCookies();
int n=c.length;
int n1=c1.length;
int n2=c2.length;
for(int i=0;i<n;i++)
{
String name1=c[i].getName();
String yer1=c[i].getValue();
yer=yer1;
}
for(int i=0;i<n1;i++)
{
String name2=c1[i].getName();
String brch1=c1[i].getValue();
brch=brch1;
}
for(int i=0;i<n2;i++)
{
String name1=c2[i].getName();
String roll1=c2[i].getValue();
roll=roll1;
}
try
{

      ResultSet r=ps.executeQuery("select * from "+roll+";");
         if(r.next())
         {

pw.println("<center>"+"<h1>"+" YOU already entered this feedform "+"</h1>"+"</center>");
}
else
{

            ps.executeUpdate("CREATE TABLE"+ roll +"(fac INT,1 VARCHAR2(20),2 VARCHAR2(20),3 VARCHAR2(20),4 VARCHAR2(20),5 VARCHAR2(20),6 VARCHAR2(20),7 VARCHAR2(20),8 VARCHAR2(20),9 VARCHAR2(20),yr VARCHAR2(20),Branch VARCHAR2(20))");
            String f1p1=request.getParameter("f1p1");
            String f1p2=request.getParameter("f1p2");
            String f1p3=request.getParameter("f1p3");
            String f1p4=request.getParameter("f1p4");
             String f1p5=request.getParameter("f1p5");
            String f1p6=request.getParameter("f1p6");
            String f1p7=request.getParameter("f1p7");
            String f1p8=request.getParameter("f1p8");
           String f1p9=request.getParameter("f1p9"); 
          ps.executeUpdate("insert into "+roll+" values (1,'"+f1p1+"','"+f1p2+"','"+f1p3+"','"+f1p4+"','"+f1p5+"','"+f1p6+"','"+f1p7+"','"+f1p8+"','"+f1p9+"','"+yer+"','"+brch+"')");
            String f2p1=request.getParameter("f2p1");
            String f2p2=request.getParameter("f2p2");
            String f2p3=request.getParameter("f2p3");
            String f2p4=request.getParameter("f2p4");
             String f2p5=request.getParameter("f2p5");
            String f2p6=request.getParameter("f2p6");
            String f2p7=request.getParameter("f2p7");
            String f2p8=request.getParameter("f2p8");
           String f2p9=request.getParameter("f2p9"); 
          ps.executeUpdate("insert into "+roll+" values (2,'"+f2p1+"','"+f2p2+"','"+f2p3+"','"+f2p4+"','"+f2p5+"','"+f2p6+"','"+f2p7+"','"+f2p8+"','"+f2p9+"','"+yer+"','"+brch+")");
         String f3p1=request.getParameter("f3p1");
            String f3p2=request.getParameter("f3p2");
            String f3p3=request.getParameter("f3p3");
            String f3p4=request.getParameter("f3p4");
             String f3p5=request.getParameter("f3p5");
            String f3p6=request.getParameter("f3p6");
            String f3p7=request.getParameter("f3p7");
            String f3p8=request.getParameter("f3p8");
           String  f3p9=request.getParameter("f3p9"); 
         ps.executeUpdate("insert into "+roll+" values (3,'"+f3p1+"','"+f3p2+"','"+f3p3+"','"+f3p4+"','"+f3p5+"','"+f3p6+"','"+f3p7+"','"+f3p8+"','"+f3p9+"','"+yer+"','"+brch+")");
         String f4p1=request.getParameter("f4p1");
            String f4p2=request.getParameter("f4p2");
            String f4p3=request.getParameter("f4p3");
            String f4p4=request.getParameter("f4p4");
             String f4p5=request.getParameter("f4p5");
            String f4p6=request.getParameter("f4p6");
            String f4p7=request.getParameter("f4p7");
            String f4p8=request.getParameter("f4p8");
           String f4p9=request.getParameter("f4p9"); 
         ps.executeUpdate("insert into "+roll+" values (4,'"+f4p1+"','"+f4p2+"','"+f4p3+"','"+f4p4+"','"+f4p5+"','"+f4p6+"','"+f4p7+"','"+f4p8+"','"+f4p9+"','"+yer+"','"+brch+")");
         String f5p1=request.getParameter("f5p1");
            String f5p2=request.getParameter("f5p2");
            String f5p3=request.getParameter("f5p3");
            String f5p4=request.getParameter("f5p4");
             String f5p5=request.getParameter("f5p5");
            String f5p6=request.getParameter("f5p6");
            String f5p7=request.getParameter("f5p7");
            String f5p8=request.getParameter("f5p8");
           String f5p9=request.getParameter("f5p9"); 
          ps.executeUpdate("insert into "+roll+" values (5,'"+f5p1+"','"+f5p2+"','"+f5p3+"','"+f5p4+"','"+f5p5+"','"+f5p6+"','"+f5p7+"','"+f5p8+"','"+f5p9+"','"+yer+"','"+brch+")");
         String f6p1=request.getParameter("f6p1");
            String f6p2=request.getParameter("f6p2");
            String f6p3=request.getParameter("f6p3");
            String f6p4=request.getParameter("f6p4");
             String f6p5=request.getParameter("f6p5");
            String f6p6=request.getParameter("f6p6");
            String f6p7=request.getParameter("f6p7");
            String f6p8=request.getParameter("f6p8");
           String f6p9=request.getParameter("f6p9"); 
         ps.executeUpdate("insert into "+roll+" values (6,'"+f6p1+"','"+f6p2+"','"+f6p3+"','"+f6p4+"','"+f6p5+"','"+f6p6+"','"+f6p7+"','"+f6p8+"','"+f6p9+"','"+yer+"','"+brch+")");
         pw.println("<html>");
         pw.println("<head>");
         pw.println("</head>");
      pw.println("<body>");
      pw.println("<h1>"+"thank you for ur feedback"+"</h1>");
         pw.println("</body>");
          pw.println("</html>");
         ps.close();
        con.close();
         
}

}
 catch (SQLException e) 
                  {
                  e.printStackTrace();
                  }
 
}

  
             
           
   }            
               
               
               
