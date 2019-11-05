-- 1. 1962 movies

SELECT m.id, m.title FROM movie AS m WHERE m.yr=1962

-- 2. When was Citizen Kane released?

SELECT m.yr FROM movie AS m WHERE m.title = 'Citizen Kane';

-- 3. Star Trek movies

SELECT m.id,m.title,m.yr FROM movie AS m WHERE m.title LIKE 'Star Trek%';

-- 4. id for actor Glenn Close

SELECT a.id FROM actor AS a WHERE a.name = 'Glenn Close';

-- 5. id for Casablanca

SELECT m.id FROM movie AS m WHERE m.title = 'Casablanca';

-- 6. Cast list for Casablanca

SELECT a.name FROM casting AS c JOIN actor AS a ON c.actorid = a.id WHERE c.movieid=11768;

-- 7. Alien cast list

SELECT a.name FROM casting AS c JOIN actor AS a ON c.actorid = a.id WHERE c.movieid = (SELECT x.id FROM movie AS x WHERE x.title = 'Alien');

-- 8. Harrison Ford movies

SELECT m.title FROM movie AS m JOIN casting AS c ON m.id = c.movieid WHERE c.actorid = (SELECT x.id FROM actor AS x WHERE x.name = 'Harrison Ford');

-- 9. Harrison Ford as a supporting actor

SELECT m.title FROM movie AS m JOIN casting AS c ON m.id = c.movieid WHERE c.actorid = (SELECT x.id FROM actor AS x WHERE x.name = 'Harrison Ford') AND c.ord != 1;

-- 10. Lead actors in 1962 movies

SELECT m.title, a.name FROM movie AS m INNER JOIN casting AS c ON m.id = c.movieid INNER JOIN actor AS a ON a.id = c.actorid WHERE m.yr = 1962 AND c.ord = 1;

-- 11. Busy years for Rock Hudson

SELECT m.yr, COUNT(m.title) FROM movie AS m JOIN casting AS c ON m.id = c.movieid JOIN actor AS a ON c.actorid = a.id WHERE a.name = 'Rock Hudson' GROUP BY m.yr HAVING COUNT(m.title) > 2;

-- 12. Lead actor in Julie Andrews movies



13.

14.

15.

16.
