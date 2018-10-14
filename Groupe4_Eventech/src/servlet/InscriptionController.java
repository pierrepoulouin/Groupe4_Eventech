package servlet;

import java.io.IOException;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

/**
 * Servlet implementation class InscriptionController
 */
@WebServlet("/InscriptionController")
public class InscriptionController extends HttpServlet
{
	private static final long serialVersionUID = 2L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InscriptionController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{

		try
		{
			String mail = request.getParameter("mailUtilisateur");
			String p = request.getParameter("mdpUtilisateur");
			String k = request.getParameter("nomUtilisateur");
			String h = request.getParameter("prenomUtilisateur");
			String j = request.getParameter("typeUtilisateur");
			String q = request.getParameter("telephone");

	        Class.forName("com.mysql.jdbc.Driver");
	            
	        String url = "jdbc:mysql://localhost:3306/eventech";
	        String user = "root";
	        String pwd= "Pierrebing59";
	            
	        Connection con=(Connection) DriverManager.getConnection(url, user, pwd);
	            
	        //Création requête sql INSERT
	        String sql = "insert into utilisateurs values(?,?,?,?,?,?)";
	        
	        System.out.println("SQL : " + sql);
	            
	        PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
	                
	        ps.setString(1, mail);
	        ps.setString(2, p);
	        ps.setString(3, k);
	        ps.setString(4, h);
	        ps.setString(5, j);
	        ps.setString(6, q);
	            
	        int i = ps.executeUpdate();
	        
	        System.out.println("valeur de i : " + i);
	                                
	        if ( i > 0 )
	        {
	        	request.getRequestDispatcher("/connexion.jsp").forward(request, response);
	        }
	        else
	        {
				request.getRequestDispatcher("/error.jsp").forward(request, response); 
	        }        
		}
		catch(Exception e)
		{
			e.printStackTrace();
			request.getRequestDispatcher("/error.jsp").forward(request, response);
		}
	}
}



