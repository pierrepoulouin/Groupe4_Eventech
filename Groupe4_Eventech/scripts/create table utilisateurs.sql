USE `Eventech`;

CREATE TABLE `utilisateurs` (
	mailUtilisateur VARCHAR(80),
    nomUtilisateur VARCHAR(60),
    prenomUtilisateur VARCHAR(50),
    typeUtilisateur VARCHAR(50),
    telephone VARCHAR(20),
    PRIMARY KEY (mailUtilisateur )
);