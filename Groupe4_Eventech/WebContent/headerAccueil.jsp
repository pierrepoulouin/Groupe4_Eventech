<!DOCTYPE html>
<html lang="fr">
<head>
	<meta charset="UTF-8">
	<!--balise pour le responsive-->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- balise pour bootstrap-->
	<link	rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
			integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<!-- import de la police-->
	<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
	<title>headerAccueil.jsp</title>
  </head>
  <body>
  
  	<%
   	String profil = (String)session.getAttribute("mailUtilisateur");
  	
	out.print("<nav class='navbar navbar-expand-lg navbar-light bg-light'>");
		out.print("<a class='mb-4' href='#'><img src='images/logoV2.4.png' width='100' height='100'/></a>");
		out.print("<button class='navbar-toggler' type='button' data-toggle='collapse' data-target='#navbarSupportedContent' aria-controls='navbarSupportedContent' aria-expanded='false' aria-label='Toggle navigation'>");
				out.print("<span class='navbar-toggler-icon'></span>");
		out.print("</button>");
		out.print("<div class='collapse navbar-collapse' id='navbarSupportedContent' style='background-color: #b69cd9; font: roboto;'>");
			if (profil == null)
			{
				out.print("<ul class='navbar-nav mr-auto'>");				
					out.print("<li class='nav-item active'>");				
						out.print("<a class='navbar-brand nav-link font-weight-bold text-white' href='#'>Le Kiosque de la Tech<span class='sr-only'>(current)</span></a>");
					out.print("</li>");
					out.print("<li class='nav-item active ml-5'>");
						out.print("<a class='navbar-brand nav-link font-weight-bold text-white' href='accueil.jsp'>Accueil<span class='sr-only'>(current)</span></a>");
					out.print("</li>");
					out.print("<li class='nav-item active ml-5'>");
						out.print("<a class='navbar-brand nav-link font-weight-bold text-white' href='accueil.jsp'>Nos &eacute;v&eacute;nements<span class='sr-only'>(current)</span></a>");
					out.print("</li>");
					out.print("<li class='nav-item active ml-5'>");
						out.print("<a class='navbar-brand nav-link font-weight-bold text-white' href='#' style='margin-left: 15vw;'><span class='sr-only'>(current)</span></a>");
					out.print("</li>");
				out.print("</ul>");
			}
			else
			{
				out.print("<ul class='navbar-nav mr-auto'>");
					out.print("<li class='nav-item active'>");				
						out.print("<a class='navbar-brand nav-link font-weight-bold text-white' href='#'>Le Kiosque de la Tech<span class='sr-only'>(current)</span></a>");
					out.print("</li>");
					out.print("<li class='nav-item active ml-5'>");
						out.print("<a class='navbar-brand nav-link font-weight-bold text-white' href='accueil.jsp'>Accueil<span class='sr-only'>(current)</span></a>");
					out.print("</li>");
					out.print("<li class='nav-item active ml-5'>");
						out.print("<a class='navbar-brand nav-link font-weight-bold text-white' href='accueil.jsp'>Nos &eacute;v&eacute;nements<span class='sr-only'>(current)</span></a>");
					out.print("</li>");
					out.print("<li class='nav-item active ml-5'>");
						out.print("<a class='navbar-brand nav-link font-weight-bold text-white' href='creationEvenement.jsp'>Cr&eacute;er &eacute;v&eacute;nements<span class='sr-only'>(current)</span></a>");
					out.print("</li>");
				out.print("</ul>");
			}	
				out.print("<form class='form-inline my-2 lg-0'>");
					out.print("<input class='form-control' type='search' placeholder='Recherche' aria-label='Recherche'>");
					out.print("<button class='btn btn-outline-success btn-lg font-weight-bold text-white' type='submit' style='background-color: #9cd9b6;'>Rechercher</button>");
				out.print("</form>");

			if (profil == null)
			{
				out.print("<ul class='navbar-nav'>");
					out.print("<li class='nav-item active ml-5'>");
						out.print("<a class='navbar-brand nav-link font-weight-bold text-white' href='inscription.jsp'>S'inscrire<span class='sr-only'>(current)</span></a>");
					out.print("</li>");
					out.print("<li class='nav-item active ml-3'>");
						out.print("<a class='navbar-brand nav-link font-weight-bold text-white' href='connexion.jsp'>Connexion<span class='sr-only'>(current)</span></a>");
					out.print("</li>");
				out.print("</ul>");
			}
			else
			{
				out.print("<ul class='navbar-nav'>");
					out.print("<li class='nav-item active ml-5'>");
						out.print("<a class='navbar-brand nav-link font-weight-bold text-warning' href='accueilConnexion.jsp'>(" + profil + ")<span class='sr-only'>(current)</span></a>");
					out.print("</li>");
					out.print("<li class='nav-item active ml-3'>");
						out.print("<a class='navbar-brand nav-link font-weight-bold text-white' href='accueilConnexion.jsp'>Profil<span class='sr-only'>(current)</span></a>");
					out.print("</li>");
				out.print("</ul>");
			}
		out.print("</div>");
	out.print("</nav>");
	
	%>
  </body>
</html>



