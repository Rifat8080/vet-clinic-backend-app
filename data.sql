/* Populate database with sample data. */
-- Insert data for Agumon
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts)
VALUES ('Agumon', '2020-02-03', 10.23, true, 0);

-- Insert data for Gabumon
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts)
VALUES ('Gabumon', '2018-11-15', 8, true, 2);

-- Insert data for Pikachu
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts)
VALUES ('Pikachu', '2021-01-07', 15.04, false, 1);

-- Insert data for Devimon
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts)
VALUES ('Devimon', '2017-05-12', 11, true, 5);
-- Insert data for Charmander
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts, species)
VALUES ('Charmander', '2020-02-08', -11, false, 0, 'Fire');

-- Insert data for Plantmon
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts, species)
VALUES ('Plantmon', '2021-11-15', -5.7, true, 2, 'Grass');

-- Insert data for Squirtle
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts, species)
VALUES ('Squirtle', '1993-04-02', -12.13, false, 3, 'Water');

-- Insert data for Angemon
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts, species)
VALUES ('Angemon', '2005-06-12', -45, true, 1, 'Angel');

-- Insert data for Boarmon
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts, species)
VALUES ('Boarmon', '2005-06-07', 20.4, true, 7, 'Mammal');

-- Insert data for Blossom
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts, species)
VALUES ('Blossom', '1998-10-13', 17, true, 3, 'Plant');

-- Insert data for Ditto
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts, species)
VALUES ('Ditto', '2022-05-14', 22, true, 4, 'Normal');

-- Insert data into the owners table
INSERT INTO owners (full_name, age)
VALUES ('Sam Smith', 34),
       ('Jennifer Orwell', 19),
       ('Bob', 45),
       ('Melody Pond', 77),
       ('Dean Winchester', 14),
       ('Jodie Whittaker', 38);
-- Insert data into the species table
INSERT INTO species (name)
VALUES ('Pokemon'),
       ('Digimon');
-- Update the "species_id" based on the name of the animals
UPDATE animals
SET species_id = CASE
    WHEN name LIKE '%mon' THEN (SELECT id FROM species WHERE name = 'Digimon')
    ELSE (SELECT id FROM species WHERE name = 'Pokemon')
END;
