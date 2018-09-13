<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Inscription</title>
</head>
<body>

	<jsp:include page="header.html"></jsp:include>





	<div class="mx-auto" style="width: 200px;">

		<form action="inscriptionSave.jsp">
			<div class="form-group">
				<label for="formGroupExampleInput">Adresse Mail</label> <input
					type="text" class="form-control" id="formGroupExampleInput"
					placeholder="Ex: Dupont@yahoo.fr" name="mailUtilisateur">
			</div>
			<div class="form-group">
				<label for="formGroupExampleInput2">Mot de passe</label> <input
					type="text" class="form-control" id="formGroupExampleInput2"
					placeholder="Ex: DarkDominick59" name="mdpUtilisateur">
			</div>
			<div class="form-group">
				<label for="formGroupExampleInput3">Nom</label> <input type="text"
					class="form-control" id="formGroupExampleInput3"
					placeholder="Ex: Dupond " name="nomUtilisateur">
			</div>
			<div class="form-group">
				<label for="formGroupExampleInput4">Prenom</label> <input
					type="text" class="form-control" id="formGroupExampleInput4"
					placeholder="Ex: Henri" name="prenomUtilisateur">
			</div>
			<div class="form-group">
				<label for="formGroupExampleInput5">Situation</label> <input
					type="text" class="form-control" id="formGroupExampleInput5"
					placeholder="Ex: Etudiant,formateur..." name="typeUtilisateur">
			</div>
			<div class="form-group">
				<label for="formGroupExampleInput6">Telephone</label> <input
					type="text" class="form-control" id="formGroupExampleInput6"
					placeholder="Ex: 0600664488" name="telephone">
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>
	<HR>


	<jsp:include page="footer.html"></jsp:include>

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
