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
)