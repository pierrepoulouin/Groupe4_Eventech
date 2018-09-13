package myPackage;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;


public class ControllerConnexion extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		
		String mail = request.getParameter("email");
		String pwd = request.getParameter("password");
		
		session.setAttribute("sessionLogin", mail);
		
		UtilModel util = new UtilModel();
		
		// 1ere phase
				try {	// Charger le driver
					Class.forName("com.mysql.jdbc.Driver");
					String url = "jdbc:mysql://localhost/eventech";
					String user = "root";
					String pwd2 = "Pierrebing59";
			
					// 2eme phase
					// Connection a notre base de donnees Bibliotheque
					Connection cn = (Connection) DriverManager.getConnection(url, user, pwd2);
			
					// 3eme phase
					// creation d'une instance nommee st de la classe Statement
					Statement st = (Statement) cn.createStatement();
			
					// Creation de la requete SQL
					String sql = "SELECT * FROM utilisateurs WHERE mailUtilisateur = " + mail + "AND mdpUtilisateur = " + pwd;
				
					// 4eme phase
					// Execution de la requete SQL
					// et recuperation des donnees dans l'objet result
					ResultSet result = (ResultSet) st.executeQuery(sql);
					
					String login = request.getParameter("mail");
					
					
					
				}
				catch (ClassNotFoundException e)
		    	{
					e.printStackTrace();

				} catch (SQLException e)
		    	{
					e.printStackTrace();
				}
		util.setMailUtilisateur(mailUtilisateur);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
