-- 1.

SELECT t.name FROM teacher AS t WHERE t.dept IS NULL;

-- 2.

SELECT t.name, d.name FROM teacher as t INNER JOIN dept AS d ON (t.dept=d.id);

-- 3.

SELECT t.name, d.name FROM teacher as t LEFT JOIN dept AS d ON (t.dept=d.id);

-- 4.

SELECT t.name, d.name FROM teacher as t RIGHT JOIN dept AS d ON (t.dept=d.id);

-- 5.

SELECT t.name, COALESCE(t.mobile,'07986 444 2266') AS mobile FROM teacher AS t;

-- 6.

SELECT t.name, COALESCE(d.name,'None') AS dept FROM teacher AS t LEFT JOIN dept AS d ON (t.dept = d.id);

-- 7.

SELECT COUNT(t.name) AS teachers, COUNT(t.mobile) AS mobiles FROM teacher AS t;

-- 8.

SELECT d.name, COUNT(t.id) AS staff FROM teacher AS t RIGHT JOIN dept AS d ON (t.dept = d.id) GROUP BY d.name;

-- 9.

SELECT t.name, CASE WHEN t.dept IN(1,2) THEN 'Sci' ELSE 'Art' END AS dept FROM teacher AS t;

-- 10.

SELECT t.name, CASE WHEN t.dept IN (1,2) THEN 'Sci' WHEN t.dept = 3 THEN 'Art' ELSE 'None' END FROM teacher AS t;
