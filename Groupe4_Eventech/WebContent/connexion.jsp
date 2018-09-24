<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Page Connexion</title>
<link href="../../dist/css/bootstrap.min.css" rel="stylesheet">
<link href="connexionStyle.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Roboto"
	rel="stylesheet">
</head>

<body class="text-center">



	<form action="ControllerConnexion" class="form-signin" method="post" onsubmit="return validate()">
		<a href="accueil.jsp"><img class="mb-4" src="images/logoV2.4.png"
			alt="" width="72" height="72"></a>

		<h1 class="h3 mb-3 font-weight-normal">Identifiants</h1>

		<label for="inputEmail" class="sr-only">Adresse Mail</label> <input
			type="email" id="inputEmail" class="form-control"
			placeholder="Adresse Mail" required="" autofocus="" name="email">

		<label for="inputPassword" class="sr-only">Mot de passe</label> <input
			type="password" id="inputPassword" class="form-control"
			placeholder="Mot de passe" required="" name="password">
		<div class="checkbox mb-3">

			<label> <input type="checkbox" value="remember-me">
				Se souvenir de moi
			</label>
		</div>

		<button class='btn btn-outline-dark' style='background-color: #9cd9b6'
			type="submit">Se connecter</button>
		<div class="google">
			<jsp:include page="googleSign.html"></jsp:include>
		</div>
	</form>







	<HR>


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
