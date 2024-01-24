DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS studios;
DROP TABLE IF EXISTS actors;
DROP TABLE IF EXISTS characters;
CREATE TABLE movies (Movie_id INTEGER PRIMARY KEY AUTOINCREMENT, movie_title TEXT, Year Integer, MPAA_rating TEXT, Studio_id Integer);
INSERT INTO movies (movie_title, Year, MPAA_rating, Studio_id) VALUES ("Batman Begins",2005, "PG-13",1),("The Dark Knight",2008,"PG-13",1), ("The Dark Knight Rises",2012,"PG-13",1);
CREATE TABLE studios (Studio_id INTEGER PRIMARY KEY AUTOINCREMENT,Name TEXT);
INSERT INTO studios (Name) VALUES ("Warner Bros.");
CREATE TABLE actors (Actor_id INTEGER PRIMARY KEY AUTOINCREMENT, Real_Name TEXT);
INSERT INTO actors(Real_Name) VALUES ("Christian Bale"),("Michael Caine"),("Liam Neeson"),("Katie Holmes"),("Gary Oldman"),("Heath Ledger"),("Aaron Eckhart"),("Maggie Gyllenhaal"),("Tom Hardy"),("Joseph Gordon-Levitt"),("Anne Hathaway");
CREATE TABLE characters (Character_id INTEGER PRIMARY KEY AUTOINCREMENT, Character_name TEXT, Actor_id Integer, Movie_id Integer);
INSERT INTO characters (Character_name,actor_id,Movie_id) VALUES ('Bruce Wayne',1,1),('Alfred',2,1),("Ra's Al Ghul",3,1),('Rachel Dawes',4,1),('Commissioner Gordon',5, 1),('Bruce Wayne',5,2);
--('Joker',2),('Harvey Dent',2),('Alfred',2),('Rachel Dawes',2);
.print "Movies"
.print "======"
.print ""
SELECT movie_title, Year, MPAA_rating, name FROM movies INNER JOIN Studios ON movies.Studio_id = studios.Studio_id;
.print ""
.print "Top Cast"
.print "========"
.print ""
SELECT movie_title, Real_name, character_name FROM movies Inner JOIN characters ON movies.Movie_id = characters.Movie_id INNER JOIN actors ON Characters.actor_id = actors.Actor_id;