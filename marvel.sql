DROP TABLE movies;
DROP TABLE people;

CREATE TABLE movies (
	id SERIAL PRIMARY KEY,
	title VARCHAR(255),
	year INT,
	show_time VARCHAR(255)
);

CREATE TABLE people (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255)
);

INSERT INTO people (name) VALUES ('Homer Simpson');
INSERT INTO people (name) VALUES ('Marge Simpson');
INSERT INTO people (name) VALUES ('Lisa Simpson');
INSERT INTO people (name) VALUES ('Maggie Simpson');
INSERT INTO people (name) VALUES ('Patty Bouvier');
INSERT INTO people (name) VALUES ('Selma Bouvier');
INSERT INTO people (name) VALUES ('Kent Brockman');
INSERT INTO people (name) VALUES ('Ned Flanders');
INSERT INTO people (name) VALUES ('Barney Gumble');
INSERT INTO people (name) VALUES ('Itchy');
INSERT INTO people (name) VALUES ('Eric Cartman');
INSERT INTO people (name) VALUES ('Scratchy');
INSERT INTO people (name) VALUES ('Crusty the Clown');
INSERT INTO people (name) VALUES ('Montgomery Burns');
INSERT INTO people (name) VALUES ('Mayor Joe Quimby');
INSERT INTO people (name) VALUES ('Groundskeeper Willie');

INSERT INTO movies (title, year, show_time) VALUES ('Iron Man', 2008, '17:00');
INSERT INTO movies (title, year, show_time) VALUES ('The Incredible Hulk', 2008, '23:55');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 2', 2010, '18:45');
INSERT INTO movies (title, year, show_time) VALUES ('Thor', 2011, '15:45');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The First Avenger', 2011, '14:15');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers Assemble', 2012, '14:45');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 3', 2013, '21:55');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: The Dark World', 2013, '22:55');
INSERT INTO movies (title, year, show_time) VALUES ('Batman Begins', 2005, '13:40');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The Winter Soldier', 2014, '18:25');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy', 2014, '13:10');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Age of Ultron', 2015, '20:20');
INSERT INTO movies (title, year, show_time) VALUES ('Ant-Man', 2015, '13:00');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: Civil War', 2016, '12:35');
INSERT INTO movies (title, year, show_time) VALUES ('Doctor Strange', 2016, '22:00');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2017, '14:05');
INSERT INTO movies (title, year, show_time) VALUES ('Spider-Man: Homecoming', 2017, '23:00');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: Ragnarok', 2017, '22:10');
INSERT INTO movies (title, year, show_time) VALUES ('Black Panther', 2018, '21:00');


-- 1.  Return ALL the data in the 'movies' table.
SELECT * FROM movies;

-- 2.  Return ONLY the name column from the 'people' table
SELECT name FROM people;

-- 3.  Oops! Someone spelled Krusty The Clown's name wrong! Change it to reflect the proper spelling (Crusty should be Krusty).
UPDATE people SET name = 'Krusty the Clown' WHERE name = 'Crusty the Clown';
SELECT name FROM people;

-- 4.  Return ONLY Homer Simpson's name from the 'people' table.
SELECT name FROM people WHERE name = 'Homer Simpson';

-- 5.  The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.
DELETE FROM movies WHERE title = 'Batman Begins';
SELECT * FROM movies;

-- 6.  We forgot one of the main characters! Add Bart Simpson to the 'people' table
INSERT INTO people (name) VALUES ('Bart Simpson');
SELECT * FROM people;

-- 7.  Eric Cartman has decided to hijack our movie evening, Remove him from the table of people.
DELETE FROM people WHERE name = 'Eric Cartman';
SELECT * FROM people;

-- 8.  The cinema has just heard that they will be holding an exclusive midnight showing of 'Avengers: Infinity War'!! Create a new entry in the 'movies' table to reflect this.
INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Infinity War', 2018, '00:00');
SELECT * FROM movies;
-- 9.  The cinema would like to make the Iron Man movies a triple billing. Find out the show time of "Iron Man 2" and set the show time of "Iron Man 3" to start two hours later.
SELECT show_time FROM movies WHERE title = 'Iron Man 2';
UPDATE movies SET show_time = '20:45'  WHERE title = 'Iron Man 3';
SELECT show_time FROM movies WHERE title = 'Iron Man 3';

-- 10. YOLO
DELETE FROM movies WHERE title IN ('Iron Man', 'Iron Man 2', 'Iron Man 3');
SELECT * FROM movies;

-- Return all of the films ordered by start time (will need to research ORDER BY)
SELECT * FROM movies ORDER BY show_time;

-- Count the number of films released in each year (will need to research GROUP BY)
SELECT COUNT(title), year FROM movies GROUP BY year;