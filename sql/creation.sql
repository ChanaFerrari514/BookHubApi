DROP TABLE IF EXISTS users;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS users (
    id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
    username TEXT NOT NULL UNIQUE,
    --email TEXT NOT NULL UNIQUE,
    password TEXT NOT NULL,
    bio TEXT
);

-- TABLE OF BOOKS
DROP TABLE IF EXISTS books;

CREATE TABLE IF NOT EXISTS books (
    id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
    title TEXT NOT NULL UNIQUE,
    author TEXT NOT NULL,
    country TEXT NOT NULL,
    year TEXT NOT NULL,
    price MONEY NOT NULL,
    quantity NUMERIC NOT NULL
)



