drop database if exists peliculas_complejo;

create database peliculas_complejo;

use peliculas_complejo;

create table peliculas(
id INT auto_increment primary key,
titulo VARCHAR(255),
anio INT,
director VARCHAR(255),
genero VARCHAR(255),
actor_ppal VARCHAR(255),
actor_sec VARCHAR(255)
);

create table directores(
director_id INT auto_increment primary key,
nombre VARCHAR(255)
);

create table actores(
actor_id INT auto_increment primary key,
nombre VARCHAR(255)
);

create table peliculas_actores(
id_pelicula INT,
id_actor INT,
primary key (id_pelicula, id_actor),
foreign key (id_pelicula) references peliculas(id),
foreign key (id_actor) references actores(actor_id)
);

-- Inserción de películas generadas por ChatGPT:

INSERT INTO peliculas (titulo, anio, director, genero, actor_ppal, actor_sec) VALUES
('El Padrino', 1972, 'Francis Ford Coppola', 'Crimen', 'Marlon Brando', 'Al Pacino'),
('El Padrino II', 1974, 'Francis Ford Coppola', 'Crimen', 'Al Pacino', 'Robert De Niro'),
('Pulp Fiction', 1994, 'Quentin Tarantino', 'Crimen', 'John Travolta', 'Samuel L. Jackson'),
('El Caballero Oscuro', 2008, 'Christopher Nolan', 'Acción', 'Christian Bale', 'Heath Ledger'),
('Forrest Gump', 1994, 'Robert Zemeckis', 'Drama', 'Tom Hanks', 'Robin Wright'),
('La Lista de Schindler', 1993, 'Steven Spielberg', 'Drama', 'Liam Neeson', 'Ralph Fiennes'),
('El Señor de los Anillos: El Retorno del Rey', 2003, 'Peter Jackson', 'Fantasía', 'Elijah Wood', 'Viggo Mortensen'),
('Inception', 2010, 'Christopher Nolan', 'Ciencia Ficción', 'Leonardo DiCaprio', 'Joseph Gordon-Levitt'),
('Fight Club', 1999, 'David Fincher', 'Drama', 'Edward Norton', 'Brad Pitt'),
('Matrix', 1999, 'Lana Wachowski', 'Ciencia Ficción', 'Keanu Reeves', 'Laurence Fishburne'),
('Los Siete Samuráis', 1954, 'Akira Kurosawa', 'Acción', 'Toshirô Mifune', 'Takashi Shimura'),
('Star Wars: Una Nueva Esperanza', 1977, 'George Lucas', 'Ciencia Ficción', 'Mark Hamill', 'Harrison Ford'),
('Titanic', 1997, 'James Cameron', 'Romance', 'Leonardo DiCaprio', 'Kate Winslet'),
('Gladiador', 2000, 'Ridley Scott', 'Acción', 'Russell Crowe', 'Joaquin Phoenix'),
('Jurassic Park', 1993, 'Steven Spielberg', 'Ciencia Ficción', 'Sam Neill', 'Laura Dern'),
('E.T., el Extraterrestre', 1982, 'Steven Spielberg', 'Fantasía', 'Henry Thomas', 'Drew Barrymore'),
('Salvar al Soldado Ryan', 1998, 'Steven Spielberg', 'Bélica', 'Tom Hanks', 'Matt Damon'),
('El Resplandor', 1980, 'Stanley Kubrick', 'Terror', 'Jack Nicholson', 'Shelley Duvall'),
('Blade Runner', 1982, 'Ridley Scott', 'Ciencia Ficción', 'Harrison Ford', 'Rutger Hauer'),
('El Silencio de los Inocentes', 1991, 'Jonathan Demme', 'Suspenso', 'Jodie Foster', 'Anthony Hopkins'),
('Psicosis', 1960, 'Alfred Hitchcock', 'Terror', 'Anthony Perkins', 'Janet Leigh'),
('La Naranja Mecánica', 1971, 'Stanley Kubrick', 'Ciencia Ficción', 'Malcolm McDowell', 'Patrick Magee'),
('Alien: El Octavo Pasajero', 1979, 'Ridley Scott', 'Ciencia Ficción', 'Sigourney Weaver', 'Tom Skerritt'),
('Regreso al Futuro', 1985, 'Robert Zemeckis', 'Ciencia Ficción', 'Michael J. Fox', 'Christopher Lloyd'),
('Casablanca', 1942, 'Michael Curtiz', 'Romance', 'Humphrey Bogart', 'Ingrid Bergman'),
('El Bueno, el Malo y el Feo', 1966, 'Sergio Leone', 'Western', 'Clint Eastwood', 'Eli Wallach'),
('El Gran Lebowski', 1998, 'Joel Coen', 'Comedia', 'Jeff Bridges', 'John Goodman'),
('Scarface', 1983, 'Brian De Palma', 'Crimen', 'Al Pacino', 'Steven Bauer'),
('La Vida es Bella', 1997, 'Roberto Benigni', 'Drama', 'Roberto Benigni', 'Nicoletta Braschi'),
('El Laberinto del Fauno', 2006, 'Guillermo del Toro', 'Fantasía', 'Ivana Baquero', 'Sergi López'),
('Mad Max: Furia en el Camino', 2015, 'George Miller', 'Acción', 'Tom Hardy', 'Charlize Theron'),
('El Viaje de Chihiro', 2001, 'Hayao Miyazaki', 'Animación', 'Rumi Hiiragi', 'Miyu Irino'),
('La Princesa Mononoke', 1997, 'Hayao Miyazaki', 'Animación', 'Yôji Matsuda', 'Yuriko Ishida'),
('Los Increíbles', 2004, 'Brad Bird', 'Animación', 'Craig T. Nelson', 'Holly Hunter'),
('Wall-E', 2008, 'Andrew Stanton', 'Animación', 'Ben Burtt', 'Elissa Knight'),
('Intensamente', 2015, 'Pete Docter', 'Animación', 'Amy Poehler', 'Phyllis Smith'),
('Toy Story', 1995, 'John Lasseter', 'Animación', 'Tom Hanks', 'Tim Allen'),
('El Gran Dictador', 1940, 'Charles Chaplin', 'Comedia', 'Charles Chaplin', 'Paulette Goddard'),
('Luces de la Ciudad', 1931, 'Charles Chaplin', 'Comedia', 'Charles Chaplin', 'Virginia Cherrill'),
('Amélie', 2001, 'Jean-Pierre Jeunet', 'Romance', 'Audrey Tautou', 'Mathieu Kassovitz'),
('La Red Social', 2010, 'David Fincher', 'Drama', 'Jesse Eisenberg', 'Andrew Garfield'),
('Django Unchained', 2012, 'Quentin Tarantino', 'Western', 'Jamie Foxx', 'Christoph Waltz'),
('Kill Bill: Volumen 1', 2003, 'Quentin Tarantino', 'Acción', 'Uma Thurman', 'Lucy Liu'),
('Kill Bill: Volumen 2', 2004, 'Quentin Tarantino', 'Acción', 'Uma Thurman', 'David Carradine'),
('El Rey León', 1994, 'Roger Allers', 'Animación', 'Matthew Broderick', 'Jeremy Irons'),
('Avatar', 2009, 'James Cameron', 'Ciencia Ficción', 'Sam Worthington', 'Zoe Saldana'),
('Avengers: Endgame', 2019, 'Anthony Russo', 'Acción', 'Robert Downey Jr.', 'Chris Evans'),
('El Origen del Planeta de los Simios', 2011, 'Rupert Wyatt', 'Ciencia Ficción', 'James Franco', 'Andy Serkis'),
('El Pianista', 2002, 'Roman Polanski', 'Drama', 'Adrien Brody', 'Thomas Kretschmann');

