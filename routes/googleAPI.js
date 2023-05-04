const express = require('express')
const router = express.Router()
const paginate = require('express-paginate');
const { client, pagespeed } = require('../oauth')
const { isLoggedIn, isAdmin } = require('../lib/login_check')
require('dotenv').config()
const pool = require('../database')
require('../database')


router.get('/GSC', isLoggedIn, (req, res, next) => {
    const startDate = new Date(new Date().getFullYear() - 1, new Date().getMonth(), new Date().getDate())
    const endDate = new Date()
    const siteUrl = 'https://www.topciment.com'

    client.searchanalytics.query({
        startDate: startDate.toISOString().split('T')[0],
        endDate: endDate.toISOString().split('T')[0],
        dimensions: ['date'],
        rowLimit: 365,
        startRow: 0,
        searchType: 'web',
        siteUrl,
    }, (err, response1) => {
        if (err) return res.send(`Error al obtener los clicks diarios: ${err}`)
        client.searchanalytics.query({
            startDate: startDate.toISOString().split('T')[0],
            endDate: endDate.toISOString().split('T')[0],
            dimensions: ['page'],
            rowLimit: 365,
            startRow: 0,
            searchType: 'web',
            siteUrl,
        }, (err, response2) => {
            if (err) return res.send(`Error al obtener los clicks diarios: ${err}`)
            console.log(response2.data.rows)
            res.render('SearchConsole/GSC_grafica', { 
                data1: JSON.stringify(response1.data.rows),
                data2: response2.data.rows,
                rol: req.user.role
            })
        })
    })
})


router.get('/page-speed', isLoggedIn, async (req, res) => {
    const [rows] = await pool.query('SELECT url, loading_ex, origin_loading_ex FROM carga_pagina')

    res.render('PageSpeed/page_speed', {
        datos_carga: rows,
        rol: req.user.role
    })
})


router.get('/page-speed-url', isLoggedIn, async (req, res) => {
    const [rows] = await pool.query('SELECT * FROM carga_pagina WHERE url="' + req.query.url + '"')

    res.render('PageSpeed/page_speed_url', {
        datos_carga: rows[0],
        rol: req.user.role
    })
})


module.exports = router