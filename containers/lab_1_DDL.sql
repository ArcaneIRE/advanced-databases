-- Active: 1727964969122@@127.0.0.1@5432@postgres@public
CREATE SCHEMA IF NOT EXISTS films;

SET search_path TO films;

-- Create a table named "movies" within the "films" schema if it doesn't already exist
CREATE TABLE IF NOT EXISTS movies (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    release_year INT
);
-- Insert some dummy data into the table, but only if the table is empty
INSERT INTO
    movies (title, release_year)
VALUES (
        'The Shawshank Redemption',
        1994
    ),
    ('The Godfather', 1972),
    ('The Dark Knight', 2008);

-- Select all data from the table
SELECT * FROM movies;