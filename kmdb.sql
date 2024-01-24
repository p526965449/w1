DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS studios;
DROP TABLE IF EXISTS actors;
CREATE TABLE movies (Movie_id INTEGER PRIMARY KEY AUTOINCREMENT, movie_title TEXT, Year Integer, MPAA_rating TEXT, Studio_id Integer);
INSERT INTO movies (movie_title, Year, MPAA_rating, Studio_id) VALUES ('Batman Begins',2005, 'PG-13',1),('The Dark Knight',2008,'PG-13',1), ('The Dark Knight Rises',2012,'PG-13',1);
CREATE TABLE studios (Studio_id INTEGER PRIMARY KEY AUTOINCREMENT,Name TEXT);
INSERT INTO studios (Name) VALUES ('Warner Bros.');
CREATE TABLE actors (Actor_id INTEGER PRIMARY KEY AUTOINCREMENT, Real_Name TEXT, Cast_name TEXT, Movie_id Integer);
INSERT INTO actors(Real_Name, Cast_Name, Movie_id) VALUES ('Christian Bale','Bruce Wayne',1),('Michael Caine','Alfred',1),('Liam Neeson','Ras Al Ghul',1),('Katie Holmes','Rachel Dawes',1),('Gary Oldman','Commissioner Gordon',1),('Christian Bale','Bruce Wayne',2),('Heath Ledger','Joker',2),('Aaron Eckhart','Harvey Dent',2),('Michael Caine','Alfred',2),('Maggie Gyllenhaal','Rachel Dawes',2);
INSERT INTO actors(Real_Name, Cast_Name, Movie_id) VALUES ('Christian Bale','Bruce Wayne',3),('Gary Oldman','Commissioner Gordon',3),('Tom Hardy','Bane',3),('Joseph Gordon-Levitt','John Blake',3),('Anne Hathaway','Selina Kyle',3);
.print "Movies"
.print "======"
.print ""
SELECT movie_title, Year, MPAA_rating, name FROM movies INNER JOIN Studios ON movies.Studio_id = studios.Studio_id;
.print ""
.print "Top Cast"
.print "========"
.print ""
SELECT movie_title, Real_Name, Cast_name FROM movies Inner JOIN actors ON movies.Movie_id = actors.Movie_id;