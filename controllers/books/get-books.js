const errors = require('../misc/errors');
const { Book } = require('../../models');

const getAllBooks = async (req, res) => {
    try {
        const books = await Book.find();
        res.json(books);
        } catch (error) {
            res.status(500).json({ message:'something went wrong!'});
        }
    }
module.exports = {
    getAllBooks,
};