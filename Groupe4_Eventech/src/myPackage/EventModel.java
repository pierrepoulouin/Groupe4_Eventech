package myPackage;

import java.sql.Date;
import java.sql.Time;

public class EventModel {
	int id_event;
	String nomEvent;
	String lieuEvent;
	Time dureeEvent;
	Date dateEvent;
	String descriptif;
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
	
	public Time getDureeEvent() {
		return dureeEvent;
	}
	public void setDureeEvent(Time dureeEvent) {
		this.dureeEvent = dureeEvent;
	}
	
	public Date getDateEvent() {
		return dateEvent;
	}
	public void setDateEvent(Date dateEvent) {
		this.dateEvent = dateEvent;
	}
	
	public String getDescriptif() {
		return descriptif;
	}
	public void setDescriptif(String descriptif) {
		this.descriptif = descriptif;
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
