<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Nos Evenements</title>
  </head>
  <body>
    <HR>
    <jsp:include page="header.html"></jsp:include>
	</br>
	<div style="display: flex;">
      <div><h3><a href=connecter.jsp>connexion</a></h3></div> &nbsp;&nbsp;
	  <div><h3><a href=inscrire.jsp>s'inscrire</a></h3></div> &nbsp;&nbsp;
	  <div><h3><a href=evenements.jsp>nos évènements</a></h3></div>
	</div>
  	</br>
  	<jsp:include page="footer.html"></jsp:include>
    <HR>
  </body>
</html>