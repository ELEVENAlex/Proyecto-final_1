
ALTER TABLE rankings RENAME rankings_es;

ALTER TABLE blogs_uk RENAME bolgs_gb;
ALTER TABLE enlaces_localidades_uk RENAME enlaces_localidades_gb;
ALTER TABLE kws_uk RENAME kws_gb;
ALTER TABLE localidades_uk RENAME localidades_gb;
ALTER TABLE myrevest_uk RENAME myrevest_gb;
ALTER TABLE rankings_uk RENAME rankings_gb;
ALTER TABLE rankings_uk_localidades RENAME rankings_gb_localidades;
ALTER TABLE sitios_localidades_uk RENAME sitios_localidades_gb;
ALTER TABLE smartcret_uk RENAME smartcret_gb;
ALTER TABLE topciment_uk RENAME topciment_gb;
ALTER TABLE visibilidad_uk RENAME visibilidad_gb;

ALTER TABLE enlaces_localidades_sz RENAME enlaces_localidades_ch;
ALTER TABLE kws_sz RENAME kws_ch;
ALTER TABLE localidades_sz RENAME localidades_ch;
ALTER TABLE rankings_sz RENAME rankings_ch;
ALTER TABLE rankings_sz_localidades RENAME rankings_ch_localidades;
ALTER TABLE sitios_localidades_sz RENAME sitios_localidades_ch;
ALTER TABLE topciment_sz RENAME topciment_ch;
DROP TABLE visibilidad_sz;
DROP TABLE sitios_localidades_sz;
DROP TABLE rankings_sz;
DROP TABLE rankings_sz_localidades;

CREATE TABLE `rankings_mx_localidades` (
	`id` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`kw` VARCHAR(255) NOT NULL,
	`rank` INT(11) NOT NULL,
	`url` VARCHAR(255) NOT NULL,
	`date` DATE NOT NULL DEFAULT current_timestamp(),
)



ALTER TABLE luxuryconcrete_au RENAME luxury_au;
ALTER TABLE luxuryconcrete_ca RENAME luxury_ca;
ALTER TABLE luxuryconcrete_es RENAME luxury_es;
ALTER TABLE luxuryconcrete_fr RENAME luxury_fr;
ALTER TABLE luxuryconcrete_uk RENAME luxury_gb;
ALTER TABLE luxuryconcrete_us RENAME luxury_us;



ALTER TABLE sitios_localidades_at ADD targt VARCHAR(25);
ALTER TABLE sitios_localidades_au ADD targt VARCHAR(25);
ALTER TABLE sitios_localidades_be ADD targt VARCHAR(25);
ALTER TABLE sitios_localidades_ca ADD targt VARCHAR(25);
ALTER TABLE sitios_localidades_ch ADD targt VARCHAR(25);
ALTER TABLE sitios_localidades_de ADD targt VARCHAR(25);
ALTER TABLE sitios_localidades_fr ADD targt VARCHAR(25);
ALTER TABLE sitios_localidades_gb ADD targt VARCHAR(25);
ALTER TABLE sitios_localidades_in ADD targt VARCHAR(25);
ALTER TABLE sitios_localidades_it ADD targt VARCHAR(25);
ALTER TABLE sitios_localidades_mx ADD targt VARCHAR(25);
ALTER TABLE sitios_localidades_nl ADD targt VARCHAR(25);
ALTER TABLE sitios_localidades_us ADD targt VARCHAR(25);



DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
	`id` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`name` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_general_ci',
	`username` VARCHAR(60) NOT NULL COLLATE 'utf8mb4_general_ci',
	`password` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_general_ci',
	`email` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_general_ci',
	`role` VARCHAR(20) NOT NULL COLLATE 'utf8mb4_general_ci'
);



DROP TABLE IF EXISTS paises;

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



DROP TABLE IF EXISTS empresas;

CREATE TABLE empresas (
	id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(255) NOT NULL,
	url VARCHAR(255) NOT NULL
);

INSERT INTO `empresas` (`id`, `nombre`, `url`) VALUES (1, 'topciment', 'www.topciment.com');
INSERT INTO `empresas` (`id`, `nombre`, `url`) VALUES (2, 'myrevest', 'www.myrevest.com');
INSERT INTO `empresas` (`id`, `nombre`, `url`) VALUES (3, 'luxury', 'www.luxuryconcrete.us');
INSERT INTO `empresas` (`id`, `nombre`, `url`) VALUES (4, 'smartcret', 'www.smartcret.com');
INSERT INTO `empresas` (`id`, `nombre`, `url`) VALUES (5, 'betoncire', 'www.betoncire.eco');
INSERT INTO `empresas` (`id`, `nombre`, `url`) VALUES (6, 'luttum', 'www.luttum.com');
INSERT INTO `empresas` (`id`, `nombre`, `url`) VALUES (7, 'natiso', 'www.natiso.es');



