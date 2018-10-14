<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!--balise pour le responsive-->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- balise pour bootstrap-->
	<link	rel="stylesheet"
			href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
			integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
			crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="styleSheet.css">

	<title>Créer un événement</title>
  </head>
  <body>
    <jsp:include page="headerAccueil.jsp"></jsp:include>
	<h2 class="text-center">Cr&eacute;er votre &eacute;v&eacute;nement</h2>
	
	<form action="CreateEvent" method="post" style='margin-left: 25vw;'>
		<div class="container">
			<div class="containerbis">
				<div class="row">
					<div class="col">
						<div class="form-group">
							<label for="nom">Nom de l'événement *</label> <input name="nom"
								type="text" class="form-control" id="nom" maxlength="35"
								required>
						</div>
					</div>
					<div class="col">
						<label for="dateDebut">Type d'événement *</label> <select
							name="type" class="custom-select">
							<option selected>Sélectionner ...</option>
							<option value="Hackathon">Hackathon</option>
							<option value="Meetup">Meetup</option>
							<option value="Conférence">Conférence</option>
							<option value="Atelier">Atelier</option>
							<option value="Formation">Formation</option>
							<option value="Autres">Autres</option>
						</select>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<div class="form-group">
							<label for="lieu">Lieu de l'événement *</label> <input
								name="lieu" type="text" class="form-control" id="lieu" required>
						</div>
					</div>
					<div class="col">
						<div class="form-group">
							<label for="nbPlaces">Nombre de places disponibles *</label> <input
								name="nbPlaces" type="text" class="form-control" id="nbPlaces"
								required>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<div class="form-group">
							<label for="dateDebut">Date de début *</label> <input
								name="dateDebut" type="date" class="form-control" id="dateDebut"
								required>
						</div>
					</div>
					<div class="col">
						<div class="form-group">
							<label for="dateFin">Date de fin *</label> <input name="dateFin"
								type="date" class="form-control" id="dateFin" required>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<div class="form-group">
							<label for="heureDebut">Heure de début *</label> <input
								name="heureDebut" type="time" class="form-control"
								id="heureDebut" required>
						</div>
					</div>
					<div class="col">
						<div class="form-group">
							<label for="heureFin">Heure de fin *</label> <input
								name="heureFin" type="time" class="form-control" id="heureFin"
								required>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<div class="form-group">
							<label for="duree">Durée de l'événement *</label> <input
								name="duree" type="time" class="form-control" id="duree"
								required>
						</div>
					</div>
					<div class="col">
						<label for="image">Joindre la photo de l'événement *</label>
						<div class="custom-file">
							<input name="photo" type="file" class="custom-file-input" id="customFile" >
							<label class="custom-file-label" for="customFile">Sélectionner ...</label>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<div class="form-group">
							<label for="description">Description de l'événement *</label>
							<textarea name="description" class="form-control"
								id="description" required></textarea>
						</div>
					</div>
				</div>
			</div>
			<h6>* Champs obligatoire</h6>
		</div>
		<div class="row" id="bouton">
			<div class="col"></div>
			<div class="col-1">
				<button type="submit" class="btn btn-outline-success btn-lg font-weight-bold text-white"
					style="background-color: #9cd9b6">Créer</button>
			</div>
			<div class="col"></div>
		</div>
	</form>
	<jsp:include page="footer.html"></jsp:include>
  </body>
</html>



