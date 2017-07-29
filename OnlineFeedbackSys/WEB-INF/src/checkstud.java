import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.ServletConfig;

public class checkstud extends HttpServlet 
  {
      Connection con;
      PreparedStatement ps;
      ResultSet rs;
      public void init(ServletConfig config)throws ServletException
    { 
      try 
       { 
       super.init(config);
                        Class.forName("oracle.jdbc.driver.OracleDriver");
                        con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vnrvjiet","vnrvjiet");

 
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
            String year=request.getParameter("year");
            String branch=request.getParameter("branch");
            String rollnumber=request.getParameter("rollnumber");
            String password=request.getParameter("password"); 
	       Cookie c=new Cookie("MY",year);
	Cookie c1=new Cookie("MY1",branch);
		 Cookie c2=new Cookie("MY2",rollnumber);
 response.addCookie(c);
response.addCookie(c1);
response.addCookie(c2);
		
            
            try 
                {      
                  if(year.equals("4") && branch.equals("it"))
                  {
                  ps=con.prepareStatement("select * from ivit where rollnumber=? and password=?");
                  ps.setString(1,rollnumber);
                  ps.setString(2,password);
                  rs=ps.executeQuery();
                  if(rs.next())
                      {
                         RequestDispatcher rd=request.getRequestDispatcher("form.jsp");
                           rd.forward(request, response);       
  			
                                                                
                        
                      }
                  else
                   {
                        pw.println("invalid username/password Enter Correct username/password");
                        response.sendRedirect("http://localhost:9999/vnrvjiet/studlogin.html");
                        
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
                    RequestDispatcher rd=request.getRequestDispatcher("form.html");
                           rd.forward(request, response);    
  			
                        
                  }
                  else
                  {
                         pw.println("invalid username/password Enter Correct username/password");
                        response.sendRedirect("http://localhost:9999/vnrvjiet/studlogin.html");
                        
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
                      RequestDispatcher rd=request.getRequestDispatcher("form.html");
                           rd.forward(request, response);    
  			
                        
                  }
                  else
                  {
                         pw.println("invalid username/password Enter Correct username/password");
                        response.sendRedirect("http://localhost:9999/vnrvjiet/studlogin.html");
                        
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
                        RequestDispatcher rd=request.getRequestDispatcher("form.html");
                           rd.forward(request, response);    
  			
                        
                  }
                  else
                  {
                        pw.println("invalid username/password Enter Correct username/password");
                        response.sendRedirect("http://localhost:9999/vnrvjiet/studlogin.html");
                        
                  }
                    }
                     }
                       }}
                          
}



           
            catch (SQLException e) 
                  {
                  e.printStackTrace();
                  }
             
      }
} 