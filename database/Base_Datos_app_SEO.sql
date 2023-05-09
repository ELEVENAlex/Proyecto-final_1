-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.11.2-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para admin_seo_topciment
CREATE DATABASE IF NOT EXISTS `admin_seo_topciment` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `admin_seo_topciment`;

-- Volcando estructura para tabla admin_seo_topciment.blogs_de
CREATE TABLE IF NOT EXISTS `blogs_de` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site` varchar(255) NOT NULL,
  `plataforma` varchar(25) NOT NULL DEFAULT '',
  `sponsored` tinyint(1) NOT NULL,
  `precio` float NOT NULL,
  `trafico_semrush` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.blogs_gb
CREATE TABLE IF NOT EXISTS `blogs_gb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site` varchar(255) NOT NULL,
  `plataforma` varchar(25) NOT NULL DEFAULT '',
  `sponsored` tinyint(1) NOT NULL,
  `precio` float NOT NULL,
  `trafico_semrush` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.blogs_it
CREATE TABLE IF NOT EXISTS `blogs_it` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site` varchar(255) NOT NULL,
  `plataforma` varchar(25) NOT NULL DEFAULT '',
  `sponsored` tinyint(1) NOT NULL,
  `precio` float NOT NULL,
  `trafico_semrush` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.blogs_us
CREATE TABLE IF NOT EXISTS `blogs_us` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site` varchar(255) NOT NULL,
  `plataforma` varchar(25) NOT NULL DEFAULT '',
  `sponsored` tinyint(1) NOT NULL,
  `precio` float NOT NULL,
  `trafico_semrush` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.carga_pagina
CREATE TABLE IF NOT EXISTS `carga_pagina` (
  `url` varchar(255) NOT NULL,
  `loading_ex` varchar(10) DEFAULT NULL,
  `loading_ex_cls` varchar(10) DEFAULT NULL,
  `loading_ex_inp` varchar(10) DEFAULT NULL,
  `loading_ex_ttfb` varchar(10) DEFAULT NULL,
  `loading_ex_fcp` varchar(10) DEFAULT NULL,
  `loading_ex_fid` varchar(10) DEFAULT NULL,
  `loading_ex_lcp` varchar(10) DEFAULT NULL,
  `origin_loading_ex` varchar(10) DEFAULT NULL,
  `origin_loading_ex_cls` varchar(10) DEFAULT NULL,
  `origin_loading_ex_inp` varchar(10) DEFAULT NULL,
  `origin_loading_ex_ttfb` varchar(10) DEFAULT NULL,
  `origin_loading_ex_fcp` varchar(10) DEFAULT NULL,
  `origin_loading_ex_fid` varchar(10) DEFAULT NULL,
  `origin_loading_ex_lcp` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.datos_facturacion
CREATE TABLE IF NOT EXISTS `datos_facturacion` (
  `uid` int(11) NOT NULL,
  `nombre_fiscal` varchar(255) NOT NULL,
  `nif_cif` varchar(10) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `cp` int(5) NOT NULL,
  `localidad` varchar(255) NOT NULL,
  `provincia` varchar(255) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.empresas
CREATE TABLE IF NOT EXISTS `empresas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.enlaces_localidades_at
CREATE TABLE IF NOT EXISTS `enlaces_localidades_at` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) NOT NULL,
  `url_origen` varchar(255) NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) NOT NULL,
  `anchor_text` varchar(255) NOT NULL,
  `rel` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.enlaces_localidades_au
CREATE TABLE IF NOT EXISTS `enlaces_localidades_au` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) NOT NULL,
  `url_origen` varchar(255) NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) NOT NULL,
  `anchor_text` varchar(255) NOT NULL,
  `rel` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.enlaces_localidades_be
CREATE TABLE IF NOT EXISTS `enlaces_localidades_be` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) NOT NULL,
  `url_origen` varchar(255) NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) NOT NULL,
  `anchor_text` varchar(255) NOT NULL,
  `rel` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.enlaces_localidades_ca
CREATE TABLE IF NOT EXISTS `enlaces_localidades_ca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) NOT NULL,
  `url_origen` varchar(255) NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) NOT NULL,
  `anchor_text` varchar(255) NOT NULL,
  `rel` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.enlaces_localidades_de
CREATE TABLE IF NOT EXISTS `enlaces_localidades_de` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) NOT NULL,
  `url_origen` varchar(255) NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) NOT NULL,
  `anchor_text` varchar(255) NOT NULL,
  `rel` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.enlaces_localidades_es
CREATE TABLE IF NOT EXISTS `enlaces_localidades_es` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) NOT NULL,
  `url_origen` varchar(255) NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) NOT NULL,
  `anchor_text` varchar(255) NOT NULL,
  `rel` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.enlaces_localidades_fr
CREATE TABLE IF NOT EXISTS `enlaces_localidades_fr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) NOT NULL,
  `url_origen` varchar(255) NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) NOT NULL,
  `anchor_text` varchar(255) NOT NULL,
  `rel` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.enlaces_localidades_gb
CREATE TABLE IF NOT EXISTS `enlaces_localidades_gb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) NOT NULL,
  `url_origen` varchar(255) NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) NOT NULL,
  `anchor_text` varchar(255) NOT NULL,
  `rel` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.enlaces_localidades_it
CREATE TABLE IF NOT EXISTS `enlaces_localidades_it` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) NOT NULL,
  `url_origen` varchar(255) NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) NOT NULL,
  `anchor_text` varchar(255) NOT NULL,
  `rel` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.enlaces_localidades_mx
CREATE TABLE IF NOT EXISTS `enlaces_localidades_mx` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) NOT NULL,
  `url_origen` varchar(255) NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) NOT NULL,
  `anchor_text` varchar(255) NOT NULL,
  `rel` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.enlaces_localidades_nl
CREATE TABLE IF NOT EXISTS `enlaces_localidades_nl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) NOT NULL,
  `url_origen` varchar(255) NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) NOT NULL,
  `anchor_text` varchar(255) NOT NULL,
  `rel` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.enlaces_localidades_sz
