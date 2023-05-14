const router = require('express').Router()


const booksControllers = require('../controllers/books')

module.exports = () => {
    router.get('/', booksControllers.getBooks())

    return router
}