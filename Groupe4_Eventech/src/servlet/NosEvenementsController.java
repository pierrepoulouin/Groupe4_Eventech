package servlet;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

import myPackage.EventModel;

/**
 * Servlet implementation class NosEvenementsController
 */
@WebServlet("/NosEvenementsController")
public class NosEvenementsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NosEvenementsController() {
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
		
//		HttpSession session = request.getSession(true);
//		String profil = (String)session.getAttribute("mailUtilisateur");
		
		try
		{	
			Class.forName("com.mysql.jdbc.Driver");
					
			String url ="jdbc:mysql://localhost/eventech";
			String user = "root";
			String pwd = "Pierrebing59";
					
			Connection cn = (Connection) DriverManager.getConnection(url, user, pwd);
			
			Statement st = (Statement) cn.createStatement();
					
			String sql =	"SELECT * FROM evenements " +
							"ORDER BY dateCreation DESC LIMIT 20";
					
			ResultSet result = (ResultSet) st.executeQuery(sql);
					
			ArrayList<EventModel> ListeEvent = new ArrayList<EventModel>();
				
			while (result.next())
			{	
				EventModel e = new EventModel();
						
				e.setId_event(result.getInt("id_event"));
				e.setNomEvent(result.getString("nomEvent"));
				e.setLieuEvent(result.getString("lieuEvent"));
				e.setTypeEvent(result.getString("typeEvent"));
				e.setNbPlaces(result.getInt("nbPlacesEvent"));
				e.setDateDebut(result.getDate("dateDebut"));
				e.setDateFin(result.getDate("dateFin"));
				e.setHoraireDebut(result.getTime("horaireDebut"));
				e.setDureeEvent(result.getTime("dureeEvent"));
				e.setDescriptif(result.getString("descriptif"));
				e.setPhoto1(result.getString("photo1"));
				e.setImage(result.getString("image"));
				e.setUrl(result.getString("url"));
						
				// ajouter dans l'ArrayList 
				ListeEvent.add(e);
			}
			
	        request.setAttribute("ListeEvent", ListeEvent);
	        this.getServletContext().getRequestDispatcher("/nosEvenements.jsp").forward(request, response);
	        
		}
		catch (ClassNotFoundException e)
		{
			e.printStackTrace();

		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}



