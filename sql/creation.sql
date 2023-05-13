DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS order;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS users (
    id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
    username TEXT NOT NULL UNIQUE,
    --email TEXT NOT NULL UNIQUE,
    password TEXT NOT NULL,
    bio TEXT
);

-- TABLE OF BOOKS

CREATE TABLE IF NOT EXISTS books (
    id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
    title TEXT NOT NULL UNIQUE,
    author TEXT NOT NULL,
    country TEXT NOT NULL,
    year TEXT NOT NULL,
    price MONEY NOT NULL,
    quantity NUMERIC NOT NULL
)

-- TABLE OF ORDER


CREATE TABLE IF NOT EXISTS order (
id SERIAL PRIMARY KEY,
customer_id INTEGER REFERENCES users
        ON UPDATE CASCADE
        ON DELETE SET NULL,
order_date date NOT NULL      
  
);
