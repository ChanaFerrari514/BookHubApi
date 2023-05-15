const { Book } = require('../models');
const errors = require('../misc/errors');

const validateBook = (req, res, next) => {
    const { bookTitle } = req.body

    if (!bookTitle) return next(errors[404]) 

    next();
}

module.exports = {
    validateBook,
};