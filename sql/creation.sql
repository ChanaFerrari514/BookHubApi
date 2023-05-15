-- Supprimez les tables existantes si nécessaire
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS books CASCADE;
--DROP TABLE IF EXISTS bookstore;

-- L'extension uuid-ossp
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Table users
CREATE TABLE IF NOT EXISTS users (
    id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
    username TEXT NOT NULL UNIQUE,
    password TEXT NOT NULL,
    bio TEXT
);

-- Table books
CREATE TABLE IF NOT EXISTS books (
    id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
    title TEXT NOT NULL UNIQUE,
    author TEXT NOT NULL,
    country TEXT NOT NULL,
    year INTEGER NOT NULL,
    price MONEY NOT NULL,
    quantity NUMERIC NOT NULL
);

-- la table bookstore
/*CREATE TABLE IF NOT EXISTS bookstore (
    temp_id UUID,  
    name TEXT NOT NULL UNIQUE,
    country TEXT NOT NULL,
    city TEXT NOT NULL,
    phone TEXT NOT NULL,
    address TEXT NOT NULL,
    mail TEXT NOT NULL,
    book_id UUID,
    FOREIGN KEY (book_id) REFERENCES books(id)
);
*/