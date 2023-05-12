# Books API

This repository contains the code for a book API that provides information about books available in the system.

## Getting Started

These instructions will help you get a copy of the project and running on your local machine for testing purpose.

### Prerequisites

- Node.js 
- npm 
- Postman or any other API testing tool.
- PostgreSQL
- Aminer (http://localhost:8080)

Before, starting make sure that you have postgres and adminer containers running via docker-compose.

### Installation

1 - Clone the repository
    
    git clone https://github.com/your-username/book-api
    cd book-api

2 - Install dependencies

    npm install

3 - Import the SQL scripts

    • Open Adminer in your browser at http://localhost:8080
    • Import the SQL scripts in the following order:
        - creation.sql
        - insert.sql

4 - Start the server

    npm start
### Exercises
Test the API endpoints

    • Open Postman in your browser or any other API testing tool.

    - Use these following endpoints to interact with the API:

    1. Retrieve all books
    - GET http://localhost:4000/books

    2. Retrieve a specific book by ID

    - GET http://localhost:4000/books/:id

    3. Create a new book

    //POST http://localhost:4000/books

    4. Update a book 

    //PUT http://localhost:4000/books/:id

    5. Delete a book 
    
    //DELETE http://localhost:4000/books/:id

EXTRA authentication/authorization

        //POST http://localhost:4000/auth/signup
        // Response to the request
        {
            "success": true
        }
### Contributing

Contributions are welcome! If you find any issues or have suggestions for improvement, please submit an issue or a pull request.

Also feel free to create addtional routes, controllers or any other services as needed to expand the functionality of the API.



