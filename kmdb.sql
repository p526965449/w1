DROP TABLE IF EXISTS Movie;
DROP TABLE IF EXISTS Studio;
DROP TABLE IF EXISTS Actor;
.mode column
.header on
CREATE TABLE Movie (Movie_id INTEGER PRIMARY KEY AUTOINCREMENT, movie_title TEXT, MPAA_rating Integer);
INSERT INTO Movie (movie_title, MPAA_rating) VALUES ("Batman Begins",9);
CREATE TABLE Studio (Studio_id INTEGER PRIMARY KEY AUTOINCREMENT,Name TEXT );
CREATE TABLE Actor (Actor_id INTEGER PRIMARY KEY AUTOINCREMENT, First_name Text, Last_name Text);