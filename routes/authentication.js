const express = require('express')
const router = express.Router()
const {isLoggedIn, isNotLoggedIn, isAdmin} = require('../lib/login_check')
const passport = require('passport')
const helpers = require('../lib/encrypt')
const pool = require('../database')


router.get('/login', isNotLoggedIn, (req, res, next) => {
  res.render('auth/login.ejs')
})

router.post('/login', isNotLoggedIn, (req, res, next) => {
  passport.authenticate('local.signin', {
    successRedirect: '/',
    failureRedirect: '/login'
  })(req, res, next)
})



router.get('/register', isAdmin, (req, res, next) => {
  res.render('auth/register.ejs', {mensaje: req.query.estado})
})

router.post('/register', isAdmin, async (req, res) => {
  const {name, username, email, role, password} = req.body
    const newUser = {
        username,
        password,
        email,
        name,
        role
    }

    newUser.password = await helpers.encryptPassword(password)
    const [ result ] = await pool.query('INSERT INTO users SET ?', [newUser])

    if(result.affectedRows > 0){
      res.redirect('/register?estado=exito')
    } else {
      res.redirect('/register?estado=error')
    }
})



router.get('/logout', isLoggedIn, (req, res) => {

  req.logOut(function(err){
    if(err) return next(err)
  })
  res.redirect('login')
})

module.exports = router
