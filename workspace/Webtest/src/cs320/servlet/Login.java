package cs320.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class Login extends HttpServlet {

    //private static final long serialVersionUID = 1L;

    protected void doGet( HttpServletRequest request,
        HttpServletResponse response ) throws ServletException, IOException
    {
        response.setContentType( "text/html" );
        PrintWriter out = response.getWriter();
        out.println( "<html>" );
        out.println( "<head><title>Login</title></head>" );
        out.println("<body bgcolor=orange>");
        out.println( "<form action='login' method='post'>" );
        out.println("<br>");
        out.println("<h1>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;RnR Solutions</h1>");
        out.println( "Username: <input type='text' name='username' /> <br />" );
        out.println("<br>");
        out.println( "Password: <input type='password' name='password' /> <br />" );
        out.println("<br>");
out.println("&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;");
        out.println( "&emsp;<input type='submit' name='login' value='Login' /> <br />" );
        out.println( "</form>" );

        out.println( "</body></html>" );
    }

    protected void doPost( HttpServletRequest request,
        HttpServletResponse response ) throws ServletException, IOException
    {
        if( request.getParameter( "username" ).equals( "Admin" )
            && request.getParameter( "password" ).equals( "password" ) )
        {
        	
        	request.getSession().setAttribute( "user", "Admin" );
            response.sendRedirect( "IT.jsp" );
            
        }
        
        else if( request.getParameter( "username" ).equals( "Manager" )
                && request.getParameter( "password" ).equals( "password" ) )
            {
            	
            	request.getSession().setAttribute( "user", "Manager" );
                response.sendRedirect( "Manager.jsp" );
                
            }
        else if( request.getParameter( "username" ).equals( "employee" )
                && request.getParameter( "password" ).equals( "password" ) )
            {
            	
            	request.getSession().setAttribute( "user", "employee" );
                response.sendRedirect( "View_Employee_History1.jsp" );
                
            }
        
               
        else
        {
            response.sendRedirect( "login" );
        }
    }

}