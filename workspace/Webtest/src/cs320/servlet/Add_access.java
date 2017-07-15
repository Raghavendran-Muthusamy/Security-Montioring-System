package cs320.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/Add_access")
public class Add_access extends HttpServlet {

   

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public Add_access()
    {
        super();
    }

    protected void doGet( HttpServletRequest request,
        HttpServletResponse response ) throws ServletException, IOException
    {
    	
    	
    	request.getRequestDispatcher( "/WEB-INF/Add_vio.jsp" ).forward(
                request, response );
        // display form
        
    }

    @SuppressWarnings("unchecked")
    protected void doPost( HttpServletRequest request,
        HttpServletResponse response ) throws ServletException, IOException
    {
        // get the user input
        String mac_address = request.getParameter( "mac_address" );
        String emp_ID = request.getParameter( "emp_ID" );
        String domain_IP = request.getParameter( "domain_IP" );
        String issue = request.getParameter( "issue" );

        // create a new guest book entry


        Connection c = null;
        try
        {
            String url = "jdbc:mysql://localhost/cs320stu31";
            String username = "cs320stu31";
            String password = "6979";

            String sql = "insert into violation_history (name, message) values (?, ?, ?, ?)";

            c = DriverManager.getConnection( url, username, password );
            PreparedStatement pstmt = c.prepareStatement( sql );
            pstmt.setString( 1, mac_address );
            pstmt.setString( 2, emp_ID );
            pstmt.setString( 3, domain_IP );
            pstmt.setString( 4, issue );
            pstmt.executeUpdate();
        }
        catch( SQLException e )
        {
            throw new ServletException( e );
        }
        finally
        {
            try
            {
                if( c != null ) c.close();
            }
            catch( SQLException e )
            {
                throw new ServletException( e );
            }
        }

        // send the user back to the guest book page
        response.sendRedirect( "Violation_history.jsp" );
    }
    
    
    
    }
