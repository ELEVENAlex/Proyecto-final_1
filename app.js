const createError = require('http-errors')
const express = require('express')
const path = require('path')
const cookieParser = require('cookie-parser')
const logger = require('morgan')
const session = require('express-session')
const smysql = require('express-mysql-session')(session)
const passport = require('passport')
require('dotenv').config()

const indexRouter = require('./routes/index')
const authRouter = require('./routes/authentication')
const googleRouter = require('./routes/googleAPI')

//Initializations
const app = express()
require('./lib/passport')

// view engine setup
app.set('views', path.join(__dirname, 'views'))
app.set('view engine', 'ejs')

app.use(session({
  secret: 'misecreto',
  resave: false,
  saveUninitialized: false,
  store: new smysql({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_DATABASE
  })
}))

app.use(logger('dev'))
app.use(express.json())
app.use(express.urlencoded({ extended: false }))
app.use(cookieParser())
app.use(passport.initialize())
app.use(passport.session())

app.use('/', indexRouter)
app.use('/', authRouter)
app.use('/', googleRouter)

app.use(express.static(path.join(__dirname, 'public')))

app.get('*', function(req, res){
  res.redirect('/')
});

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404))
})


app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message
  res.locals.error = req.app.get('env') === 'development' ? err : {}

  // render the error page
  res.status(err.status || 500)
  res.render('error')
});

module.exports = app