CREATE TABLE IF NOT EXISTS `enlaces_localidades_sz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) NOT NULL,
  `url_origen` varchar(255) NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) NOT NULL,
  `anchor_text` varchar(255) NOT NULL,
  `rel` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.enlaces_localidades_us
CREATE TABLE IF NOT EXISTS `enlaces_localidades_us` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) NOT NULL,
  `url_origen` varchar(255) NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) NOT NULL,
  `anchor_text` varchar(255) NOT NULL,
  `rel` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.inspection
CREATE TABLE IF NOT EXISTS `inspection` (
  `url` varchar(150) NOT NULL,
  `link` varchar(100) NOT NULL,
  `indexVerdict` varchar(30) DEFAULT NULL,
  `mobileVerdict` varchar(30) NOT NULL,
  `richVerdict` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.inspection_index
CREATE TABLE IF NOT EXISTS `inspection_index` (
  `googleCanonical` varchar(150) NOT NULL,
  `collection_key` varchar(50) DEFAULT NULL,
  `coverageState` varchar(50) DEFAULT NULL,
  `crawleAs` varchar(50) DEFAULT NULL,
  `indexingState` varchar(50) DEFAULT NULL,
  `lastCrawlTime` varchar(50) DEFAULT NULL,
  `pageFetchState` varchar(50) DEFAULT NULL,
  `robotsTxtState` varchar(50) DEFAULT NULL,
  `sitemap` varchar(50) DEFAULT NULL,
  `userCanonical` varchar(50) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  PRIMARY KEY (`googleCanonical`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.inspection_referring_urls
CREATE TABLE IF NOT EXISTS `inspection_referring_urls` (
  `url` varchar(150) NOT NULL,
  `index_url` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  KEY `index_id` (`index_url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.inspection_rich_d_items
CREATE TABLE IF NOT EXISTS `inspection_rich_d_items` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `url` varchar(150) NOT NULL,
  `type` varchar(100) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.inspection_rich_items
