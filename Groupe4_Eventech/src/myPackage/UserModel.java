package myPackage;

import java.sql.Date;

public class UserModel {

	int idProfil;
	String nomProfil;
	String prenomProfil;
	String lieuProfil;
	String photoProfil;
	Date DateCreationProfil;
	String refCreateur;
	public int getIdProfil() {
		return idProfil;
	}
	public void setIdProfil(int idProfil) {
		this.idProfil = idProfil;
	}
	public String getNomProfil() {
		return nomProfil;
	}
	public void setNomProfil(String nomProfil) {
		this.nomProfil = nomProfil;
	}
	public String getPrenomProfil() {
		return prenomProfil;
	}
	public void setPrenomProfil(String prenomProfil) {
		this.prenomProfil = prenomProfil;
	}
	public String getLieuProfil() {
		return lieuProfil;
	}
	public void setLieuProfil(String lieuProfil) {
		this.lieuProfil = lieuProfil;
	}
	public String getPhotoProfil() {
		return photoProfil;
	}
	public void setPhotoProfil(String photoProfil) {
		this.photoProfil = photoProfil;
	}
	public Date getDateCreationProfil() {
		return DateCreationProfil;
	}
	public void setDateCreationProfil(Date dateCreationProfil) {
		DateCreationProfil = dateCreationProfil;
	}
	public String getRefCreateur() {
		return refCreateur;
	}
	public void setRefCreateur(String refCreateur) {
		this.refCreateur = refCreateur;
	}
	
	
}
