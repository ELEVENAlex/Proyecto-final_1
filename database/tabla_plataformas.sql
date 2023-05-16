DROP TABLE if EXISTS plataformas;

CREATE TABLE plataformas (
	id INT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
	nombre VARCHAR(60) NOT NULL
);

INSERT INTO plataformas VALUES ( NULL, 'Publisuites');
INSERT INTO plataformas VALUES ( NULL, 'Prensalink');
INSERT INTO plataformas VALUES ( NULL, 'Prensarank');
INSERT INTO plataformas VALUES ( NULL, 'Ereferer');
INSERT INTO plataformas VALUES ( NULL, 'Unancor');
INSERT INTO plataformas VALUES ( NULL, 'Seofy');
INSERT INTO plataformas VALUES ( NULL, 'Conexco');
INSERT INTO plataformas VALUES ( NULL, 'Coobis');
INSERT INTO plataformas VALUES ( NULL, 'Facilísimo');
INSERT INTO plataformas VALUES ( NULL, 'Growwer');