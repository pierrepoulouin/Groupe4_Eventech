package myPackage;

import java.sql.Date;
import java.sql.Time;

public class EventModel {
	int id_event;
	String nomEvent;
	String lieuEvent;
	Date dateCreation;
	Date dateDebut;
	Date dateFin;
	Time horaireDebut;
	Time horaireFin;
	String descriptif;
	String photo1;
	String photo2;
	String photo3;
	String image;
	String url;
	String refCreateur;

	public int getId_event() {
		return id_event;
	}
	public void setId_event(int id_event) {
		this.id_event = id_event;
	}

	public String getNomEvent() {
		return nomEvent;
	}
	public void setNomEvent(String nomEvent) {
		this.nomEvent = nomEvent;
	}

	public String getLieuEvent() {
		return lieuEvent;
	}
	public void setLieuEvent(String lieuEvent) {
		this.lieuEvent = lieuEvent;
	}
	public String getDescriptif() {
		return descriptif;
	}
	public void setDescriptif(String descriptif) {
		this.descriptif = descriptif;
	}

	public Date getDateCreation() {
		return dateCreation;
	}
	public void setDateCreation(Date dateCreation) {
		this.dateCreation = dateCreation;
	}
	public Date getDateDebut() {
		return dateDebut;
	}
	public void setDateDebut(Date dateDebut) {
		this.dateDebut = dateDebut;
	}
	public Date getDateFin() {
		return dateFin;
	}
	public void setDateFin(Date dateFin) {
		this.dateFin = dateFin;
	}
	public Time getHoraireDebut() {
		return horaireDebut;
	}
	public void setHoraireDebut(Time horaireDebut) {
		this.horaireDebut = horaireDebut;
	}
	public Time getHoraireFin() {
		return horaireFin;
	}
	public void setHoraireFin(Time horaireFin) {
		this.horaireFin = horaireFin;
	}
	public String getPhoto1() {
		return photo1;
	}
	public void setPhoto1(String photo1) {
		this.photo1 = photo1;
	}
	public String getPhoto2() {
		return photo2;
	}
	public void setPhoto2(String photo2) {
		this.photo2 = photo2;
	}
	public String getPhoto3() {
		return photo3;
	}

	public void setPhoto3(String photo3) {
		this.photo3 = photo3;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getRefCreateur() {
		return refCreateur;
	}
	public void setRefCreateur(String refCreateur) {
		this.refCreateur = refCreateur;
	}


}