CREATE TABLE IF NOT EXISTS `inspection_rich_items` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `rich_d_item` int(30) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1545 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.kws_at
CREATE TABLE IF NOT EXISTS `kws_at` (
  `kw` varchar(255) NOT NULL,
  `cpc` float NOT NULL,
  `volume_search` int(11) NOT NULL,
  `url_topciment` varchar(255) NOT NULL,
  `url_myrevest` varchar(255) NOT NULL,
  `url_luxury` varchar(255) NOT NULL,
  `url_smartcret` varchar(255) NOT NULL,
  PRIMARY KEY (`kw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.kws_au
CREATE TABLE IF NOT EXISTS `kws_au` (
  `kw` varchar(255) NOT NULL,
  `cpc` float NOT NULL,
  `volume_search` int(11) NOT NULL,
  `url_topciment` varchar(255) NOT NULL,
  `url_myrevest` varchar(255) NOT NULL,
  `url_luxury` varchar(255) NOT NULL,
  `url_smartcret` varchar(255) NOT NULL,
  PRIMARY KEY (`kw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.kws_be
CREATE TABLE IF NOT EXISTS `kws_be` (
  `kw` varchar(255) NOT NULL,
  `cpc` float NOT NULL,
  `volume_search` int(11) NOT NULL,
  `url_topciment` varchar(255) NOT NULL,
  `url_myrevest` varchar(255) NOT NULL,
  `url_luxury` varchar(255) NOT NULL,
  `url_smartcret` varchar(255) NOT NULL,
  PRIMARY KEY (`kw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.kws_ca
CREATE TABLE IF NOT EXISTS `kws_ca` (
  `kw` varchar(255) NOT NULL,
  `cpc` float NOT NULL,
  `volume_search` int(11) NOT NULL,
  `url_topciment` varchar(255) NOT NULL,
  `url_myrevest` varchar(255) NOT NULL,
  `url_luxury` varchar(255) NOT NULL,
  `url_smartcret` varchar(255) NOT NULL,
  PRIMARY KEY (`kw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.kws_ch
CREATE TABLE IF NOT EXISTS `kws_ch` (
  `kw` varchar(255) NOT NULL,
  `cpc` float NOT NULL,
  `volume_search` int(11) NOT NULL,
  `url_topciment` varchar(255) NOT NULL,
  `url_myrevest` varchar(255) NOT NULL,
  `url_luxury` varchar(255) NOT NULL,
  `url_smartcret` varchar(255) NOT NULL,
  PRIMARY KEY (`kw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.kws_de
CREATE TABLE IF NOT EXISTS `kws_de` (
  `kw` varchar(255) NOT NULL,
  `cpc` float NOT NULL,
  `volume_search` int(11) NOT NULL,
  PRIMARY KEY (`kw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.kws_es
CREATE TABLE IF NOT EXISTS `kws_es` (
  `kw` varchar(255) NOT NULL,
  `cpc` float NOT NULL,
  `volume_search` int(11) NOT NULL,
  `url_topciment` varchar(255) NOT NULL,
  `url_myrevest` varchar(255) NOT NULL,
  `url_luxury` varchar(255) NOT NULL,
  `url_smartcret` varchar(255) NOT NULL,
  `target` varchar(25) NOT NULL DEFAULT 'microcemento',
  PRIMARY KEY (`kw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.kws_fr
CREATE TABLE IF NOT EXISTS `kws_fr` (
  `kw` varchar(255) NOT NULL,
  `cpc` float NOT NULL,
  `volume_search` int(11) NOT NULL,
  `url_topciment` varchar(255) NOT NULL,
  `url_myrevest` varchar(255) NOT NULL,
  `url_luxury` varchar(255) NOT NULL,
  `url_smartcret` varchar(255) NOT NULL,
  PRIMARY KEY (`kw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.kws_gb
CREATE TABLE IF NOT EXISTS `kws_gb` (
  `kw` varchar(255) NOT NULL,
  `cpc` float NOT NULL,
  `volume_search` int(11) NOT NULL,
  `url_topciment` varchar(255) NOT NULL,
  `url_myrevest` varchar(255) NOT NULL,
  `url_luxury` varchar(255) NOT NULL,
  `url_smartcret` varchar(255) NOT NULL,
  PRIMARY KEY (`kw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.kws_in
CREATE TABLE IF NOT EXISTS `kws_in` (
  `kw` varchar(255) NOT NULL,
  `cpc` float NOT NULL,
  `volume_search` int(11) NOT NULL,
  `url_topciment` varchar(255) NOT NULL,
  `url_myrevest` varchar(255) NOT NULL,
  `url_luxury` varchar(255) NOT NULL,
  `url_smartcret` varchar(255) NOT NULL,
  PRIMARY KEY (`kw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.kws_it
CREATE TABLE IF NOT EXISTS `kws_it` (
  `kw` varchar(255) NOT NULL,
  `cpc` float NOT NULL,
  `volume_search` int(11) NOT NULL,
  PRIMARY KEY (`kw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.kws_mx
CREATE TABLE IF NOT EXISTS `kws_mx` (
  `kw` varchar(255) NOT NULL,
  `cpc` float NOT NULL,
  `volume_search` int(11) NOT NULL,
  `url_topciment` varchar(255) NOT NULL,
  `url_myrevest` varchar(255) NOT NULL,
  `url_luxury` varchar(255) NOT NULL,
  `url_smartcret` varchar(255) NOT NULL,
  `target` varchar(25) NOT NULL DEFAULT 'microcemento',
  PRIMARY KEY (`kw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.kws_nl
CREATE TABLE IF NOT EXISTS `kws_nl` (
  `kw` varchar(255) NOT NULL,
  `cpc` float NOT NULL,
  `volume_search` int(11) NOT NULL,
  `url_topciment` varchar(255) NOT NULL,
  `url_myrevest` varchar(255) NOT NULL,
  `url_luxury` varchar(255) NOT NULL,
  `url_smartcret` varchar(255) NOT NULL,
  PRIMARY KEY (`kw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.kws_sz
CREATE TABLE IF NOT EXISTS `kws_sz` (
  `kw` varchar(255) NOT NULL,
  `cpc` float NOT NULL,
  `volume_search` int(11) NOT NULL,
  `url_topciment` varchar(255) NOT NULL,
  `url_myrevest` varchar(255) NOT NULL,
  `url_luxury` varchar(255) NOT NULL,
  `url_smartcret` varchar(255) NOT NULL,
  PRIMARY KEY (`kw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.kws_us
CREATE TABLE IF NOT EXISTS `kws_us` (
  `kw` varchar(255) NOT NULL,
  `cpc` float NOT NULL,
  `volume_search` int(11) NOT NULL,
  `url_topciment` varchar(255) NOT NULL,
  `url_myrevest` varchar(255) NOT NULL,
  `url_luxury` varchar(255) NOT NULL,
  `url_smartcret` varchar(255) NOT NULL,
  PRIMARY KEY (`kw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.localidades_at
CREATE TABLE IF NOT EXISTS `localidades_at` (
  `kw` varchar(255) NOT NULL,
  `cpc` float NOT NULL,
  `volume_search` int(11) NOT NULL,
  `url_topciment` varchar(255) NOT NULL,
  `url_myrevest` varchar(255) NOT NULL,
  `url_luxury` varchar(255) NOT NULL,
  `url_smartcret` varchar(255) NOT NULL,
  PRIMARY KEY (`kw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.localidades_au
CREATE TABLE IF NOT EXISTS `localidades_au` (
  `kw` varchar(255) NOT NULL,
  `cpc` float NOT NULL,
  `volume_search` int(11) NOT NULL,
  `url_topciment` varchar(255) NOT NULL,
  `url_myrevest` varchar(255) NOT NULL,
  `url_luxury` varchar(255) NOT NULL,
  `url_smartcret` varchar(255) NOT NULL,
  PRIMARY KEY (`kw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.localidades_be
CREATE TABLE IF NOT EXISTS `localidades_be` (
  `kw` varchar(255) NOT NULL,
  `cpc` float NOT NULL,
  `volume_search` int(11) NOT NULL,
  `url_topciment` varchar(255) NOT NULL,
  `url_myrevest` varchar(255) NOT NULL,
  `url_luxury` varchar(255) NOT NULL,
  `url_smartcret` varchar(255) NOT NULL,
  PRIMARY KEY (`kw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.localidades_ca
CREATE TABLE IF NOT EXISTS `localidades_ca` (
  `kw` varchar(255) NOT NULL,
  `cpc` float NOT NULL,
  `volume_search` int(11) NOT NULL,
  `url_topciment` varchar(255) NOT NULL,
  `url_myrevest` varchar(255) NOT NULL,
  `url_luxury` varchar(255) NOT NULL,
  `url_smartcret` varchar(255) NOT NULL,
  PRIMARY KEY (`kw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.localidades_ch
CREATE TABLE IF NOT EXISTS `localidades_ch` (
  `kw` varchar(255) NOT NULL,
  `cpc` float NOT NULL,
  `volume_search` int(11) NOT NULL,
  `url_topciment` varchar(255) NOT NULL,
  `url_myrevest` varchar(255) NOT NULL,
  `url_luxury` varchar(255) NOT NULL,
  `url_smartcret` varchar(255) NOT NULL,
  PRIMARY KEY (`kw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.localidades_de
CREATE TABLE IF NOT EXISTS `localidades_de` (
  `kw` varchar(255) NOT NULL,
  `cpc` float NOT NULL,
  `volume_search` int(11) NOT NULL,
  `url_topciment` varchar(255) NOT NULL,
  `url_myrevest` varchar(255) NOT NULL,
  `url_luxury` varchar(255) NOT NULL,
  `url_smartcret` varchar(255) NOT NULL,
  PRIMARY KEY (`kw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.localidades_es
CREATE TABLE IF NOT EXISTS `localidades_es` (
  `kw` varchar(255) NOT NULL,
  `cpc` float NOT NULL,
  `volume_search` int(11) NOT NULL,
  `url_topciment` varchar(255) NOT NULL,
  `url_myrevest` varchar(255) NOT NULL,
  `url_luxury` varchar(255) NOT NULL,
  `url_smartcret` varchar(255) NOT NULL,
  PRIMARY KEY (`kw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.localidades_fr
CREATE TABLE IF NOT EXISTS `localidades_fr` (
  `kw` varchar(255) NOT NULL,
  `cpc` float NOT NULL,
  `volume_search` int(11) NOT NULL,
  `url_topciment` varchar(255) NOT NULL,
  `url_myrevest` varchar(255) NOT NULL,
  `url_luxury` varchar(255) NOT NULL,
  `url_smartcret` varchar(255) NOT NULL,
  PRIMARY KEY (`kw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.localidades_gb
CREATE TABLE IF NOT EXISTS `localidades_gb` (
  `kw` varchar(255) NOT NULL,
  `cpc` float NOT NULL,
  `volume_search` int(11) NOT NULL,
  `url_topciment` varchar(255) NOT NULL,
  `url_myrevest` varchar(255) NOT NULL,
  `url_luxury` varchar(255) NOT NULL,
  `url_smartcret` varchar(255) NOT NULL,
  PRIMARY KEY (`kw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.localidades_in
CREATE TABLE IF NOT EXISTS `localidades_in` (
  `kw` varchar(255) NOT NULL,
  `cpc` float NOT NULL,
  `volume_search` int(11) NOT NULL,
  `url_topciment` varchar(255) NOT NULL,
  `url_myrevest` varchar(255) NOT NULL,
  `url_luxury` varchar(255) NOT NULL,
  `url_smartcret` varchar(255) NOT NULL,
  PRIMARY KEY (`kw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.localidades_it
CREATE TABLE IF NOT EXISTS `localidades_it` (
  `kw` varchar(255) NOT NULL,
  `cpc` float NOT NULL,
  `volume_search` int(11) NOT NULL,
  `url_topciment` varchar(255) NOT NULL,
  `url_myrevest` varchar(255) NOT NULL,
  `url_luxury` varchar(255) NOT NULL,
  `url_smartcret` varchar(255) NOT NULL,
  PRIMARY KEY (`kw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.localidades_mx
CREATE TABLE IF NOT EXISTS `localidades_mx` (
  `kw` varchar(255) NOT NULL,
  `cpc` float NOT NULL,
  `volume_search` int(11) NOT NULL,
  `url_topciment` varchar(255) NOT NULL,
  `url_myrevest` varchar(255) NOT NULL,
  `url_luxury` varchar(255) NOT NULL,
  `url_smartcret` varchar(255) NOT NULL,
  PRIMARY KEY (`kw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.localidades_nl
CREATE TABLE IF NOT EXISTS `localidades_nl` (
  `kw` varchar(255) NOT NULL,
  `cpc` float NOT NULL,
  `volume_search` int(11) NOT NULL,
  `url_topciment` varchar(255) NOT NULL,
  `url_myrevest` varchar(255) NOT NULL,
  `url_luxury` varchar(255) NOT NULL,
  `url_smartcret` varchar(255) NOT NULL,
  PRIMARY KEY (`kw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.localidades_sz
CREATE TABLE IF NOT EXISTS `localidades_sz` (
  `kw` varchar(255) NOT NULL,
  `cpc` float NOT NULL,
  `volume_search` int(11) NOT NULL,
  `url_topciment` varchar(255) NOT NULL,
  `url_myrevest` varchar(255) NOT NULL,
  `url_luxury` varchar(255) NOT NULL,
  `url_smartcret` varchar(255) NOT NULL,
  PRIMARY KEY (`kw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.localidades_us
CREATE TABLE IF NOT EXISTS `localidades_us` (
  `kw` varchar(255) NOT NULL,
  `cpc` float NOT NULL,
  `volume_search` int(11) NOT NULL,
  `url_topciment` varchar(255) NOT NULL,
  `url_myrevest` varchar(255) NOT NULL,
  `url_luxury` varchar(255) NOT NULL,
  `url_smartcret` varchar(255) NOT NULL,
  PRIMARY KEY (`kw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.luxury_at
CREATE TABLE IF NOT EXISTS `luxury_at` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `url_origen` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `anchor_text` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `rel` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `estado` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.luxury_au
CREATE TABLE IF NOT EXISTS `luxury_au` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) NOT NULL,
  `url_origen` varchar(255) NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) NOT NULL,
  `anchor_text` varchar(255) NOT NULL,
  `rel` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.luxury_be
CREATE TABLE IF NOT EXISTS `luxury_be` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `url_origen` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `anchor_text` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `rel` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `estado` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.luxury_ca
CREATE TABLE IF NOT EXISTS `luxury_ca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) NOT NULL,
  `url_origen` varchar(255) NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) NOT NULL,
  `anchor_text` varchar(255) NOT NULL,
  `rel` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.luxury_ch
CREATE TABLE IF NOT EXISTS `luxury_ch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `url_origen` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `anchor_text` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `rel` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `estado` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.luxury_de
CREATE TABLE IF NOT EXISTS `luxury_de` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `url_origen` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `anchor_text` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `rel` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `estado` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.luxury_es
CREATE TABLE IF NOT EXISTS `luxury_es` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) NOT NULL,
  `url_origen` varchar(255) NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) NOT NULL,
  `anchor_text` varchar(255) NOT NULL,
  `rel` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_destino` (`url_destino`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.luxury_fr
CREATE TABLE IF NOT EXISTS `luxury_fr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) NOT NULL,
  `url_origen` varchar(255) NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) NOT NULL,
  `anchor_text` varchar(255) NOT NULL,
  `rel` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.luxury_gb
CREATE TABLE IF NOT EXISTS `luxury_gb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) NOT NULL,
  `url_origen` varchar(255) NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) NOT NULL,
  `anchor_text` varchar(255) NOT NULL,
  `rel` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.luxury_in
CREATE TABLE IF NOT EXISTS `luxury_in` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `url_origen` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `anchor_text` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `rel` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `estado` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.luxury_it
CREATE TABLE IF NOT EXISTS `luxury_it` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `url_origen` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `anchor_text` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `rel` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `estado` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.luxury_mx
CREATE TABLE IF NOT EXISTS `luxury_mx` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `url_origen` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `anchor_text` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `rel` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `estado` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.luxury_nl
CREATE TABLE IF NOT EXISTS `luxury_nl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `url_origen` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `anchor_text` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `rel` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `estado` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.luxury_us
CREATE TABLE IF NOT EXISTS `luxury_us` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) NOT NULL,
  `url_origen` varchar(255) NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) NOT NULL,
  `anchor_text` varchar(255) NOT NULL,
  `rel` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.myrevest_at
CREATE TABLE IF NOT EXISTS `myrevest_at` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `url_origen` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `anchor_text` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `rel` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `estado` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.myrevest_au
CREATE TABLE IF NOT EXISTS `myrevest_au` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) NOT NULL,
  `url_origen` varchar(255) NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) NOT NULL,
  `anchor_text` varchar(255) NOT NULL,
  `rel` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.myrevest_be
CREATE TABLE IF NOT EXISTS `myrevest_be` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `url_origen` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `anchor_text` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `rel` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `estado` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.myrevest_ca
CREATE TABLE IF NOT EXISTS `myrevest_ca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) NOT NULL,
  `url_origen` varchar(255) NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) NOT NULL,
  `anchor_text` varchar(255) NOT NULL,
  `rel` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.myrevest_ch
CREATE TABLE IF NOT EXISTS `myrevest_ch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `url_origen` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `anchor_text` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `rel` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `estado` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.myrevest_de
CREATE TABLE IF NOT EXISTS `myrevest_de` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `url_origen` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `anchor_text` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `rel` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `estado` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.myrevest_es
CREATE TABLE IF NOT EXISTS `myrevest_es` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) NOT NULL,
  `url_origen` varchar(255) NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) NOT NULL,
  `anchor_text` varchar(255) NOT NULL,
  `rel` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_destino` (`url_destino`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.myrevest_fr
CREATE TABLE IF NOT EXISTS `myrevest_fr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `url_origen` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `anchor_text` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `rel` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `estado` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.myrevest_gb
CREATE TABLE IF NOT EXISTS `myrevest_gb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) NOT NULL,
  `url_origen` varchar(255) NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) NOT NULL,
  `anchor_text` varchar(255) NOT NULL,
  `rel` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.myrevest_in
CREATE TABLE IF NOT EXISTS `myrevest_in` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `url_origen` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `anchor_text` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `rel` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `estado` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.myrevest_it
CREATE TABLE IF NOT EXISTS `myrevest_it` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `url_origen` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `anchor_text` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `rel` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `estado` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.myrevest_mx
CREATE TABLE IF NOT EXISTS `myrevest_mx` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `url_origen` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `anchor_text` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `rel` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `estado` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.myrevest_nl
CREATE TABLE IF NOT EXISTS `myrevest_nl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `url_origen` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `anchor_text` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `rel` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `estado` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.myrevest_us
CREATE TABLE IF NOT EXISTS `myrevest_us` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) NOT NULL,
  `url_origen` varchar(255) NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) NOT NULL,
  `anchor_text` varchar(255) NOT NULL,
  `rel` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.paises
CREATE TABLE IF NOT EXISTS `paises` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pais` varchar(50) NOT NULL,
  `iso_code` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.periodicos_es
CREATE TABLE IF NOT EXISTS `periodicos_es` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `localidad` varchar(20) NOT NULL,
  `site` varchar(255) NOT NULL,
  `plataforma` varchar(25) NOT NULL DEFAULT '',
  `sponsored` tinyint(1) NOT NULL,
  `precio` float NOT NULL,
  `trafico_semrush` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.plataformas
CREATE TABLE IF NOT EXISTS `plataformas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.ps_luxury
CREATE TABLE IF NOT EXISTS `ps_luxury` (
  `url` varchar(255) NOT NULL,
  `p_rendimiento` int(11) NOT NULL,
  `p_fcp` int(11) NOT NULL,
  `p_si` int(11) NOT NULL,
  `p_lcp` int(11) NOT NULL,
  `p_tti` int(11) NOT NULL,
  `p_fmp` int(11) NOT NULL,
  `p_mpfid` int(11) NOT NULL,
  `p_tbt` int(11) NOT NULL,
  `p_cls` int(11) NOT NULL,
  `p_cofcp` varchar(255) NOT NULL,
  `p_trs` varchar(255) NOT NULL,
  `p_tejc` varchar(255) NOT NULL,
  `p_mtspc` varchar(255) NOT NULL,
  `p_tvwf` varchar(255) NOT NULL,
  `p_iaa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.ps_myrevest
CREATE TABLE IF NOT EXISTS `ps_myrevest` (
  `url` varchar(255) NOT NULL,
  `p_rendimiento` int(11) NOT NULL,
  `p_fcp` int(11) NOT NULL,
  `p_si` int(11) NOT NULL,
  `p_lcp` int(11) NOT NULL,
  `p_tti` int(11) NOT NULL,
  `p_fmp` int(11) NOT NULL,
  `p_mpfid` int(11) NOT NULL,
  `p_tbt` int(11) NOT NULL,
  `p_cls` int(11) NOT NULL,
  `p_cofcp` varchar(255) NOT NULL,
  `p_trs` varchar(255) NOT NULL,
  `p_tejc` varchar(255) NOT NULL,
  `p_mtspc` varchar(255) NOT NULL,
  `p_tvwf` varchar(255) NOT NULL,
  `p_iaa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.ps_smartcret
CREATE TABLE IF NOT EXISTS `ps_smartcret` (
  `url` varchar(255) NOT NULL,
  `p_rendimiento` int(11) NOT NULL,
  `p_fcp` int(11) NOT NULL,
  `p_si` int(11) NOT NULL,
  `p_lcp` int(11) NOT NULL,
  `p_tti` int(11) NOT NULL,
  `p_fmp` int(11) NOT NULL,
  `p_mpfid` int(11) NOT NULL,
  `p_tbt` int(11) NOT NULL,
  `p_cls` int(11) NOT NULL,
  `p_cofcp` varchar(255) NOT NULL,
  `p_trs` varchar(255) NOT NULL,
  `p_tejc` varchar(255) NOT NULL,
  `p_mtspc` varchar(255) NOT NULL,
  `p_tvwf` varchar(255) NOT NULL,
  `p_iaa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.ps_topciment
CREATE TABLE IF NOT EXISTS `ps_topciment` (
  `url` varchar(255) NOT NULL,
  `p_rendimiento` int(11) NOT NULL,
  `p_fcp` int(11) NOT NULL,
  `p_si` int(11) NOT NULL,
  `p_lcp` int(11) NOT NULL,
  `p_tti` int(11) NOT NULL,
  `p_fmp` int(11) NOT NULL,
  `p_mpfid` int(11) NOT NULL,
  `p_tbt` int(11) NOT NULL,
  `p_cls` int(11) NOT NULL,
  `p_cofcp` varchar(255) NOT NULL,
  `p_trs` varchar(255) NOT NULL,
  `p_tejc` varchar(255) NOT NULL,
  `p_mtspc` varchar(255) NOT NULL,
  `p_tvwf` varchar(255) NOT NULL,
  `p_iaa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.publisuites_es
CREATE TABLE IF NOT EXISTS `publisuites_es` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site` varchar(255) NOT NULL,
  `plataforma` varchar(25) NOT NULL DEFAULT '',
  `sponsored` tinyint(1) NOT NULL,
  `precio` float NOT NULL,
  `trafico_semrush` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1004 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.rankings_at
CREATE TABLE IF NOT EXISTS `rankings_at` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kw` varchar(255) NOT NULL,
  `rank` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_url` (`url`),
  KEY `idx_date` (`date`),
  KEY `idx_kw` (`kw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.rankings_at_localidades
CREATE TABLE IF NOT EXISTS `rankings_at_localidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kw` varchar(255) NOT NULL,
  `rank` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_url` (`url`),
  KEY `idx_date` (`date`),
  KEY `idx_kw` (`kw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.rankings_au
CREATE TABLE IF NOT EXISTS `rankings_au` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kw` varchar(255) NOT NULL,
  `rank` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_url` (`url`),
  KEY `idx_date` (`date`),
  KEY `idx_kw` (`kw`)
) ENGINE=InnoDB AUTO_INCREMENT=711450 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.rankings_au_localidades
CREATE TABLE IF NOT EXISTS `rankings_au_localidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kw` varchar(255) NOT NULL,
  `rank` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_url` (`url`),
  KEY `idx_date` (`date`),
  KEY `idx_kw` (`kw`)
) ENGINE=InnoDB AUTO_INCREMENT=79077 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.rankings_be
CREATE TABLE IF NOT EXISTS `rankings_be` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kw` varchar(255) NOT NULL,
  `rank` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_url` (`url`),
  KEY `idx_date` (`date`),
  KEY `idx_kw` (`kw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.rankings_be_localidades
CREATE TABLE IF NOT EXISTS `rankings_be_localidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kw` varchar(255) NOT NULL,
  `rank` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_url` (`url`),
  KEY `idx_date` (`date`),
  KEY `idx_kw` (`kw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.rankings_ca
CREATE TABLE IF NOT EXISTS `rankings_ca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kw` varchar(255) NOT NULL,
  `rank` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_url` (`url`),
  KEY `idx_date` (`date`),
  KEY `idx_kw` (`kw`)
) ENGINE=InnoDB AUTO_INCREMENT=696696 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.rankings_ca_localidades
CREATE TABLE IF NOT EXISTS `rankings_ca_localidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kw` varchar(255) NOT NULL,
  `rank` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_url` (`url`),
  KEY `idx_date` (`date`),
  KEY `idx_kw` (`kw`)
) ENGINE=InnoDB AUTO_INCREMENT=93890 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.rankings_ch
CREATE TABLE IF NOT EXISTS `rankings_ch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kw` varchar(255) NOT NULL,
  `rank` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_url` (`url`),
  KEY `idx_date` (`date`),
  KEY `idx_kw` (`kw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.rankings_ch_localidades
CREATE TABLE IF NOT EXISTS `rankings_ch_localidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kw` varchar(255) NOT NULL,
  `rank` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_url` (`url`),
  KEY `idx_date` (`date`),
  KEY `idx_kw` (`kw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.rankings_de
CREATE TABLE IF NOT EXISTS `rankings_de` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kw` varchar(255) NOT NULL,
  `rank` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_url` (`url`),
  KEY `idx_date` (`date`),
  KEY `idx_kw` (`kw`)
) ENGINE=InnoDB AUTO_INCREMENT=597238 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.rankings_de_localidades
CREATE TABLE IF NOT EXISTS `rankings_de_localidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kw` varchar(255) NOT NULL,
  `rank` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_url` (`url`),
  KEY `idx_date` (`date`),
  KEY `idx_kw` (`kw`)
) ENGINE=InnoDB AUTO_INCREMENT=109402 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.rankings_es
CREATE TABLE IF NOT EXISTS `rankings_es` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kw` varchar(255) NOT NULL,
  `rank` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_kw` (`kw`),
  KEY `idx_date` (`date`),
  KEY `idx_url` (`url`)
) ENGINE=InnoDB AUTO_INCREMENT=1835806 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.rankings_es_localidades
CREATE TABLE IF NOT EXISTS `rankings_es_localidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kw` varchar(255) NOT NULL,
  `rank` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_kw` (`kw`),
  KEY `idx_url` (`url`),
  KEY `idx_date` (`date`),
  KEY `idx_rank` (`rank`)
) ENGINE=InnoDB AUTO_INCREMENT=864340 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.rankings_fr
CREATE TABLE IF NOT EXISTS `rankings_fr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kw` varchar(255) NOT NULL,
  `rank` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_url` (`url`),
  KEY `idx_date` (`date`),
  KEY `idx_kw` (`kw`)
) ENGINE=InnoDB AUTO_INCREMENT=878658 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.rankings_fr_localidades
CREATE TABLE IF NOT EXISTS `rankings_fr_localidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kw` varchar(255) NOT NULL,
  `rank` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_url` (`url`),
  KEY `idx_date` (`date`),
  KEY `idx_kw` (`kw`)
) ENGINE=InnoDB AUTO_INCREMENT=374453 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.rankings_gb
CREATE TABLE IF NOT EXISTS `rankings_gb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kw` varchar(255) NOT NULL,
  `rank` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_url` (`url`),
  KEY `idx_date` (`date`),
  KEY `idx_kw` (`kw`)
) ENGINE=InnoDB AUTO_INCREMENT=821575 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.rankings_gb_localidades
CREATE TABLE IF NOT EXISTS `rankings_gb_localidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kw` varchar(255) NOT NULL,
  `rank` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_url` (`url`),
  KEY `idx_date` (`date`),
  KEY `idx_kw` (`kw`)
) ENGINE=InnoDB AUTO_INCREMENT=180356 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.rankings_in
CREATE TABLE IF NOT EXISTS `rankings_in` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kw` varchar(255) NOT NULL,
  `rank` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_url` (`url`),
  KEY `idx_date` (`date`),
  KEY `idx_kw` (`kw`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.rankings_in_localidades
CREATE TABLE IF NOT EXISTS `rankings_in_localidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kw` varchar(255) NOT NULL,
  `rank` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_url` (`url`),
  KEY `idx_date` (`date`),
  KEY `idx_kw` (`kw`)
) ENGINE=InnoDB AUTO_INCREMENT=53842 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.rankings_it
CREATE TABLE IF NOT EXISTS `rankings_it` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kw` varchar(255) NOT NULL,
  `rank` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_url` (`url`),
  KEY `idx_date` (`date`),
  KEY `idx_kw` (`kw`)
) ENGINE=InnoDB AUTO_INCREMENT=695625 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.rankings_it_localidades
CREATE TABLE IF NOT EXISTS `rankings_it_localidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kw` varchar(255) NOT NULL,
  `rank` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_url` (`url`),
  KEY `idx_date` (`date`),
  KEY `idx_kw` (`kw`)
) ENGINE=InnoDB AUTO_INCREMENT=209064 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.rankings_mx
CREATE TABLE IF NOT EXISTS `rankings_mx` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kw` varchar(255) NOT NULL,
  `rank` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_url` (`url`),
  KEY `idx_date` (`date`),
  KEY `idx_kw` (`kw`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.rankings_nl
CREATE TABLE IF NOT EXISTS `rankings_nl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kw` varchar(255) NOT NULL,
  `rank` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_url` (`url`),
  KEY `idx_date` (`date`),
  KEY `idx_kw` (`kw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.rankings_nl_localidades
CREATE TABLE IF NOT EXISTS `rankings_nl_localidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kw` varchar(255) NOT NULL,
  `rank` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_url` (`url`),
  KEY `idx_date` (`date`),
  KEY `idx_kw` (`kw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.rankings_sz
CREATE TABLE IF NOT EXISTS `rankings_sz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kw` varchar(255) NOT NULL,
  `rank` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.rankings_sz_localidades
CREATE TABLE IF NOT EXISTS `rankings_sz_localidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kw` varchar(255) NOT NULL,
  `rank` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.rankings_us
CREATE TABLE IF NOT EXISTS `rankings_us` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kw` varchar(255) NOT NULL,
  `rank` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_url` (`url`),
  KEY `idx_date` (`date`),
  KEY `idx_kw` (`kw`)
) ENGINE=InnoDB AUTO_INCREMENT=391034 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.rankings_us_localidades
CREATE TABLE IF NOT EXISTS `rankings_us_localidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kw` varchar(255) NOT NULL,
  `rank` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_url` (`url`),
  KEY `idx_date` (`date`),
  KEY `idx_kw` (`kw`)
) ENGINE=InnoDB AUTO_INCREMENT=80672 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) unsigned NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.sitios_localidades_at
CREATE TABLE IF NOT EXISTS `sitios_localidades_at` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `localidad` varchar(20) NOT NULL,
  `sitio` varchar(100) NOT NULL,
  `target` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.sitios_localidades_au
CREATE TABLE IF NOT EXISTS `sitios_localidades_au` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `localidad` varchar(20) NOT NULL,
  `sitio` varchar(100) NOT NULL,
  `target` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.sitios_localidades_be
CREATE TABLE IF NOT EXISTS `sitios_localidades_be` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `localidad` varchar(20) NOT NULL,
  `sitio` varchar(100) NOT NULL,
  `target` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.sitios_localidades_ca
CREATE TABLE IF NOT EXISTS `sitios_localidades_ca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `localidad` varchar(20) NOT NULL,
  `sitio` varchar(100) NOT NULL,
  `target` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.sitios_localidades_ch
CREATE TABLE IF NOT EXISTS `sitios_localidades_ch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `localidad` varchar(20) NOT NULL,
  `sitio` varchar(100) NOT NULL,
  `target` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.sitios_localidades_de
CREATE TABLE IF NOT EXISTS `sitios_localidades_de` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `localidad` varchar(20) NOT NULL,
  `sitio` varchar(100) NOT NULL,
  `target` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.sitios_localidades_es
CREATE TABLE IF NOT EXISTS `sitios_localidades_es` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `localidad` varchar(20) NOT NULL,
  `sitio` varchar(100) NOT NULL,
  `target` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=268 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.sitios_localidades_fr
CREATE TABLE IF NOT EXISTS `sitios_localidades_fr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `localidad` varchar(20) NOT NULL,
  `sitio` varchar(100) NOT NULL,
  `target` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.sitios_localidades_gb
CREATE TABLE IF NOT EXISTS `sitios_localidades_gb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `localidad` varchar(20) NOT NULL,
  `sitio` varchar(100) NOT NULL,
  `target` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.sitios_localidades_in
CREATE TABLE IF NOT EXISTS `sitios_localidades_in` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `localidad` varchar(20) NOT NULL,
  `sitio` varchar(100) NOT NULL,
  `target` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.sitios_localidades_it
CREATE TABLE IF NOT EXISTS `sitios_localidades_it` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `localidad` varchar(20) NOT NULL,
  `sitio` varchar(100) NOT NULL,
  `target` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.sitios_localidades_mx
CREATE TABLE IF NOT EXISTS `sitios_localidades_mx` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `localidad` varchar(20) NOT NULL,
  `sitio` varchar(100) NOT NULL,
  `target` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.sitios_localidades_nl
CREATE TABLE IF NOT EXISTS `sitios_localidades_nl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `localidad` varchar(20) NOT NULL,
  `sitio` varchar(100) NOT NULL,
  `target` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.sitios_localidades_sz
CREATE TABLE IF NOT EXISTS `sitios_localidades_sz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `localidad` varchar(20) NOT NULL,
  `sitio` varchar(100) NOT NULL,
  `target` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.sitios_localidades_us
CREATE TABLE IF NOT EXISTS `sitios_localidades_us` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `localidad` varchar(20) NOT NULL,
  `sitio` varchar(100) NOT NULL,
  `target` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.smartcret_at
CREATE TABLE IF NOT EXISTS `smartcret_at` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `url_origen` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `anchor_text` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `rel` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `estado` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.smartcret_au
CREATE TABLE IF NOT EXISTS `smartcret_au` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) NOT NULL,
  `url_origen` varchar(255) NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) NOT NULL,
  `anchor_text` varchar(255) NOT NULL,
  `rel` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.smartcret_be
CREATE TABLE IF NOT EXISTS `smartcret_be` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `url_origen` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `anchor_text` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `rel` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `estado` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.smartcret_ca
CREATE TABLE IF NOT EXISTS `smartcret_ca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) NOT NULL,
  `url_origen` varchar(255) NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) NOT NULL,
  `anchor_text` varchar(255) NOT NULL,
  `rel` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.smartcret_ch
CREATE TABLE IF NOT EXISTS `smartcret_ch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `url_origen` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `anchor_text` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `rel` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `estado` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.smartcret_de
CREATE TABLE IF NOT EXISTS `smartcret_de` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `url_origen` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `anchor_text` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `rel` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `estado` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.smartcret_es
CREATE TABLE IF NOT EXISTS `smartcret_es` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) NOT NULL,
  `url_origen` varchar(255) NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) NOT NULL,
  `anchor_text` varchar(255) NOT NULL,
  `rel` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_destino` (`url_destino`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.smartcret_fr
CREATE TABLE IF NOT EXISTS `smartcret_fr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) NOT NULL,
  `url_origen` varchar(255) NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) NOT NULL,
  `anchor_text` varchar(255) NOT NULL,
  `rel` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.smartcret_gb
CREATE TABLE IF NOT EXISTS `smartcret_gb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) NOT NULL,
  `url_origen` varchar(255) NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) NOT NULL,
  `anchor_text` varchar(255) NOT NULL,
  `rel` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.smartcret_in
CREATE TABLE IF NOT EXISTS `smartcret_in` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `url_origen` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `anchor_text` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `rel` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `estado` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.smartcret_it
CREATE TABLE IF NOT EXISTS `smartcret_it` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `url_origen` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `anchor_text` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `rel` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `estado` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.smartcret_mx
CREATE TABLE IF NOT EXISTS `smartcret_mx` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `url_origen` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `anchor_text` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `rel` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `estado` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.smartcret_nl
CREATE TABLE IF NOT EXISTS `smartcret_nl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `url_origen` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `anchor_text` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `rel` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `estado` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.smartcret_us
CREATE TABLE IF NOT EXISTS `smartcret_us` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) NOT NULL,
  `url_origen` varchar(255) NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) NOT NULL,
  `anchor_text` varchar(255) NOT NULL,
  `rel` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.topciment_at
CREATE TABLE IF NOT EXISTS `topciment_at` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `url_origen` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `anchor_text` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `rel` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `estado` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.topciment_au
CREATE TABLE IF NOT EXISTS `topciment_au` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) NOT NULL,
  `url_origen` varchar(255) NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) NOT NULL,
  `anchor_text` varchar(255) NOT NULL,
  `rel` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.topciment_be
CREATE TABLE IF NOT EXISTS `topciment_be` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) NOT NULL,
  `url_origen` varchar(255) NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) NOT NULL,
  `anchor_text` varchar(255) NOT NULL,
  `rel` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.topciment_ca
CREATE TABLE IF NOT EXISTS `topciment_ca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) NOT NULL,
  `url_origen` varchar(255) NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) NOT NULL,
  `anchor_text` varchar(255) NOT NULL,
  `rel` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.topciment_ch
CREATE TABLE IF NOT EXISTS `topciment_ch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `url_origen` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `anchor_text` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `rel` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `estado` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.topciment_de
CREATE TABLE IF NOT EXISTS `topciment_de` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) NOT NULL,
  `url_origen` varchar(255) NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) NOT NULL,
  `anchor_text` varchar(255) NOT NULL,
  `rel` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.topciment_es
CREATE TABLE IF NOT EXISTS `topciment_es` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) NOT NULL,
  `url_origen` varchar(255) NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) NOT NULL,
  `anchor_text` varchar(255) NOT NULL,
  `rel` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_destino` (`url_destino`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=265 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.topciment_fr
CREATE TABLE IF NOT EXISTS `topciment_fr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) NOT NULL,
  `url_origen` varchar(255) NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) NOT NULL,
  `anchor_text` varchar(255) NOT NULL,
  `rel` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.topciment_gb
CREATE TABLE IF NOT EXISTS `topciment_gb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) NOT NULL,
  `url_origen` varchar(255) NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) NOT NULL,
  `anchor_text` varchar(255) NOT NULL,
  `rel` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.topciment_in
CREATE TABLE IF NOT EXISTS `topciment_in` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) NOT NULL,
  `url_origen` varchar(255) NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) NOT NULL,
  `anchor_text` varchar(255) NOT NULL,
  `rel` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.topciment_it
CREATE TABLE IF NOT EXISTS `topciment_it` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) NOT NULL,
  `url_origen` varchar(255) NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) NOT NULL,
  `anchor_text` varchar(255) NOT NULL,
  `rel` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.topciment_mx
CREATE TABLE IF NOT EXISTS `topciment_mx` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) NOT NULL,
  `url_origen` varchar(255) NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) NOT NULL,
  `anchor_text` varchar(255) NOT NULL,
  `rel` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.topciment_nl