DROP TABLE IF EXISTS carga_pagina;

CREATE TABLE carga_pagina (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	url VARCHAR(255) NOT NULL,
	loading_ex VARCHAR(10),
	loading_ex_cls VARCHAR(10),
	loading_ex_inp VARCHAR(10),
	loading_ex_ttfb VARCHAR(10),
	loading_ex_fcp VARCHAR(10),
	loading_ex_fid VARCHAR(10),
	loading_ex_lcp VARCHAR(10),
	origin_loading_ex VARCHAR(10),
	origin_loading_ex_cls VARCHAR(10),
	origin_loading_ex_inp VARCHAR(10),
	origin_loading_ex_ttfb VARCHAR(10),
	origin_loading_ex_fcp VARCHAR(10),
	origin_loading_ex_fid VARCHAR(10),
	origin_loading_ex_lcp VARCHAR(10)
);



CREATE TABLE `topciment_at` (
  `id` int AUTO_INCREMENT NOT NULL PRIMARY KEY,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `url_origen` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `anchor_text` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `rel` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL
);
CREATE TABLE `topciment_nl` (
  `id` int AUTO_INCREMENT NOT NULL PRIMARY KEY,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `url_origen` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `anchor_text` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `rel` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL
);
CREATE TABLE `smartcret_at` (
  `id` int AUTO_INCREMENT NOT NULL PRIMARY KEY,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `url_origen` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `anchor_text` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `rel` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL
);
CREATE TABLE `smartcret_be` (
  `id` int AUTO_INCREMENT NOT NULL PRIMARY KEY,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `url_origen` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `anchor_text` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `rel` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL
);
CREATE TABLE `smartcret_ch` (
  `id` int AUTO_INCREMENT NOT NULL PRIMARY KEY,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `url_origen` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `anchor_text` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `rel` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL
);
CREATE TABLE `smartcret_de` (
  `id` int AUTO_INCREMENT NOT NULL PRIMARY KEY,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `url_origen` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `anchor_text` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `rel` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL
);
CREATE TABLE `smartcret_in` (
  `id` int AUTO_INCREMENT NOT NULL PRIMARY KEY,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `url_origen` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `anchor_text` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `rel` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL
);
CREATE TABLE `smartcret_it` (
  `id` int AUTO_INCREMENT NOT NULL PRIMARY KEY,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `url_origen` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `anchor_text` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `rel` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL
);
CREATE TABLE `smartcret_mx` (
  `id` int AUTO_INCREMENT NOT NULL PRIMARY KEY,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `url_origen` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `anchor_text` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `rel` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL
);
CREATE TABLE `smartcret_nl` (
  `id` int AUTO_INCREMENT NOT NULL PRIMARY KEY,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `url_origen` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `anchor_text` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `rel` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL
);

CREATE TABLE `luxury_at` (
  `id` int AUTO_INCREMENT NOT NULL PRIMARY KEY,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `url_origen` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `anchor_text` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `rel` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL
);
CREATE TABLE `luxury_be` (
  `id` int AUTO_INCREMENT NOT NULL PRIMARY KEY,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `url_origen` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `anchor_text` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `rel` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL
);
CREATE TABLE `luxury_ch` (
  `id` int AUTO_INCREMENT NOT NULL PRIMARY KEY,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `url_origen` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `anchor_text` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `rel` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL
);
CREATE TABLE `luxury_de` (
  `id` int AUTO_INCREMENT NOT NULL PRIMARY KEY,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `url_origen` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `anchor_text` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `rel` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL
);
CREATE TABLE `luxury_in` (
  `id` int AUTO_INCREMENT NOT NULL PRIMARY KEY,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `url_origen` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `anchor_text` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `rel` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL
);
CREATE TABLE `luxury_it` (
  `id` int AUTO_INCREMENT NOT NULL PRIMARY KEY,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `url_origen` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `anchor_text` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `rel` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL
);
CREATE TABLE `luxury_mx` (
  `id` int AUTO_INCREMENT NOT NULL PRIMARY KEY,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `url_origen` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `anchor_text` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `rel` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL
);
CREATE TABLE `luxury_nl` (
  `id` int AUTO_INCREMENT NOT NULL PRIMARY KEY,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `url_origen` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `anchor_text` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `rel` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL
);

