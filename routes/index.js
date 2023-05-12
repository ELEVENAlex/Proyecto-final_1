const express = require('express')
const router = express.Router()
const paginate = require('express-paginate');
const { client, pagespeed } = require('../oauth')
const pool = require('../database')
const { isLoggedIn, isAdmin } = require('../lib/login_check')
require('dotenv').config()
require('../database')


router.get('/', isLoggedIn, async (req, res) => {
  const datos_visibilidad = []
  const [paises] = await pool.query('SELECT iso_code FROM paises')
  for (let i = 0; i < paises.length; i++) {
    const rows = await pool.query('SELECT * FROM visibilidad_' + paises[i].iso_code + ' WHERE fecha = ( SELECT MIN(fecha) FROM visibilidad_' + paises[i].iso_code + ' ) or fecha = ( SELECT MAX(fecha) FROM visibilidad_' + paises[i].iso_code + ' )')
    datos_visibilidad.push(rows[0])
  }

  const [empresas] = await pool.query('SELECT nombre FROM empresas')

  const [targets] = await pool.query('SELECT DISTINCT target FROM kws_es where target != ""')
  const keywords = [{ target: 'todo' }]
  for (let i = 0; i < targets.length; i++) {
    keywords.push(targets[i])
  }


  const thousands_separators = (num) => {
    var num_parts = num.toString().split(".");
    num_parts[0] = num_parts[0].replace(/\B(?=(\d{3})+(?!\d))/g, ".");
    return num_parts.join(",");
  }

  arr_enlaces = []
  suma_links = []
  for (let j = 0; j < empresas.length; j++) {
    arr_enlaces_pais = []
    let entry = {
      suma_publicados: 0,
      suma_enproceso: 0,
      suma_inversion: 0,
    }

    for (let i = 0; i < paises.length; i++) {
      let [tabla] = await pool.query('SELECT TABLE_NAME FROM information_schema.TABLES WHERE table_name LIKE "' + empresas[j].nombre + '_' + paises[i].iso_code + '"')
      if (tabla.length > 0) {
        const [num_enlaces_publicados] = await pool.query('SELECT COUNT(*) as num_enlaces FROM ' + empresas[j].nombre + '_' + paises[i].iso_code + ' where url_origen != "" AND estado = "Publicado"')
        const [num_enlaces_enproceso] = await pool.query('SELECT COUNT(*) as num_enlaces FROM ' + empresas[j].nombre + '_' + paises[i].iso_code + ' where url_origen != "" AND estado = "En Proceso"')
        const [inversion] = await pool.query('SELECT SUM(coste) as suma FROM ' + empresas[j].nombre + '_' + paises[i].iso_code + ' where url_origen != ""')
        if (inversion[0].suma > 0) {
          arr_enlaces_pais.push({
            enlaces_publicados: num_enlaces_publicados[0].num_enlaces,
            enlaces_enproceso: num_enlaces_enproceso[0].num_enlaces,
            inversion: thousands_separators(inversion[0].suma.toFixed(2))
          })
          entry.suma_publicados += num_enlaces_publicados[0].num_enlaces
          entry.suma_enproceso += num_enlaces_enproceso[0].num_enlaces
          entry.suma_inversion += parseFloat(inversion[0].suma)
        } else {
          arr_enlaces_pais.push(null)

        }
      } else {
        arr_enlaces_pais.push(null)
      }
    }
    arr_enlaces.push(arr_enlaces_pais)
    entry.suma_inversion = thousands_separators(entry.suma_inversion.toFixed(2))
    suma_links.push(entry)
  }

  res.render('viewsDB/mainDBview', {
    paises,
    datos_visibilidad,
    empresas,
    keywords,
    arr_enlaces,
    suma_links,
    rol: req.user.role
  })
})


