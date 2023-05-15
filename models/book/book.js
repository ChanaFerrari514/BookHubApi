const { sql } = require('slonik')
 const connection = {
    connectionString: process.env.DATABASE_URL,
}


const getAllBooks = async () => {
    try {
        const query = 'SELECT * FROM books;'
        const books = await connection.any(query);
        return books;        
    } catch (error) {  
    console.log(error);
    }
}

module.exports = {
    getAllBooks,
}