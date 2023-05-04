module.exports = {
    isLoggedIn(req, res, next) {
        if(req.isAuthenticated()){
            return next()
        }

        res.redirect('/login')
    },

    isNotLoggedIn(req, res, next) {
        if(!req.isAuthenticated()){
            return next()
        }

        return res.redirect('/')
    },

    isAdmin(req, res, next) {
        if(req.user.role == 'Administrador'){
            return next()
        }else{
            res.redirect('/')
        }
    }
}