const authorizer = require('./authorizer')
const fieldsValidator = require('./fieldsValidator')
const booksMiddleware = requiere('./books')

module.exports = {
    authorizer,
    fieldsValidator,
    booksMiddleware,
}