CREATE TABLE `myrevest_at` (
  `id` int AUTO_INCREMENT NOT NULL PRIMARY KEY,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `url_origen` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `anchor_text` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `rel` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL
);
CREATE TABLE `myrevest_be` (
  `id` int AUTO_INCREMENT NOT NULL PRIMARY KEY,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `url_origen` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `anchor_text` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `rel` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL
);
CREATE TABLE `myrevest_ch` (
  `id` int AUTO_INCREMENT NOT NULL PRIMARY KEY,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `url_origen` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `anchor_text` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `rel` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL
);
CREATE TABLE `myrevest_de` (
  `id` int AUTO_INCREMENT NOT NULL PRIMARY KEY,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `url_origen` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `anchor_text` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `rel` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL
);
CREATE TABLE `myrevest_fr` (
  `id` int AUTO_INCREMENT NOT NULL PRIMARY KEY,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `url_origen` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `anchor_text` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `rel` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL
);
CREATE TABLE `myrevest_in` (
  `id` int AUTO_INCREMENT NOT NULL PRIMARY KEY,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `url_origen` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `anchor_text` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `rel` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL
);
CREATE TABLE `myrevest_it` (
  `id` int AUTO_INCREMENT NOT NULL PRIMARY KEY,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `url_origen` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `anchor_text` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `rel` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL
);
CREATE TABLE `myrevest_mx` (
  `id` int AUTO_INCREMENT NOT NULL PRIMARY KEY,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `url_origen` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `anchor_text` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `rel` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL
);
CREATE TABLE `myrevest_nl` (
  `id` int AUTO_INCREMENT NOT NULL PRIMARY KEY,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `url_origen` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `anchor_text` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `rel` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL
);



ALTER TABLE rankings_es ADD INDEX idx_url (url);
ALTER TABLE rankings_es ADD INDEX idx_date (date);
ALTER TABLE rankings_es ADD INDEX idx_kw (kw);
ALTER TABLE rankings_es_localidades ADD INDEX idx_url (url);
ALTER TABLE rankings_es_localidades ADD INDEX idx_date (date);
ALTER TABLE rankings_es_localidades ADD INDEX idx_kw (kw);

ALTER TABLE rankings_at ADD INDEX idx_url (url);
ALTER TABLE rankings_at ADD INDEX idx_date (date);
ALTER TABLE rankings_at ADD INDEX idx_kw (kw);
ALTER TABLE rankings_at_localidades ADD INDEX idx_url (url);
ALTER TABLE rankings_at_localidades ADD INDEX idx_date (date);
ALTER TABLE rankings_at_localidades ADD INDEX idx_kw (kw);

ALTER TABLE rankings_au ADD INDEX idx_url (url);
ALTER TABLE rankings_au ADD INDEX idx_date (date);
ALTER TABLE rankings_au ADD INDEX idx_kw (kw);
ALTER TABLE rankings_au_localidades ADD INDEX idx_url (url);
ALTER TABLE rankings_au_localidades ADD INDEX idx_date (date);
ALTER TABLE rankings_au_localidades ADD INDEX idx_kw (kw);

ALTER TABLE rankings_be ADD INDEX idx_url (url);
ALTER TABLE rankings_be ADD INDEX idx_date (date);
ALTER TABLE rankings_be ADD INDEX idx_kw (kw);
ALTER TABLE rankings_be_localidades ADD INDEX idx_url (url);
ALTER TABLE rankings_be_localidades ADD INDEX idx_date (date);
ALTER TABLE rankings_be_localidades ADD INDEX idx_kw (kw);

ALTER TABLE rankings_ca ADD INDEX idx_url (url);
ALTER TABLE rankings_ca ADD INDEX idx_date (date);
ALTER TABLE rankings_ca ADD INDEX idx_kw (kw);
ALTER TABLE rankings_ca_localidades ADD INDEX idx_url (url);
ALTER TABLE rankings_ca_localidades ADD INDEX idx_date (date);
ALTER TABLE rankings_ca_localidades ADD INDEX idx_kw (kw);

ALTER TABLE rankings_ch ADD INDEX idx_url (url);
ALTER TABLE rankings_ch ADD INDEX idx_date (date);
ALTER TABLE rankings_ch ADD INDEX idx_kw (kw);
ALTER TABLE rankings_ch_localidades ADD INDEX idx_url (url);
ALTER TABLE rankings_ch_localidades ADD INDEX idx_date (date);
ALTER TABLE rankings_ch_localidades ADD INDEX idx_kw (kw);

