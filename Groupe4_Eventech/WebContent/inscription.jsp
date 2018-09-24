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





	<br>
	<br>

		<form action="inscriptionSave.jsp">
			<div class="form-group row">
    <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">&nbsp;Adresse Email &nbsp;*&nbsp;:</label>
    <div class="col-sm-10">
      <input type="email" class="form-control form-control-sm" id="colFormLabelSm" placeholder="Dupond@yahoo.fr" name="mailUtilisateur" required>
    </div>
  </div>
  <br>
			<div class="form-group row">
    <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">&nbsp;Mot de passe &nbsp;*&nbsp;:</label>
    <div class="col-sm-10">
      <input type="password" class="form-control form-control-sm" id="colFormLabelSm" placeholder="Dupond59" name="mdpUtilisateur" required>
    </div>
  </div>
  <br>
			<div class="form-group row">
    <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">&nbsp;Nom &nbsp;*&nbsp;:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control form-control-sm" id="colFormLabelSm" placeholder="Dupond" name="nomUtilisateur" required>
    </div>
  </div>
  <br>
			<div class="form-group row">
    <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">&nbsp;Prenom &nbsp;*&nbsp;:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control form-control-sm" id="colFormLabelSm" placeholder="Viktor" name="prenomUtilisateur" required>
    </div>
  </div>
  <br>
			<div class="form-group col-md-4">
      <label for="inputState">Situation &nbsp;*&nbsp;:</label>
      <select id="inputState" class="form-control" name="typeUtilisateur" required>
        <option selected>Etudiant</option>
        <option>Chômeur</option>
        <option>Salarié(e)</option>
      </select>
    </div>
    <br>
			<div class="form-group row">
    <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">&nbsp;Telephone&nbsp;:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control form-control-sm" id="colFormLabelSm" placeholder="0601020304" name="telephone">
    </div>
  </div>
  <br>
  <div class="form-group">
    <div class="form-check">
      <input class="form-check-input is-valid" type="checkbox" value="" id="validCheck3" required>
      <label class="form-check-label" for="validCheck3">
        J'accepte les termes et conditions.
      </label>
      
    </div>
  </div>
			<button type="submit" class="btn btn-primary" style='background-color: #9cd9b6'>Envoyer</button>
		</form>
	
	<HR>


	<jsp:include page="stickyFooter.html"></jsp:include>

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
