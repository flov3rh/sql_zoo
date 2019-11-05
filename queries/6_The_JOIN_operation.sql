-- 1.

SELECT g.matchid, g.player FROM goal AS g WHERE teamid = 'GER';

-- 2.

SELECT id,stadium,team1,team2 FROM game WHERE id = 1012;

-- 3.

SELECT gl.player, gl.teamid, gm.stadium, gm.mdate FROM goal AS gl JOIN game as gm ON gl.matchid = gm.id WHERE gl.teamid = 'GER';

-- 4.

SELECT gm.team1, gm.team2, gl.player FROM game AS gm JOIN goal as gl ON gm.id = gl.matchid WHERE gl.player LIKE 'Mario%';

-- 5.

SELECT gl.player, gl.teamid, et.coach, gl.gtime FROM goal AS gl JOIN eteam AS et on gl.teamid=et.id WHERE gtime<=10;

-- 6.

SELECT gm.mdate, et.teamname FROM game AS gm JOIN eteam AS et ON (gm.team1=et.id) WHERE et.coach = 'Fernando Santos';

-- 7.

SELECT gl.player FROM goal as gl JOIN game AS gm ON (gl.matchid = gm.id) WHERE gm.stadium = 'National Stadium, Warsaw';

-- 8.

SELECT DISTINCT gl.player FROM game AS gm JOIN goal gl ON (gm.id = gl.matchid) WHERE (team1 = 'GER' OR team2 = 'GER') AND teamid != 'GER';

-- 9.

SELECT et.teamname, COUNT(gl.teamid) FROM goal gl JOIN eteam et ON (gl.teamid = et.id) GROUP BY et.teamname;

-- 10.
SELECT gm.stadium, COUNT(gl.teamid) FROM game gm JOIN goal gl ON (gm.id = gl.matchid) GROUP BY gm.stadium;

-- 11.

SELECT gl.matchid, gm.mdate, COUNT(*) FROM game gm JOIN goal gl ON (gm.id = gl.matchid) WHERE team1 = 'POL' OR team2 = 'POL' GROUP BY gl.matchid, gm.mdate;

-- 12.

SELECT gl.matchid, gm.mdate, COUNT(*) FROM game gm JOIN goal gl ON (gm.id = gl.matchid) WHERE gl.teamid = 'GER' GROUP BY gl.matchid, gm.mdate;

-- 13.

SELECT gm.mdate, gm.team1, SUM( CASE WHEN gl.teamid = gm.team1 THEN 1 ELSE 0 END) AS score_1, gm. team2, SUM(CASE WHEN gl.teamid = gm.team2 THEN 1 ELSE 0 END) AS score_2 FROM game AS gm LEFT JOIN goal gl ON (gm.id = gl.matchid) GROUP BY gm.mdate, gl.matchid, gm.team1, gm.team2 ORDER BY gm.mdate, gl.matchid, gm.team1, gm.team2;
