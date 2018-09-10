USE `Eventech`;

CREATE TABLE `evenements` (
	id_event INT NOT NULL AUTO_INCREMENT,
    nomEvent VARCHAR(100),
    lieuEvent VARCHAR(80),
    dureeEvent TIME,
    dateEvent DATE,
	descriptif VARCHAR(2000),
	image VARCHAR(60),
	url VARCHAR(100),
    refCreateur VARCHAR(80),
    PRIMARY KEY ( id_event ),
    FOREIGN KEY ( refCreateur ) REFERENCES utilisateurs ( mailUtilisateur )
);