router.get('/dashboard_pais/:pais', async (req, res) => {
  const [rows] = await pool.query('SELECT * FROM visibilidad_' + req.params.pais)
  const [paises] = await pool.query('SELECT iso_code FROM paises')
  const [empresas] = await pool.query('SELECT nombre FROM empresas')

  const [targets] = await pool.query('SELECT DISTINCT target FROM kws_es where target != ""')
  const keywords = [{ target: 'todo' }]
  for (let i = 0; i < targets.length; i++) {
    keywords.push(targets[i])
  }

  const [datos_visibilidad_reducido] = await pool.query('SELECT * FROM visibilidad_' + req.params.pais + ' WHERE fecha = ( SELECT MIN(fecha) FROM visibilidad_' + req.params.pais + ' ) or fecha = ( SELECT MAX(fecha) FROM visibilidad_' + req.params.pais + ' )')

  var fecha = new Date()
  var anio = fecha.getFullYear()
  var mes = ('0' + (fecha.getMonth() + 1)).slice(-2)
  var dia = ('0' + fecha.getDate()).slice(-2)
  var fechaActual = anio + '-' + mes + '-' + dia

  if(fecha.getHours <= 14){
    fechaActual = anio + '-' + mes + '-' + ('0' + (fecha.getDate()-1)).slice(-2)
  }

  //Datos que estaran en la tabla
  const [datos_tabla] = await pool.query(`
  SELECT 
    distinct K.kw, volume_search, K.target,
    (SELECT rank FROM rankings_`+ req.params.pais +` R WHERE DATE = '2023-03-27' AND R.kw = K.kw AND url LIKE 'https://www.topciment.com/es/%' LIMIT 1) rank_topcim,
    (SELECT COUNT(url_destino) FROM topciment_`+ req.params.pais +` WHERE url_destino = url_topciment) AS links_topcim,
    (SELECT SUM(coste) FROM topciment_`+ req.params.pais +` WHERE url_destino = url_topciment) AS inversion_topcim,
    (SELECT rank FROM rankings_`+ req.params.pais +` R WHERE DATE = '2023-03-27' AND R.kw = K.kw AND url LIKE 'https://www.myrevest.com/es/%' LIMIT 1) rank_myrevest,
    (SELECT COUNT(url_destino) FROM myrevest_`+ req.params.pais +` WHERE url_destino = url_myrevest) AS links_myrevest,
    (SELECT SUM(coste) FROM myrevest_`+ req.params.pais +` WHERE url_destino = url_myrevest) AS inversion_myrevest,
    (SELECT rank FROM rankings_`+ req.params.pais +` R WHERE DATE = '2023-03-27' AND R.kw = K.kw AND url LIKE 'https://www.luxuryconcrete.eu/es/%' LIMIT 1) rank_luxury,
    (SELECT COUNT(url_destino) FROM luxury_`+ req.params.pais +` WHERE url_destino = url_luxury) AS links_luxury,
    (SELECT SUM(coste) FROM luxury_`+ req.params.pais +` WHERE url_destino = url_luxury) AS inversion_luxury,
    (SELECT rank FROM rankings_`+ req.params.pais +` R WHERE DATE = '2023-03-27' AND R.kw = K.kw AND url LIKE 'https://www.smartcret.com/%' LIMIT 1) rank_smartcret,
    (SELECT COUNT(url_destino) FROM smartcret_`+ req.params.pais +` WHERE url_destino = url_smartcret) AS links_smartcret,
    (SELECT SUM(coste) FROM smartcret_`+ req.params.pais +` WHERE url_destino = url_smartcret) AS inversion_smartcret
  FROM kws_`+ req.params.pais +` K
  LEFT JOIN topciment_`+ req.params.pais +`
  ON kw = anchor_text;
  `)

  res.render('viewsDB/dashboard_paises', {
    pais: req.params.pais,
    paises,
    datos_visibilidad: JSON.stringify(rows),
    keywords,
    keywords_string: JSON.stringify(keywords),
    empresas,
    empresas_string: JSON.stringify(empresas),
    datos_visibilidad_reducido: [datos_visibilidad_reducido],
    datos_tabla,
    rol: req.user.role
  })
})


router.get('/enlaces-localidades/:pais', isLoggedIn, async (req, res, next) => {
  const [paises] = await pool.query('SELECT iso_code FROM paises')

  const [localidades] = await pool.query('SELECT DISTINCT localidad FROM sitios_localidades_' + req.params.pais)
  const [targets] = await pool.query('SELECT DISTINCT target FROM sitios_localidades_' + req.params.pais)

  const elementos = []
  const links = []
  const ranks0 = []
  const ranks1 = []
  const links_SEO = []


  for (let i = 0; i < localidades.length; i++) {
    for (let j = 0; j < targets.length; j++) {
      elementos.push(targets[j].target + ' ' + localidades[i].localidad)

      const [link] = await pool.query('SELECT sitio FROM sitios_localidades_' + req.params.pais + ' WHERE localidad = "' + localidades[i].localidad + '" AND target = "' + targets[j].target + '"')

      const [empresas] = await pool.query('SELECT nombre FROM empresas')

      let rank_pack0 = []
      let rank_pack1 = []
      let link_SEO_pack = []

      for (let k = 0; k < link.length; k++) {

        let suma = 0

        for (let l = 0; l < empresas.length; l++) {

          let [tabla] = await pool.query('SELECT TABLE_NAME FROM information_schema.TABLES WHERE table_name = "' + empresas[l].nombre + '_' + req.params.pais + '"')
          if (tabla.length > 0) {
            const [num] = await pool.query('SELECT count(*) as suma FROM ' + empresas[l].nombre + '_' + req.params.pais + ' WHERE url_destino = "' + link[k].sitio + '"')
            suma += num[0].suma
          }
        }

        link_SEO_pack.push(suma)

        const [rank0] = await pool.query('SELECT rank FROM rankings_' + req.params.pais + '_localidades WHERE url = "' + link[k].sitio + '" AND date = "' + req.query.fin + '" AND kw = "' + targets[j].target + ' ' + localidades[i].localidad + '"')
        if (rank0[0]) {
          rank_pack0.push(rank0[0].rank)
        } else {
          rank_pack0.push(100)
        }

        const [rank1] = await pool.query('SELECT rank FROM rankings_' + req.params.pais + '_localidades WHERE url = "' + link[k].sitio + '" AND date = "' + req.query.inicio + '" AND kw = "' + targets[j].target + ' ' + localidades[i].localidad + '"')
        if (rank1[0]) {
          rank_pack1.push(rank1[0].rank)
        } else {
          rank_pack1.push(100)
        }
      }

      ranks0.push(rank_pack0)
      ranks1.push(rank_pack1)
      links_SEO.push(link_SEO_pack)

      links.push(link)

    }
  }

  res.render('viewsDB/enlaces_localidades', {
    inicio: req.query.inicio,
    fin: req.query.fin,
    pais: req.params.pais,
    paises,
    targets,
    elementos,
    links,
    ranks0,
    ranks1,
    links_SEO,
    rol: req.user.role
  })
})


