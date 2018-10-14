package servlet;

import java.awt.Event;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import myPackage.EventModel;

/**
 * Servlet implementation class CreateEvent
 */
@WebServlet("/CreateEvent")
public class CreateEvent extends HttpServlet {
	private static final long serialVersionUID = 5L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CreateEvent() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		HttpSession session = request.getSession(true);
		String profil = (String)session.getAttribute("mailUtilisateur");
//		System.out.println("le profil connecté : " + profil);
		
		doGet(request, response);
		String nom = request.getParameter("nom");
		String lieu = request.getParameter("lieu");
		String type = request.getParameter("type");
		String description = request.getParameter("description");
		String nbPlaces = request.getParameter("nbPlaces");
		String photo = request.getParameter("image");
		String dateDebut = request.getParameter("dateDebut");
		String dateFin = request.getParameter("dateFin");
		String heureDebut = request.getParameter("heureDebut");
		String heureFin = request.getParameter("heureFin");
		String duree = request.getParameter("duree");
		
		// La date de creation sera toujours la date du jour (c'est à dire la date systeme)
		Date d=new Date();
		String dateCreation = ((d.getYear()+1900)+"-"+(d.getMonth()+1)+"-"+d.getDate());

		//conversion string en date
		Date castJavaDateDebut;
		Date castJavaDateFin;
		Date castJavaDateCreation;

		EventModel event = new EventModel();

		try {
			//conversion string en date
			castJavaDateDebut = new SimpleDateFormat("yyyy-MM-dd").parse(dateDebut);
			java.sql.Date castSqlJavaDateDebut = new java.sql.Date(castJavaDateDebut.getTime());

			castJavaDateFin = new SimpleDateFormat("yyyy-MM-dd").parse(dateFin);
			java.sql.Date castSqlJavaDateFin = new java.sql.Date(castJavaDateFin.getTime());
			
			castJavaDateCreation = new SimpleDateFormat("yyyy-MM-dd").parse(dateCreation);
			java.sql.Date castSqlJavaDateCreation = new java.sql.Date(castJavaDateCreation.getTime());

			//conversion string en heure
			SimpleDateFormat formatDebut = new SimpleDateFormat("hh:mm"); //format 24h : hh et format 12h : HH
			java.util.Date HDebut = (java.util.Date) formatDebut.parse(heureDebut);
			java.sql.Time heureDebutTime = new java.sql.Time(HDebut.getTime());

			java.util.Date HFin = (java.util.Date) formatDebut.parse(heureFin);
			java.sql.Time heureFinTime = new java.sql.Time(HFin.getTime());

			java.util.Date HDuree = (java.util.Date) formatDebut.parse(duree);
			java.sql.Time heureDuree = new java.sql.Time(HDuree.getTime());

			event.setDateDebut(castSqlJavaDateDebut);
			event.setDateFin(castSqlJavaDateFin);
			event.setDateCreation(castSqlJavaDateCreation);
			event.setHoraireDebut(heureDebutTime);
			event.setHoraireFin(heureFinTime);
			event.setDureeEvent(heureDuree);

		}	catch (Exception e) {
			System.out.println("Catch ok");
			e.printStackTrace();

		}

		int nbPlaceMax = Integer.parseInt(nbPlaces); //pour convertir du string en int
		
		event.setNomEvent(nom);
		event.setLieuEvent(lieu);
		event.setTypeEvent(type);
		event.setDescriptif(description);
		event.setImage(photo);
		event.setNbPlaces(nbPlaceMax);
		
		event.setRefCreateur(profil);
		
		EventController registerEvent = new EventController();
		
		String test = registerEvent.registerEvent(event);
		
		if(test.equals("Success")) {
			request.getRequestDispatcher("/evenements.jsp").forward(request, response);
		} else {
			request.setAttribute("error", "Une erreur est survenue");
			request.getRequestDispatcher("/error.jsp").forward(request, response);
		}
	}
}



