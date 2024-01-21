.mode column
.headers off
DROP TABLE IF EXISTS Movie;
DROP TABLE IF EXISTS Studio;
DROP TABLE IF EXISTS Actor;
CREATE TABLE Movie (Movie_id INTEGER PRIMARY KEY AUTOINCREMENT, movie_title TEXT, Year Integer, MPAA_rating TEXT, Studio_id Integer);
INSERT INTO Movie VALUES ('1','Batman Begins','2005', 'PG-13','1'),('2','The Dark Knight','2008','PG-13','1'), ('3','The Dark Knight Rises','2012','PG-13','1');
CREATE TABLE Studio (Studio_id INTEGER PRIMARY KEY AUTOINCREMENT,Name TEXT);
INSERT INTO Studio VALUES ('1','Warner Bros.');
CREATE TABLE Actor (Actor_id INTEGER PRIMARY KEY AUTOINCREMENT, Real_Name TEXT, Cast_name TEXT, Movie_id Integer);
INSERT INTO Actor VALUES ('1','Christian Bale','Bruce Wayne','1'),('2','Michael Caine','Alfred','1'),('3','Liam Neeson','Ras Al Ghul','1'),('4','Katie Holmes','Rachel Dawes','1'),('5','Gary Oldman','Commissioner Gordon','1'),('6','Christian Bale','Bruce Wayne','2'),('7','Heath Ledger','Joker','2'),('8','Aaron Eckhart','Harvey Dent','2'),('9','Michael Caine','Alfred','2'),('10','Maggie Gyllenhaal','Rachel Dawes','2');
INSERT INTO Actor VALUES ('11','Christian Bale','Bruce Wayne','3'),('12','Gary Oldman','Commissioner Gordon','3'),('13','Tom Hardy','Bane','3'),('14','Joseph Gordon-Levitt','John Blake','3'),('15','Anne Hathaway','Selina Kyle','3');
.print "Movies"
.print "======"
.print ""
SELECT movie_title, Year, MPAA_rating, name FROM Movie INNER JOIN Studio ON Movie.Studio_id = Studio.Studio_id;
.print ""
.print "Top Cast"
.print "========"
.print ""
SELECT movie_title, Real_Name, Cast_name FROM Movie Inner JOIN Actor ON Movie.Movie_id = Actor.Movie_id;