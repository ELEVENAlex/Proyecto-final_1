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
  const [empresas] = await pool.query('SELECT nombre, url FROM empresas')

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

  var fecha = new Date()
  var anio = fecha.getFullYear()
  var mes = ('0' + (fecha.getMonth() + 1)).slice(-2)
  var dia = ('0' + fecha.getDate()).slice(-2)
  var fechaActual = anio + '-' + mes + '-' + dia
  
  if(fecha.getHours() <= 9){
    fechaActual = anio + '-' + mes + '-' + ('0' + (fecha.getDate()-1)).slice(-2)
  }

  var fecha = new Date()
  var anio = fecha.getFullYear()
  var mes = ('0' + (fecha.getMonth() + 1)).slice(-2)
  var dia = ('0' + fecha.getDate()).slice(-2)
  var fechaActual = anio + '-' + mes + '-' + dia
  
  if(fecha.getHours() <= 9){
    fechaActual = anio + '-' + mes + '-' + ('0' + (fecha.getDate()-1)).slice(-2)
  }

  var query = 'SELECT distinct K.kw, volume_search, K.target'

  for(let i=0; i<empresas.length; i++){
    query = query + ', (SELECT rank FROM rankings_'+ req.params.pais +' R WHERE DATE = "'+fechaActual+'" AND R.kw = K.kw AND url LIKE "https://'+ empresas[i].url +'/%" LIMIT 1) rank_'+ empresas[i].nombre +', (SELECT COUNT(url_destino) FROM '+ empresas[i].nombre +'_'+ req.params.pais +' WHERE url_destino = url_'+ empresas[i].nombre +') AS links_'+ empresas[i].nombre +', (SELECT SUM(coste) FROM '+ empresas[i].nombre +'_'+ req.params.pais +' WHERE url_destino = url_'+ empresas[i].nombre +') AS inversion_'+ empresas[i].nombre +' '
  }

  query = query + 'FROM kws_'+ req.params.pais +' K LEFT JOIN topciment_'+ req.params.pais +' ON kw = anchor_text;'

  const [datos_tabla] = await pool.query(query)

  console.log(datos_tabla)

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
  const [empresas] = await pool.query('SELECT nombre FROM empresas')
  const [localidades] = await pool.query('SELECT kw FROM localidades_' + req.params.pais)

  const elementos = []
  const targets = [ { target: 'microcemento' }, { target: 'hormigon impreso' } ]
  const kw = []
  const ranks0 = []
  const ranks1 = []
  const links_SEO = []

  const links = []
  const [row] = await pool.query('SELECT * FROM localidades_' + req.params.pais)
  for(let k=0; k<row.length; k++){
    let pack = []
    for(let j=0; j<empresas.length; j++){
      if(row[k]['url_'+empresas[j].nombre].length > 0){
        pack.push(row[k]['url_'+empresas[j].nombre])
      }
    }
    links.push(pack)
  }

  for (let i = 0; i < links.length; i++) {
    elementos.push(localidades[i].kw)


    let rank_pack0 = []
    let rank_pack1 = []
    let link_SEO_pack = []

    for (let k = 0; k < links[i].length; k++) {
      const [resultado] = await pool.query('SELECT target FROM sitios_localidades_'+ req.params.pais +' WHERE sitio = "'+ links[i][k] +'"')
      if(resultado[0]){
        kw.push(resultado[0].target)
      } else {
        kw.push('undefined')
      }

      let suma = 0

      for (let l = 0; l < empresas.length; l++) {
        let [tabla] = await pool.query('SELECT TABLE_NAME FROM information_schema.TABLES WHERE table_name = "' + empresas[l].nombre + '_' + req.params.pais + '"')
        if (tabla.length > 0) {
          const [num] = await pool.query('SELECT count(*) as suma FROM ' + empresas[l].nombre + '_' + req.params.pais + ' WHERE url_destino = "' + links[i][k] + '"')
          suma += num[0].suma
        }
      }

      link_SEO_pack.push(suma)

      const [rank0] = await pool.query('SELECT rank FROM rankings_' + req.params.pais + '_localidades WHERE url = "' + links[i][k] + '" AND date = "' + req.query.fin + '" AND kw = "'+ localidades[i].kw + '"')
      if (rank0[0]) {
        rank_pack0.push(rank0[0].rank)
      } else {
        rank_pack0.push(100)
      }

      const [rank1] = await pool.query('SELECT rank FROM rankings_' + req.params.pais + '_localidades WHERE url = "' + links[i][k] + '" AND date = "' + req.query.inicio + '" AND kw = "' + localidades[i].kw + '"')
      if (rank1[0]) {
        rank_pack1.push(rank1[0].rank)
      } else {
        rank_pack1.push(100)
      }
    }

    ranks0.push(rank_pack0)
    ranks1.push(rank_pack1)
    links_SEO.push(link_SEO_pack)
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
    rol: req.user.role,
    kw
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