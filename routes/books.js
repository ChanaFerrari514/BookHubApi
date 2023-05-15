const router = require('express').Router()
const { getAllBooks } = requiere('../controllers/books/get-books');

router.get('/', getAllBooks);

module.exports = router;