insert into directores (nombre)
select distinct director
from peliculas; 

insert into actores (nombre)
select distinct actor_ppal
from peliculas;
insert into actores (nombre)
select distinct actor_sec
from peliculas;

insert into peliculas_actores (id_pelicula, id_actor)
select p.id, a.actor_id
from peliculas p
join actores a where p.actor_ppal = a.nombre;
insert into peliculas_actores (id_pelicula, id_actor)
select p.id, a.actor_id
from peliculas p
join actores a where p.actor_sec = a.nombre;

alter table peliculas 
add column director_id INT,
drop column actor_ppal,
drop column actor_sec;

update peliculas
set director_id = (select director_id from directores where nombre = peliculas.director);

alter table peliculas
drop column director,
add constraint fk_director foreign key (director_id) references directores(director_id);

-- 1 

select * from peliculas;

-- 2 

select * from peliculas where anio >= 1980 and anio <= 2000;

-- 3

select genero, count(*) as num_peliculas
from peliculas
group by genero;

-- 4

select distinct p.titulo as Pelicula, (select a.nombre from actores a where a.actor_id = pa.id_actor) as Actor
	from peliculas p, peliculas_actores pa 
	where p.id = pa.id_pelicula; 

-- 5

select p.titulo as Pelicula
	from peliculas p, peliculas_actores pa, actores a 
	where pa.id_pelicula = p.id and pa.id_actor = a.actor_id and a.nombre = 'Leonardo Dicaprio';

-- 6

start transaction;

insert into directores (nombre)
values ("Nuevo director");

insert into peliculas (titulo,anio,director_id,genero)
values ("Nueva Peli", 2024, 5, "Drama");

commit;
rollback;



	