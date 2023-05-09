DROP TABLE paises;
 CREATE TABLE paises(
    id INT UNSIGNED auto_increment NOT NULL PRIMARY KEY,
    pais varchar(50) NOT NULL,
    iso_code varchar(2) NOT NULL
 );
INSERT INTO paises VALUES (null, 'Austria', 'at');
INSERT INTO paises VALUES (null, 'Australia', 'au');
INSERT INTO paises VALUES (null, 'Belgica', 'be');
INSERT INTO paises VALUES (null, 'Canada', 'ca');
INSERT INTO paises VALUES (null, 'Suiza', 'ch');
INSERT INTO paises VALUES (null, 'Alemania', 'de');
INSERT INTO paises VALUES (null, 'España', 'es');
INSERT INTO paises VALUES (null, 'Francia', 'fr');
INSERT INTO paises VALUES (null, 'India', 'in');
INSERT INTO paises VALUES (null, 'Italia', 'it');
INSERT INTO paises VALUES (null, 'Mexico', 'mx');
INSERT INTO paises VALUES (null, 'Paises Bajos', 'nl');
INSERT INTO paises VALUES (null, 'Reino Unido', 'gb');
INSERT INTO paises VALUES (null, 'Estados Unidos', 'us');

select * from paises;