import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.ServletConfig;

public class adch extends HttpServlet 
{
      Connection con;
      PreparedStatement ps;
      ResultSet rs;
      public void init(ServletConfig config)throws ServletException
      { 
try 
{ 
       super.init(config);
                        //Class.forName("oracle.jdbc.driver.OracleDriver");
                       // con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","admin","adminvnr"); 
Class.forName("com.mysql.jdbc.Driver");

 con = DriverManager.getConnection("jdbc:mysql://localhost/system?user=root&password=intern");               
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
            String username=request.getParameter("username");
            String password=request.getParameter("password");
            pw.println("<html><body>");
            try 
            {
                  ps=con.prepareStatement("select * from adminch where username=? and password=?");
                  ps.setString(1, username);
                  ps.setString(2, password);
                  rs=ps.executeQuery();
                  if(rs.next())
                  {
                    response.sendRedirect("http://localhost:8080/vnrvjiet new/ad1.html");
                        
                        
                        
                  }
                  else
                  {
                        pw.println("<center><h3>invalid username/password Enter Correct username/password</h3></center>");
                        response.sendRedirect("http://localhost:8080/vnrvjiet new/admin.html");
                        
                  }
            }
            catch (SQLException e) 
                  {
                  e.printStackTrace();
                  }
      }
} 