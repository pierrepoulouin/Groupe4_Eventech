package servlet;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

import myPackage.UtilModel;

/**
 * Servlet implementation class ControllerConnexion
 */
@WebServlet("/ControllerConnexion")
public class ControllerConnexion extends HttpServlet 
{
	private static final long serialVersionUID = 3L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerConnexion() {
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
	
		// Recupere la session si elle existe deja ou
		// Creer une nouvelle session http
		HttpSession session = request.getSession(true);
		
		try
		{
	 		
			// Permet de recuperer les données du formulaire
			String mail = request.getParameter("email");
			String password = request.getParameter("password");

			// Charge le driveur pour la connexion à la base de donnée MySQL
			Class.forName("com.mysql.jdbc.Driver");
	            
			String url = "jdbc:mysql://localhost/eventech";
			String user = "root";
			String pwd  = "Pierrebing59";
	            
			// Connexion a la base de donnees eventech
			Connection con = (Connection) DriverManager.getConnection(url, user, pwd);
	            
			// Statement qui permettra d'executer la requete SQL
			Statement st = (Statement) con.createStatement();
	            
			// On stock la requete SQL dans la variable sql
			String sql =	"SELECT * FROM utilisateurs " + 
							"WHERE mailUtilisateur = '" + mail + "' " +
							"AND mdpUtilisateur = SHA2('" + password + "',0)";
	            
	            // On l'affiche dans la console 
//	            System.out.println("SQL : " + sql);
	            
	            // Creer un objet nomme result de la classe ResultSet 
				ResultSet result = (ResultSet) st.executeQuery(sql);
				
				while (result.next())
				{
					// Creer un objet nomme e de la classe UtilModel
					UtilModel e = new UtilModel();
					
		    		e.setMailUtilisateur(result.getString("mailUtilisateur"));
		    		e.setMdpUtilisateur(result.getString("mdpUtilisateur"));
		    		
//		    		System.out.println("formulaire nom     : " + mail);
//		    		System.out.println("formulaire mdp     : " + password);
//		    		System.out.println("table utilisateurs : " + result.getString("mailUtilisateur"));
//		    		System.out.println("table utilisateurs : " + result.getString("mdpUtilisateur"));
		    		
//		      		if (result.getString("mailUtilisateur").equals(mail) &&
//		      			result.getString("mdpUtilisateur").equals(password))
//		        	{
		      			String userMail =  result.getString("mailUtilisateur");
		      			session.setAttribute("mailUtilisateur", userMail);
//		      			
		      			request.getRequestDispatcher("/accueilConnexion.jsp").forward(request, response);	
//		        	}
//		      		else
//		        	{
//		      			request.getRequestDispatcher("/connexion.jsp").forward(request, response);
//		        	}
				}
				request.getRequestDispatcher("/connexion.jsp").forward(request, response);
	 		}
			catch (Exception e)
			{
				e.printStackTrace();
				request.getRequestDispatcher("/error.jsp").forward(request, response);
			}
		}
	}



