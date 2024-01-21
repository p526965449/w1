.mode column
.headers off
DROP TABLE IF EXISTS Movie;
DROP TABLE IF EXISTS Studio;
DROP TABLE IF EXISTS Actor;
CREATE TABLE Movie (Movie_id INTEGER PRIMARY KEY AUTOINCREMENT, movie_title TEXT, Year Integer, MPAA_rating TEXT);
INSERT INTO Movie VALUES ('1','Batman Begins','2005', 'PG-13'),('2','The Dark Knight','2008','PG-13'), ('3','The Dark Knight Rises','2012','PG-13');
CREATE TABLE Studio (Studio_id INTEGER PRIMARY KEY AUTOINCREMENT,Name TEXT);
INSERT INTO Studio VALUES ('1','Warner Bros');
CREATE TABLE Actor (Actor_id INTEGER PRIMARY KEY AUTOINCREMENT, Real_Name TEXT, Cast_name TEXT);
INSERT INTO Actor VALUES ('1','Christian Bale','Bruce Wayne'),('2','Michael Caine','Alfred'),('3','Liam Neeson','Ras Al Ghul'),('4','Katie Holmes','Rachel Dawes'),('5','Gary Oldman','Commissioner Gordon'),('6','Christian Bale','Bruce Wayne'),('7','Christian Bale','Bruce Wayne'),('8','Christian Bale','Bruce Wayne');
--INSERT INTO Actor VALUES ('9','Christian Bale','Bruce Wayne'),('10','Christian Bale','Bruce Wayne'),('11','Christian Bale','Bruce Wayne'),('12','Christian Bale','Bruce Wayne'),('13','Christian Bale','Bruce Wayne'),('14','Christian Bale','Bruce Wayne'),('15','Christian Bale','Bruce Wayne');
.print "Top Cast";