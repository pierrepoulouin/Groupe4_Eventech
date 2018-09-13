<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link href="https://fonts.googleapis.com/css?family=Rajdhani" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="styleHeader.css">
    <title>Le kiosque de la Tech</title>
  </head>
  
  <body>
  	<%
		out.print("<div id='navbar'>");
		out.print("<div><img src='images/logo.png' alt='logo Eventech' style='width: 5vw; height: 5vw;'></div>");
		out.print("<div><a href='#'>Le kiosque de la Tech</a></div>");
		out.print("<div><a href='#'>Liste des &eacute;v&eacute;nements</a></div>");
		out.print("<div><a href='#'>Cr&eacute;er un &eacute;v&eacute;nement</a></div>");
		out.print("<div><a href='inscription.jsp'>S&acute;inscrire</a> / <a href='connexion.jsp'>Se connecter</a></div>");
		out.print("</div>");
	%>
  </body>
  
</html>