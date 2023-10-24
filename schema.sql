/* Database schema to keep the structure of entire database. */

-- Create a table named "animals" in PostgreSQL
CREATE TABLE animals (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    date_of_birth DATE,
    escape_attempts INTEGER,
    neutered BOOLEAN,
    weight_kg DECIMAL(5, 2)
);


-- Add a new column "species" to the animals table
ALTER TABLE animals
ADD COLUMN species VARCHAR(255);