ALTER TABLE rankings_de ADD INDEX idx_url (url);
ALTER TABLE rankings_de ADD INDEX idx_date (date);
ALTER TABLE rankings_de ADD INDEX idx_kw (kw);
ALTER TABLE rankings_de_localidades ADD INDEX idx_url (url);
ALTER TABLE rankings_de_localidades ADD INDEX idx_date (date);
ALTER TABLE rankings_de_localidades ADD INDEX idx_kw (kw);

ALTER TABLE rankings_fr ADD INDEX idx_url (url);
ALTER TABLE rankings_fr ADD INDEX idx_date (date);
ALTER TABLE rankings_fr ADD INDEX idx_kw (kw);
ALTER TABLE rankings_fr_localidades ADD INDEX idx_url (url);
ALTER TABLE rankings_fr_localidades ADD INDEX idx_date (date);
ALTER TABLE rankings_fr_localidades ADD INDEX idx_kw (kw);

ALTER TABLE rankings_gb ADD INDEX idx_url (url);
ALTER TABLE rankings_gb ADD INDEX idx_date (date);
ALTER TABLE rankings_gb ADD INDEX idx_kw (kw);
ALTER TABLE rankings_gb_localidades ADD INDEX idx_url (url);
ALTER TABLE rankings_gb_localidades ADD INDEX idx_date (date);
ALTER TABLE rankings_gb_localidades ADD INDEX idx_kw (kw);

ALTER TABLE rankings_in ADD INDEX idx_url (url);
ALTER TABLE rankings_in ADD INDEX idx_date (date);
ALTER TABLE rankings_in ADD INDEX idx_kw (kw);
ALTER TABLE rankings_in_localidades ADD INDEX idx_url (url);
ALTER TABLE rankings_in_localidades ADD INDEX idx_date (date);
ALTER TABLE rankings_in_localidades ADD INDEX idx_kw (kw);

ALTER TABLE rankings_it ADD INDEX idx_url (url);
ALTER TABLE rankings_it ADD INDEX idx_date (date);
ALTER TABLE rankings_it ADD INDEX idx_kw (kw);
ALTER TABLE rankings_it_localidades ADD INDEX idx_url (url);
ALTER TABLE rankings_it_localidades ADD INDEX idx_date (date);
ALTER TABLE rankings_it_localidades ADD INDEX idx_kw (kw);

ALTER TABLE rankings_mx ADD INDEX idx_url (url);
ALTER TABLE rankings_mx ADD INDEX idx_date (date);
ALTER TABLE rankings_mx ADD INDEX idx_kw (kw);
ALTER TABLE rankings_mx_localidades ADD INDEX idx_url (url);
ALTER TABLE rankings_mx_localidades ADD INDEX idx_date (date);
ALTER TABLE rankings_mx_localidades ADD INDEX idx_kw (kw);

ALTER TABLE rankings_nl ADD INDEX idx_url (url);
ALTER TABLE rankings_nl ADD INDEX idx_date (date);
ALTER TABLE rankings_nl ADD INDEX idx_kw (kw);
ALTER TABLE rankings_nl_localidades ADD INDEX idx_url (url);
ALTER TABLE rankings_nl_localidades ADD INDEX idx_date (date);
ALTER TABLE rankings_nl_localidades ADD INDEX idx_kw (kw);

ALTER TABLE rankings_us ADD INDEX idx_url (url);
ALTER TABLE rankings_us ADD INDEX idx_date (date);
ALTER TABLE rankings_us ADD INDEX idx_kw (kw);
ALTER TABLE rankings_us_localidades ADD INDEX idx_url (url);
ALTER TABLE rankings_us_localidades ADD INDEX idx_date (date);
ALTER TABLE rankings_us_localidades ADD INDEX idx_kw (kw);

