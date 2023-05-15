const router = require('express').Router()

const authRoutes = require('./auth')
const usersRoutes = require('./users')
const booksRoutes = require('./books')

module.exports = (db) => {
    router.use('/auth', authRoutes(db)) 
    router.use('/users', usersRoutes())
    router.use('/books', bookRoutes(db))
    
    return router
}


/*module.exports = (db) => {
    router.use('/auth', require('/.auth')(db))

    return router
}*/