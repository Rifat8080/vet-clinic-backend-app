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

CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(255),
    age INT
);

CREATE TABLE species (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

-- Remove the existing primary key constraint and set "id" as auto-incremented primary key
ALTER TABLE animals
DROP CONSTRAINT IF EXISTS animals_pkey;

-- Add an auto-incremented "id" column as the new primary key
ALTER TABLE animals
ADD COLUMN id SERIAL PRIMARY KEY;

-- Remove the "species" column
ALTER TABLE animals
DROP COLUMN IF EXISTS species;

-- Add the "species_id" column as a foreign key referencing the "species" table
ALTER TABLE animals
ADD COLUMN species_id INT REFERENCES species(id);

-- Add the "owner_id" column as a foreign key referencing the "owners" table
ALTER TABLE animals
ADD COLUMN owner_id INT REFERENCES owners(id);
