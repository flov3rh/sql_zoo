-- 1.

SELECT COUNT(s.id) FROM stops AS s;

-- 2.

SELECT s.id FROM stops AS s WHERE s.name = 'Craiglockhart';

-- 3.

SELECT s.id, s.name FROM stops AS s WHERE s.id IN (SELECT r.stop FROM route AS r WHERE r.num = 4 AND r.company = 'LRT');

-- 4. Routes and stops

SELECT company, num, COUNT(*) FROM route WHERE stop=149 OR stop=53 GROUP BY company, num HAVING COUNT(*) = 2;

-- 5.

SELECT a.company, a.num, a.stop, b.stop FROM route a JOIN route b ON (a.company=b.company AND a.num=b.num) WHERE a.stop=53 AND b.stop=149;

-- 6.

SELECT a.company, a.num, stopa.name, stopb.name FROM route AS a JOIN route AS b ON (a.company=b.company AND a.num=b.num) JOIN stops AS stopa ON (a.stop=stopa.id) JOIN stops AS stopb ON (b.stop=stopb.id) WHERE stopa.name='Craiglockhart' AND stopb.name = 'London Road';

-- 7. Using a self join

SELECT DISTINCT a.company, a.num FROM route a JOIN route b ON (a.company=b.company AND a.num=b.num) WHERE b.stop=115 AND a.stop=137;

-- 8.

SELECT DISTINCT r.company, r.num FROM route AS r JOIN route AS a ON (r.company = a.company AND r.num = a.num) JOIN stops stopa ON (r.stop = stopa.id) JOIN stops stopb ON (a.stop = stopb.id) WHERE stopa.name = 'Craiglockhart'
AND stopb.name = 'Tollcross';

-- 9.

SELECT stopb.name, r.company, r.num FROM route AS r JOIN route AS x ON (r.company = x.company AND r.num = x.num)
JOIN stops stopa ON (r.stop = stopa.id) JOIN stops stopb ON (x.stop = stopb.id) WHERE stopa.name = 'Craiglockhart';

-- 10.

SELECT rx.num, rx.company, sx.name AS change_at, ry.num, ry.company FROM route rx JOIN route ry ON (rx.stop = ry.stop) JOIN stops sx ON (sx.id = rx.stop) WHERE rx.num != ry.num AND rx.company IN (SELECT DISTINCT ra.company FROM route ra JOIN stops sa ON (ra.stop = (SELECT id FROM stops sa WHERE name = 'Craiglockhart')) WHERE ra.num = rx.num) AND ry.company IN (SELECT DISTINCT rb.company FROM route rb JOIN stops sb ON (rb.stop = (SELECT id FROM stops sb WHERE name = 'Lochend')) WHERE rb.num = ry.num);