ALTER TABLE topciment_at ADD INDEX idx_url_dest (url_destino);
ALTER TABLE topciment_au ADD INDEX idx_url_dest (url_destino);
ALTER TABLE topciment_be ADD INDEX idx_url_dest (url_destino);
ALTER TABLE topciment_ca ADD INDEX idx_url_dest (url_destino);
ALTER TABLE topciment_ch ADD INDEX idx_url_dest (url_destino);
ALTER TABLE topciment_de ADD INDEX idx_url_dest (url_destino);
ALTER TABLE topciment_es ADD INDEX idx_url_dest (url_destino);
ALTER TABLE topciment_fr ADD INDEX idx_url_dest (url_destino);
ALTER TABLE topciment_gb ADD INDEX idx_url_dest (url_destino);
ALTER TABLE topciment_in ADD INDEX idx_url_dest (url_destino);
ALTER TABLE topciment_it ADD INDEX idx_url_dest (url_destino);
ALTER TABLE topciment_mx ADD INDEX idx_url_dest (url_destino);
ALTER TABLE topciment_nl ADD INDEX idx_url_dest (url_destino);
ALTER TABLE topciment_us ADD INDEX idx_url_dest (url_destino);

ALTER TABLE luxury_at ADD INDEX idx_url_dest (url_destino);
ALTER TABLE luxury_au ADD INDEX idx_url_dest (url_destino);
ALTER TABLE luxury_be ADD INDEX idx_url_dest (url_destino);
ALTER TABLE luxury_ca ADD INDEX idx_url_dest (url_destino);
ALTER TABLE luxury_ch ADD INDEX idx_url_dest (url_destino);
ALTER TABLE luxury_de ADD INDEX idx_url_dest (url_destino);
ALTER TABLE luxury_es ADD INDEX idx_url_dest (url_destino);
ALTER TABLE luxury_fr ADD INDEX idx_url_dest (url_destino);
ALTER TABLE luxury_gb ADD INDEX idx_url_dest (url_destino);
ALTER TABLE luxury_in ADD INDEX idx_url_dest (url_destino);
ALTER TABLE luxury_it ADD INDEX idx_url_dest (url_destino);
ALTER TABLE luxury_mx ADD INDEX idx_url_dest (url_destino);
ALTER TABLE luxury_nl ADD INDEX idx_url_dest (url_destino);
ALTER TABLE luxury_us ADD INDEX idx_url_dest (url_destino);

ALTER TABLE smartcret_at ADD INDEX idx_url_dest (url_destino);
ALTER TABLE smartcret_au ADD INDEX idx_url_dest (url_destino);
ALTER TABLE smartcret_be ADD INDEX idx_url_dest (url_destino);
ALTER TABLE smartcret_ca ADD INDEX idx_url_dest (url_destino);
ALTER TABLE smartcret_ch ADD INDEX idx_url_dest (url_destino);
ALTER TABLE smartcret_de ADD INDEX idx_url_dest (url_destino);
ALTER TABLE smartcret_es ADD INDEX idx_url_dest (url_destino);
ALTER TABLE smartcret_fr ADD INDEX idx_url_dest (url_destino);
ALTER TABLE smartcret_gb ADD INDEX idx_url_dest (url_destino);
ALTER TABLE smartcret_in ADD INDEX idx_url_dest (url_destino);
ALTER TABLE smartcret_it ADD INDEX idx_url_dest (url_destino);
ALTER TABLE smartcret_mx ADD INDEX idx_url_dest (url_destino);
ALTER TABLE smartcret_nl ADD INDEX idx_url_dest (url_destino);
ALTER TABLE smartcret_us ADD INDEX idx_url_dest (url_destino);

ALTER TABLE myrevest_at ADD INDEX idx_url_dest (url_destino);
ALTER TABLE myrevest_au ADD INDEX idx_url_dest (url_destino);
ALTER TABLE myrevest_be ADD INDEX idx_url_dest (url_destino);
ALTER TABLE myrevest_ca ADD INDEX idx_url_dest (url_destino);
ALTER TABLE myrevest_ch ADD INDEX idx_url_dest (url_destino);
ALTER TABLE myrevest_de ADD INDEX idx_url_dest (url_destino);
ALTER TABLE myrevest_es ADD INDEX idx_url_dest (url_destino);
ALTER TABLE myrevest_fr ADD INDEX idx_url_dest (url_destino);
ALTER TABLE myrevest_gb ADD INDEX idx_url_dest (url_destino);
ALTER TABLE myrevest_in ADD INDEX idx_url_dest (url_destino);
ALTER TABLE myrevest_it ADD INDEX idx_url_dest (url_destino);
ALTER TABLE myrevest_mx ADD INDEX idx_url_dest (url_destino);
ALTER TABLE myrevest_nl ADD INDEX idx_url_dest (url_destino);
ALTER TABLE myrevest_us ADD INDEX idx_url_dest (url_destino);





select * from paises;
select * from empresas;
select * from users;
select * from plataformas;