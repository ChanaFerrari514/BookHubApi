DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS bookstore;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS users (
    id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
    username TEXT NOT NULL UNIQUE,
    password TEXT NOT NULL,
    bio TEXT
)

CREATE TABLE IF NOT EXISTS books (
    id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
    title TEXT NOT NULL UNIQUE,
    author TEXT NOT NULL,
    country TEXT NOT NULL,
    year TEXT NOT NULL,
    price MONEY NOT NULL,
    quantity NUMERIC NOT NULL
)

CREATE TABLE IF NOT EXISTS bookstore (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL UNIQUE,
  country TEXT NOT NULL,
  city TEXT NOT NULL,
  phone NUMERIC NOT NULL,
  address TEXT NOT NULL,
  mail TEXT NOT NULL
  
);
