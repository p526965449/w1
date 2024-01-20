DROP TABLE IF EXISTS Movie;
DROP TABLE IF EXISTS Studio;
DROP TABLE IF EXISTS Actor;
.mode column
.header on
CREATE TABLE Movie (Movie_id INTEGER PRIMARY KEY AUTOINCREMENT, movie_title TEXT, Year Integer, MPAA_rating TEXT);
INSERT INTO Movie VALUES ('1','Batman Begins','2005', 'PG-13'),('2','The Dark Knight','2008','PG-13'), ('3','The Dark Knight Rises','2012','PG-13');
CREATE TABLE Studio (Studio_id INTEGER PRIMARY KEY AUTOINCREMENT,Name TEXT);
INSERT INTO Studio VALUES ('1','Warner Bros');
CREATE TABLE Actor (Actor_id INTEGER PRIMARY KEY AUTOINCREMENT, First_name Text, Last_name Text);