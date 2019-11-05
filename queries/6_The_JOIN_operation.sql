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



9.

10.
