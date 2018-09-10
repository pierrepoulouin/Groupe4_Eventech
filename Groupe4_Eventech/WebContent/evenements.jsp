<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="myPackage.EventModel"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Date"%>
<%@ page import="com.mysql.jdbc.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="evenements.css">
<title>Liste des evenements</title>
</head>
<body>
	<%
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
			String sql = "SELECT * FROM evenements ORDER BY dateEvent DESC";
		
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
				e.setDateEvent(result.getDate("dateEvent"));
				e.setDescriptif(result.getString("descriptif"));
				e.setImage(result.getString("image"));
				e.setUrl(result.getString("url"));
				
				// ajouter dans l'ArrayList 
				ListeEvent.add(e);
			}

			out.print("<h1 style='text-align: center; color: purple;'>&Eacute;V&Eacute;NEMENTS PROPOS&Eacute; PAR EVENTECH</h1>");
			out.print("<HR>");
			out.print("<marquee id='bandeau'><h2><font style='color: purple;'>");
			out.print("NOS NOUVEAUT&Eacute;S D'&Eacute;V&Eacute;MENTS LES PLUS CONSULT&Eacute;S SUR NOTRE SITE");
			out.print("...&nbsp;&nbsp;&nbsp;");
			out.print("NOS NOUVEAUT&Eacute;S D'&Eacute;V&Eacute;MENTS LES PLUS CONSULT&Eacute;S SUR NOTRE SITE");
			out.print("...&nbsp;&nbsp;&nbsp;");
			out.print("NOS NOUVEAUT&Eacute;S D'&Eacute;V&Eacute;MENTS LES PLUS CONSULT&Eacute;S SUR NOTRE SITE");
			out.print("...&nbsp;&nbsp;&nbsp;");
			out.print("</font></h2></marquee>");
			out.print("<HR>");
			
			out.print("<div id='conteneur'>");
			
			// Afficher tous le contenu de l'ArrayList
			for (int i = 0; i < ListeEvent.size(); i++)
			{	
				out.print("<div><table>");
					out.print("<tr><td><div class='grow'>");
					out.print("<a href='" + ListeEvent.get(i).getUrl() + "'>" + 
	//	"<img src='images/" + ListeEvent.get(i).getImage() + "'/>" + "</a>");
		"<img src='images/" + ListeEvent.get(i).getImage() + "'/>" + "</a>");
				    out.print("</div></td></tr>");
				    out.print("<tr><td>");
  		      			out.print(ListeEvent.get(i).getNomEvent());
  					out.print("</td></tr>");
  					out.print("<tr><td>");
						out.print(ListeEvent.get(i).getLieuEvent());
  		      		out.print("</td></tr>");
  		      		out.print("<tr><td>");
						out.print(ListeEvent.get(i).getDateEvent());
					out.print("</td></tr>");
  		      		out.print("<tr><td>");
  		      			out.print("<h3><a href=inscrire.jsp>s'inscrire</a></h3>");
  		      		out.print("</td></tr>");
  				out.print("</table></div>");
			}
			out.print("</div>");
			
		} catch (ClassNotFoundException e) {

			// TODO Auto-generated catch block

			e.printStackTrace();

		} catch (SQLException e) {

			// TODO Auto-generated catch block

			e.printStackTrace();
		}
    %>
</body>
</html>