CREATE TABLE IF NOT EXISTS `topciment_nl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `url_origen` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `anchor_text` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `rel` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `estado` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.topciment_us
CREATE TABLE IF NOT EXISTS `topciment_us` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_encargo` date NOT NULL,
  `url_destino` varchar(255) NOT NULL,
  `url_origen` varchar(255) NOT NULL,
  `coste` float NOT NULL,
  `plataforma` varchar(50) NOT NULL,
  `anchor_text` varchar(255) NOT NULL,
  `rel` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_entrega` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url_dest` (`url_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.visibilidad_at
CREATE TABLE IF NOT EXISTS `visibilidad_at` (
  `topciment_todo` float NOT NULL,
  `myrevest_todo` float NOT NULL,
  `luxury_todo` float NOT NULL,
  `smartcret_todo` float NOT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.visibilidad_au
CREATE TABLE IF NOT EXISTS `visibilidad_au` (
  `topciment_todo` float NOT NULL,
  `myrevest_todo` float NOT NULL,
  `luxury_todo` float NOT NULL,
  `smartcret_todo` float NOT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.visibilidad_be
CREATE TABLE IF NOT EXISTS `visibilidad_be` (
  `topciment_todo` float NOT NULL,
  `myrevest_todo` float NOT NULL,
  `luxury_todo` float NOT NULL,
  `smartcret_todo` float NOT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.visibilidad_ca
CREATE TABLE IF NOT EXISTS `visibilidad_ca` (
  `topciment_todo` float NOT NULL,
  `myrevest_todo` float NOT NULL,
  `luxury_todo` float NOT NULL,
  `smartcret_todo` float NOT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.visibilidad_ch
CREATE TABLE IF NOT EXISTS `visibilidad_ch` (
  `topciment_todo` float NOT NULL,
  `myrevest_todo` float NOT NULL,
  `luxury_todo` float NOT NULL,
  `smartcret_todo` float NOT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.visibilidad_de
CREATE TABLE IF NOT EXISTS `visibilidad_de` (
  `topciment_todo` float NOT NULL,
  `myrevest_todo` float NOT NULL,
  `luxury_todo` float NOT NULL,
  `smartcret_todo` float NOT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.visibilidad_es
CREATE TABLE IF NOT EXISTS `visibilidad_es` (
  `topciment_todo` float NOT NULL,
  `topciment_microcemento` float NOT NULL,
  `topciment_pintura` float NOT NULL,
  `topciment_hormigon` float NOT NULL,
  `myrevest_todo` float NOT NULL,
  `myrevest_microcemento` float NOT NULL,
  `myrevest_pintura` float NOT NULL,
  `myrevest_hormigon` float NOT NULL,
  `luxury_todo` float NOT NULL,
  `luxury_microcemento` float NOT NULL,
  `luxury_pintura` float NOT NULL,
  `luxury_hormigon` float NOT NULL,
  `smartcret_todo` float NOT NULL,
  `smartcret_microcemento` float NOT NULL,
  `smartcret_pintura` float NOT NULL,
  `smartcret_hormigon` float NOT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.visibilidad_fr
CREATE TABLE IF NOT EXISTS `visibilidad_fr` (
  `topciment_todo` float NOT NULL,
  `myrevest_todo` float NOT NULL,
  `luxury_todo` float NOT NULL,
  `smartcret_todo` float NOT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.visibilidad_gb
CREATE TABLE IF NOT EXISTS `visibilidad_gb` (
  `topciment_todo` float NOT NULL,
  `myrevest_todo` float NOT NULL,
  `luxury_todo` float NOT NULL,
  `smartcret_todo` float NOT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.visibilidad_in
CREATE TABLE IF NOT EXISTS `visibilidad_in` (
  `topciment_todo` float NOT NULL,
  `myrevest_todo` float NOT NULL,
  `luxury_todo` float NOT NULL,
  `smartcret_todo` float NOT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.visibilidad_it
CREATE TABLE IF NOT EXISTS `visibilidad_it` (
  `topciment_todo` float NOT NULL,
  `myrevest_todo` float NOT NULL,
  `luxury_todo` float NOT NULL,
  `smartcret_todo` float NOT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.visibilidad_mx
CREATE TABLE IF NOT EXISTS `visibilidad_mx` (
  `topciment_todo` float NOT NULL,
  `topciment_microcemento` float NOT NULL,
  `topciment_pintura` float NOT NULL,
  `topciment_hormigon` float NOT NULL,
  `myrevest_todo` float NOT NULL,
  `myrevest_microcemento` float NOT NULL,
  `myrevest_pintura` float NOT NULL,
  `myrevest_hormigon` float NOT NULL,
  `luxury_todo` float NOT NULL,
  `luxury_microcemento` float NOT NULL,
  `luxury_pintura` float NOT NULL,
  `luxury_hormigon` float NOT NULL,
  `smartcret_todo` float NOT NULL,
  `smartcret_microcemento` float NOT NULL,
  `smartcret_pintura` float NOT NULL,
  `smartcret_hormigon` float NOT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.visibilidad_nl
CREATE TABLE IF NOT EXISTS `visibilidad_nl` (
  `topciment_todo` float NOT NULL,
  `myrevest_todo` float NOT NULL,
  `luxury_todo` float NOT NULL,
  `smartcret_todo` float NOT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.visibilidad_sz
CREATE TABLE IF NOT EXISTS `visibilidad_sz` (
  `topciment_todo` float NOT NULL,
  `myrevest_todo` float NOT NULL,
  `luxury_todo` float NOT NULL,
  `smartcret_todo` float NOT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla admin_seo_topciment.visibilidad_us
CREATE TABLE IF NOT EXISTS `visibilidad_us` (
  `topciment_todo` float NOT NULL,
  `myrevest_todo` float NOT NULL,
  `luxury_todo` float NOT NULL,
  `smartcret_todo` float NOT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
