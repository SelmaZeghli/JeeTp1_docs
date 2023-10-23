-- Create the Ouvrage table
CREATE TABLE Ouvrage (
    ouvrage_id serial PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255),
    publisher VARCHAR(255),
    creation_date DATE,
    borrowing_date DATE
);

-- Create the Bibliotheque table (Add columns as needed)
CREATE TABLE Bibliotheque (
    bibliotheque_id serial PRIMARY KEY,
    -- Add other columns here
);

-- Create the BiblioList table
CREATE TABLE BiblioList (
    biblio_list_id serial PRIMARY KEY,
    ouvrage_id INT REFERENCES Ouvrage(ouvrage_id),
    bibliotheque_id INT REFERENCES Bibliotheque(bibliotheque_id)
);

-- Create the Periodique table
CREATE TABLE Periodique (
    periodique_id serial PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    number INT,
    periodicity VARCHAR(50)
);

-- Create the CD table
CREATE TABLE CD (
    cd_id serial PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255)
);

-- Create the Livre table
CREATE TABLE Livre (
    livre_id serial PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255),
    publisher VARCHAR(255)
);