router.get('/formulario-links', isLoggedIn, isAdmin, async (req, res) => {
  const [empresas] = await pool.query('SELECT nombre FROM empresas')
  const [paises] = await pool.query('SELECT * FROM paises')
  const [plataformas] = await pool.query('SELECT nombre FROM plataformas')

  res.render('viewsDB/formulario_links', {
    empresas,
    paises,
    plataformas,
    mensaje: req.query.estado,
    rol: req.user.role
  })
})


router.post('/formulario-links', isLoggedIn, isAdmin, async (req, res) => {
  const { empresa, pais, fecha_encargo, destino, origen, coste, anchor_text, plataforma, rel, target, estado } = req.body
  let { fecha_publi } = req.body
  let mensaje = ''


  if (!fecha_publi) {
    fecha_publi = '0000-00-00'
  }

  let [tabla] = await pool.query('SELECT TABLE_NAME FROM information_schema.TABLES WHERE table_name = "' + empresa + '_' + pais + '"')
  if (tabla.length > 0) {
    const [rows] = await pool.query('INSERT INTO ' + empresa + '_' + pais + ' VALUES (NULL,"' + fecha_encargo + '","' + destino + '","' + origen + '","' + coste + '","' + plataforma + '","' + anchor_text + '","' + rel + '","' + target + '","' + estado + '","' + fecha_publi + '")')
    if (rows.affectedRows >= 1) {
      mensaje = 'exito'
    }
  }

  if (tabla.length <= 0) {
    mensaje = 'error'
  }
  res.redirect('/formulario-links?estado=' + mensaje)
})


router.get('/editar-links', isLoggedIn, isAdmin, async (req, res) => {
  const [empresas] = await pool.query('SELECT nombre FROM empresas')
  const [paises] = await pool.query('SELECT * FROM paises')
  res.render('viewsDB/formulario_tabla', { empresas, paises, rol: req.user.role })
})


router.post('/editar-tabla', isLoggedIn, isAdmin, async (req, res) => {
  const { empresa, pais } = req.body
  const [rows] = await pool.query('SELECT * FROM ' + empresa + '_' + pais)

  res.render('viewsDB/editar_links', {
    empresa,
    pais,
    datos_tabla: rows,
    rol: req.user.role
  })
})


router.get('/editar-link/:tabla/:id', isLoggedIn, isAdmin, async (req, res) => {
  const [row] = await pool.query('SELECT * FROM ' + req.params.tabla + ' WHERE id=' + req.params.id)

  const [empresas] = await pool.query('SELECT nombre FROM empresas')
  const [paises] = await pool.query('SELECT * FROM paises')
  const [plataformas] = await pool.query('SELECT nombre FROM plataformas')

  res.render('viewsDB/editar_link', {
    datos_link: row[0],
    empresas,
    paises,
    plataformas,
    mensaje: req.query.estado,
    tabla: req.params.tabla,
    id: req.params.id,
    rol: req.user.role
  })

})


router.post('/editar-link/:tabla/:id', isLoggedIn, isAdmin, async (req, res) => {
  const { empresa, pais, fecha_encargo, destino, origen, coste, anchor_text, plataforma, rel, target, estado } = req.body
  let { fecha_publi } = req.body
  let mensaje = ''

  if (!fecha_publi) {
    fecha_publi = '0000-00-00'
  }


  const [rows] = await pool.query('UPDATE ' + req.params.tabla + ' SET fecha_encargo="' + fecha_encargo + '", url_destino="' + destino + '", url_origen="' + origen + '", coste="' + coste + '", plataforma="' + plataforma + '", anchor_text="' + anchor_text + '", rel="' + rel + '", target="' + target + '", estado="' + estado + '", fecha_entrega="' + fecha_publi + '" WHERE id = ' + req.params.id)
  if (rows.affectedRows >= 1) {
    mensaje = 'exito'
  } else {
    mensaje = 'error'
  }
  res.redirect('/editar-link/' + req.params.tabla + '/' + req.params.id + '?estado=' + mensaje)

})


router.get('/eliminar-link/:tabla/:id', isLoggedIn, isAdmin, async (req, res) => {

  const [rows] = await pool.query('DELETE FROM ' + req.params.tabla + ' WHERE ID ="' + req.params.id + '"')
  res.redirect('/editar-links')

})



module.exports = router