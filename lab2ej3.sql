drop database if exists peliculas_db;

create database peliculas_db;

use peliculas_db;

create table peliculas(
id INT auto_increment primary key,
titulo VARCHAR(255),
anio INT,
director VARCHAR(255),
actor_principal VARCHAR(255),
actor_secundario VARCHAR(255),
genero VARCHAR(255)
);

INSERT INTO peliculas (titulo, anio, director, actor_principal, actor_secundario, genero) VALUES
('The Shawshank Redemption', 1994, 'Frank Darabont', 'Tim Robbins', 'Morgan Freeman', 'Drama'),
('The Godfather', 1972, 'Francis Ford Coppola', 'Marlon Brando', 'Al Pacino', 'Crime'),
('The Dark Knight', 2008, 'Christopher Nolan', 'Christian Bale', 'Heath Ledger', 'Action'),
('Pulp Fiction', 1994, 'Quentin Tarantino', 'John Travolta', 'Samuel L. Jackson', 'Crime'),
('The Lord of the Rings: The Return of the King', 2003, 'Peter Jackson', 'Elijah Wood', 'Viggo Mortensen', 'Fantasy'),
('Forrest Gump', 1994, 'Robert Zemeckis', 'Tom Hanks', 'Robin Wright', 'Drama'),
('Inception', 2010, 'Christopher Nolan', 'Leonardo DiCaprio', 'Joseph Gordon-Levitt', 'Sci-Fi'),
('Fight Club', 1999, 'David Fincher', 'Brad Pitt', 'Edward Norton', 'Drama'),
('The Matrix', 1999, 'The Wachowskis', 'Keanu Reeves', 'Laurence Fishburne', 'Sci-Fi'),
('Goodfellas', 1990, 'Martin Scorsese', 'Robert De Niro', 'Ray Liotta', 'Crime'),
('Star Wars: Episode IV - A New Hope', 1977, 'George Lucas', 'Mark Hamill', 'Harrison Ford', 'Sci-Fi'),
('Se7en', 1995, 'David Fincher', 'Brad Pitt', 'Morgan Freeman', 'Thriller'),
('The Silence of the Lambs', 1991, 'Jonathan Demme', 'Jodie Foster', 'Anthony Hopkins', 'Thriller'),
('Saving Private Ryan', 1998, 'Steven Spielberg', 'Tom Hanks', 'Matt Damon', 'War'),
('The Green Mile', 1999, 'Frank Darabont', 'Tom Hanks', 'Michael Clarke Duncan', 'Drama'),
('Gladiator', 2000, 'Ridley Scott', 'Russell Crowe', 'Joaquin Phoenix', 'Action'),
('The Usual Suspects', 1995, 'Bryan Singer', 'Kevin Spacey', 'Gabriel Byrne', 'Mystery'),
('Schindler\'s List', 1993, 'Steven Spielberg', 'Liam Neeson', 'Ben Kingsley', 'History'),
('The Lion King', 1994, 'Roger Allers', 'Matthew Broderick', 'Jeremy Irons', 'Animation'),
('Interstellar', 2014, 'Christopher Nolan', 'Matthew McConaughey', 'Anne Hathaway', 'Sci-Fi'),
('Parasite', 2019, 'Bong Joon Ho', 'Song Kang-ho', 'Lee Sun-kyun', 'Thriller'),
('The Departed', 2006, 'Martin Scorsese', 'Leonardo DiCaprio', 'Matt Damon', 'Crime'),
('Whiplash', 2014, 'Damien Chazelle', 'Miles Teller', 'J.K. Simmons', 'Drama'),
('The Prestige', 2006, 'Christopher Nolan', 'Hugh Jackman', 'Christian Bale', 'Mystery'),
('The Intouchables', 2011, 'Olivier Nakache', 'François Cluzet', 'Omar Sy', 'Comedy'),
('The Pianist', 2002, 'Roman Polanski', 'Adrien Brody', 'Thomas Kretschmann', 'Biography'),
('The Green Book', 2018, 'Peter Farrelly', 'Viggo Mortensen', 'Mahershala Ali', 'Biography'),
('Coco', 2017, 'Lee Unkrich', 'Anthony Gonzalez', 'Gael García Bernal', 'Animation'),
('Joker', 2019, 'Todd Phillips', 'Joaquin Phoenix', 'Robert De Niro', 'Drama'),
('Avengers: Endgame', 2019, 'Anthony Russo', 'Robert Downey Jr.', 'Chris Evans', 'Action'),
('1917', 2019, 'Sam Mendes', 'George MacKay', 'Dean-Charles Chapman', 'War'),
('The Wolf of Wall Street', 2013, 'Martin Scorsese', 'Leonardo DiCaprio', 'Jonah Hill', 'Biography'),
('Django Unchained', 2012, 'Quentin Tarantino', 'Jamie Foxx', 'Christoph Waltz', 'Western'),
('Shutter Island', 2010, 'Martin Scorsese', 'Leonardo DiCaprio', 'Mark Ruffalo', 'Mystery'),
('The Imitation Game', 2014, 'Morten Tyldum', 'Benedict Cumberbatch', 'Keira Knightley', 'Biography'),
('Inglourious Basterds', 2009, 'Quentin Tarantino', 'Brad Pitt', 'Christoph Waltz', 'War'),
('The Great Gatsby', 2013, 'Baz Luhrmann', 'Leonardo DiCaprio', 'Tobey Maguire', 'Drama'),
('The Social Network', 2010, 'David Fincher', 'Jesse Eisenberg', 'Andrew Garfield', 'Biography'),
('The Grand Budapest Hotel', 2014, 'Wes Anderson', 'Ralph Fiennes', 'Tony Revolori', 'Comedy'),
('The Revenant', 2015, 'Alejandro G. Iñárritu', 'Leonardo DiCaprio', 'Tom Hardy', 'Adventure'),
('Mad Max: Fury Road', 2015, 'George Miller', 'Tom Hardy', 'Charlize Theron', 'Action'),
('Blade Runner 2049', 2017, 'Denis Villeneuve', 'Ryan Gosling', 'Harrison Ford', 'Sci-Fi'),
('Black Panther', 2018, 'Ryan Coogler', 'Chadwick Boseman', 'Michael B. Jordan', 'Action'),
('Bohemian Rhapsody', 2018, 'Bryan Singer', 'Rami Malek', 'Lucy Boynton', 'Biography'),
('A Star is Born', 2018, 'Bradley Cooper', 'Bradley Cooper', 'Lady Gaga', 'Drama'),
('La La Land', 2016, 'Damien Chazelle', 'Ryan Gosling', 'Emma Stone', 'Romance'),
('Slumdog Millionaire', 2008, 'Danny Boyle', 'Dev Patel', 'Freida Pinto', 'Drama'),
('Argo', 2012, 'Ben Affleck', 'Ben Affleck', 'Bryan Cranston', 'Thriller');


-- 1

select * from peliculas p; 

-- 2

select * from peliculas p where director = "Christopher Nolan";

-- 3

select * from peliculas p order by anio desc; 

-- 4 

select * from peliculas where anio >= 1990 and anio <= 2000;

-- 5 

select genero, count(*) as cantidad
from peliculas
group by genero; 















