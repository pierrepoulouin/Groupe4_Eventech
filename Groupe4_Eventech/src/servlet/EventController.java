package servlet;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Time;
import java.util.Date;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import myPackage.EventModel;

public class EventController {

	public String registerEvent(EventModel event) {

		String nom = event.getNomEvent();
		String lieu = event.getLieuEvent();
		String type = event.getTypeEvent();
		String description = event.getDescriptif();
		String photo = event.getImage();
		int nbPlaces = event.getNbPlaces();
		Date dateDebut = event.getDateDebut();
		Date dateFin = event.getDateFin();
		Time heureDebut = event.getHoraireDebut();
		Time heureFin = event.getHoraireFin();
		Time duree = event.getDureeEvent();
		String createur = event.getRefCreateur();
		String photo1 = event.getPhoto1();
		String photo2 = event.getPhoto2();
		String photo3 = event.getPhoto3();
		String url = event.getUrl();
		Date dateCreation = event.getDateCreation();
		
		try {

			Class.forName("com.mysql.jdbc.Driver");

			String url1 ="jdbc:mysql://localhost:3306/evenTech";
			String user = "root";
			String pwd = "Pierrebing59";

			Connection con = (Connection) DriverManager.getConnection(url1, user, pwd);

			String sql =	"INSERT INTO evenements " +
							"(nomEvent, lieuEvent, typeEvent, nbPlacesEvent, dateCreation, dateDebut, dateFin, " +
							"horaireDebut, horaireFin, dureeEvent, descriptif, refCreateur) " +
							"VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";

			PreparedStatement pst = (PreparedStatement) con.prepareStatement(sql);

			pst.setString(1, nom);
			pst.setString(2, lieu);
			pst.setString(3, type);
			pst.setInt(4, nbPlaces);
			pst.setDate(5, (java.sql.Date) dateCreation);
			pst.setDate(6, (java.sql.Date) dateDebut);
			pst.setDate(7,  (java.sql.Date) dateFin);
			pst.setTime(8, heureDebut);
			pst.setTime(9, heureFin);
			pst.setTime(10, duree);
			pst.setString(11, description);
			pst.setString(12, createur);

			int i = pst.executeUpdate();

			if(i != 0) {
				return "Success";
			} else {
				System.out.println("Failed");
			}

		} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "Not ok";
	}
}



