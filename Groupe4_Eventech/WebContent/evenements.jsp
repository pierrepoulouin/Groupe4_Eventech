<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="myPackage.EventModel" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="com.mysql.jdbc.Connection" %>
<%@ page import="com.mysql.jdbc.Statement" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.text.DateFormat" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="evenements.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <title>Liste evenements</title>
  </head>

  <body>
  	<br>
	<div class="input-group smb-3">
  		<div class="input-group-prepend">
    		<button class="btn btn-outline-secondary font-weight-bold" type="button" id="button-addon1" 
    				style='background-color: #9cd9b6;'>Type</button>
  					<input	type="text" class="form-control" placeholder="Meetup, Hackathon" 
  							aria-label="Example text with button addon" aria-describedby="button-addon1">
    		<button class="btn btn-outline-secondary font-weight-bold" type="button" id="button-addon2" 
    				style='background-color: #9cd9b6;'>Lieu</button>
  					<input	type="text" class="form-control" placeholder="Paris, Nantes, Bordeaux" 
  							aria-label="Example text with button addon" aria-describedby="button-addon2">
  		</div>
	</div>

	<%
		String s1 = request.getParameter("t1");
		String s2 = request.getParameter("l1");
		System.out.println(s1);
	    System.out.println(s2);
	
    	try {
			// 1ere phase
			// Charger le driver
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost/eventech";
			String user = "root";
			String pwd = "Pierrebing59";
	
			// 2eme phase
			// Connection a notre base de donnees Bibliotheque
			Connection cn = (Connection) DriverManager.getConnection(url, user, pwd);
	
			// 3eme phase
			// creation d'une instance nommee st de la classe Statement
			Statement st = (Statement) cn.createStatement();
	
			// Creation de la requete SQL
			String sql =	"SELECT nomEvent, lieuEvent, dateCreation, " +
							"dateDebut, dateFin, dureeEvent, descriptif, image, url " +
							"FROM evenements ORDER BY dateCreation DESC LIMIT 12";
			
			// 4eme phase
			// Execution de la requete SQL
			// et recuperation des donnees dans l'objet result
			ResultSet result = (ResultSet) st.executeQuery(sql);
		
			// Creation d'une ArrayList de type LivresModel
			ArrayList<EventModel> ListeEvent = new ArrayList<EventModel>();
		
			while (result.next())
			{	
				// creation d'une instance nommee l de la classe LivresModel
				EventModel e = new EventModel();
				
				// affectation de nos valeur de notre objet result
				// provenant de la base de donnees Bibliotheque
				e.setNomEvent(result.getString("nomEvent"));
				e.setLieuEvent(result.getString("lieuEvent"));
				e.setDateDebut(result.getDate("dateDebut"));
				e.setDateFin(result.getDate("dateFin"));
				e.setDureeEvent(result.getTime("dureeEvent"));
				e.setDescriptif(result.getString("descriptif"));
				e.setImage(result.getString("image"));
				e.setUrl(result.getString("url"));
				
				// ajouter dans l'ArrayList 
				ListeEvent.add(e);
			}
				
		    out.print("<main role='main'>");
		    out.print("<div class='album py-5 bg-light'>");
	        out.print("<div class='container'>");
	        out.print("<div class='row'>");
		    
			// Afficher tous le contenu de l'ArrayList
			for (int i = 0; i < ListeEvent.size(); i++)
			{
				// formatages des dates de debut et de fin en dd/mm/yyyy
		  		DateFormat d2 = new SimpleDateFormat("dd/MM/yyyy");
		    	Date d1 = ListeEvent.get(i).getDateDebut();  
		    	String dD = d2.format(d1);
		    	Date d3 = ListeEvent.get(i).getDateFin();  
		    	String dF = d2.format(d3);
		    	
		    	// formatage de la duree en hh:mm
		    	String dE = new SimpleDateFormat("HH:mm").format(ListeEvent.get(i).getDureeEvent());
		    	
				out.print("<div class='col-md-4'>");
					out.print("<div class='card mb-4 shadow-sm'>");
				    	out.print("<img class='card-img-top img-fluid img-thumbnail grow' src='images/" + ListeEvent.get(i).getImage() + "' alt='Responsive image' style='height: 250px;'/>");
				    	
						out.print("<div class='card-body'>");    
				    		out.print("<p class='card-text' style='font-size: 0.9em;'>");
  		      					out.print("<b>" + ListeEvent.get(i).getNomEvent() + "</b>");
  							out.print("</p>");
  							out.print("<p class='card-text' style='font-size: 1.0em;'>");
  								out.print("<b>" + ListeEvent.get(i).getLieuEvent() + "</b>");
  							out.print("</p>");
  							out.print("<p class='card-text' style='font-size: 1.0em;'>");
								out.print("Le " + dD);
								out.print(" - " + dE);
								out.print("&nbsp;&nbsp;places : <b>30</b>");
								out.print("</p>");
  							out.print("<p class='card-text text-center font-weight-bold text-inscrire'>");
								out.print("<button type='button' class='btn btn-outline-dark font-weight-bold' style='background-color: #9cd9b6;'>s\'inscrire</button>");
  		      				out.print("</p>");
  		      			out.print("</div>");
  		      			
  		      		out.print("</div>");
  		      	out.print("</div>");
			}
		    out.print("</div>");
			out.print("</div>");
			out.print("</div>");
			out.print("</main>");
			
		} catch (ClassNotFoundException e)
    	{
			e.printStackTrace();

		} catch (SQLException e)
    	{
			e.printStackTrace();
		}
    %>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
</body>

</html>