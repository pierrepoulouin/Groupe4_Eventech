<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.text.DateFormat" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %>
<%@ page import="myPackage.EventModel" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="evenements.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">

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

    <title>evenements.jsp</title>
  </head>
  <body>
	<jsp:include page="headerAccueil.jsp"></jsp:include>
	<%
	
   	String profil = (String)session.getAttribute("mailUtilisateur");
   	
	out.print("<main role='main'>");
	out.print("<div class='album py-5 bg-light'>");
	out.print("<div class='container'>");
	out.print("<div class='row'>");  	
  	
	// recuperer l'ArrayList ListeEvent du controller
	ArrayList<EventModel> ListeEvent = (ArrayList<EventModel>) request.getAttribute("ListeEvent");

	// Afficher tous le contenu de l'ArrayList
	for (int i = 0; i < ListeEvent.size(); i++)
	{
		// formatages des dates de debut (dD) et de date de fin (dF) en dd/mm/yyyy
		DateFormat d2 = new SimpleDateFormat("dd/MM/yyyy");
		Date d1 = ListeEvent.get(i).getDateDebut();  
		String dD = d2.format(d1);
		Date d3 = ListeEvent.get(i).getDateFin();  
		String dF = d2.format(d3);
	    	
		// formatage de l'horaire de debut en hh:mm
		String hD = new SimpleDateFormat("HH:mm").format(ListeEvent.get(i).getHoraireDebut());
	    	
		// formatage de la duree en hh:mm
		String dE = new SimpleDateFormat("HH:mm").format(ListeEvent.get(i).getDureeEvent());
	
		out.print("<div class='col-md-4'>");
		out.print("<div class='card mb-4 shadow-sm'>");
	    	out.print("<img class='card-img-top img-fluid img-thumbnail grow' src='images/" + ListeEvent.get(i).getImage() + "' alt='Responsive image' style='height: 250px;'/>");
	    	
			out.print("<div class='card-body' id='param-eventech'>");    
	    		out.print("<p class='card-text'>");
    					out.print("<b>" + ListeEvent.get(i).getTypeEvent() + "</b>&nbsp;&nbsp;&agrave;&nbsp;" + ListeEvent.get(i).getLieuEvent());
					out.print("</p>");
	    		out.print("<p class='card-text'>");
	    			out.print(ListeEvent.get(i).getNomEvent());
					out.print("</p>");
					out.print("<p class='card-text'>");	
						out.print("Le " + dD + "&nbsp;&nbsp;&agrave;&nbsp;" + hD);
						out.print("</p>");
					out.print("<p class='card-text'>");
					out.print("<strong>&#8986;</strong>&nbsp;" + dE + "&nbsp;&nbsp;&nbsp;places : <b>" + ListeEvent.get(i).getNbPlaces() + "</b>&nbsp;&nbsp;&nbsp;&nbsp;" + ListeEvent.get(i).getPhoto1());
				out.print("</p>");
					out.print("<p class='card-text text-center'>");
					out.print("<button type='button' class='btn btn-outline-success btn-lg font-weight-bold text-white' style='background-color: #9cd9b6;'>s\'inscrire</button>");
					out.print("</p>");
    			out.print("</div>");
    			
    		out.print("</div>");
    	out.print("</div>");
	}
    out.print("</div>");
	out.print("</div>");
	out.print("</div>");
	out.print("</main>");
    %>
	<jsp:include page="footer.html"></jsp:include>
  </body>
</html>



