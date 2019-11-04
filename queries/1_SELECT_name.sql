- 1.

SELECT w.name FROM world AS w WHERE w.name LIKE 'Y%';

-- 2.

SELECT w.name FROM world AS w WHERE w.name LIKE '%Y';

-- 3.

SELECT w.name FROM world AS w WHERE w.name LIKE '%x%';

-- 4.

SELECT w.name FROM world AS w WHERE w.name LIKE '%land';

-- 5.

SELECT w.name FROM world AS w WHERE w.name LIKE 'C%ia';

-- 6.

SELECT w.name FROM world AS w WHERE w.name LIKE '%oo%';

-- 7.

SELECT w.name FROM world AS w WHERE w.name LIKE '%a%a%a%';

-- 8.

SELECT w.name FROM world AS w WHERE w.name LIKE '_t%';

-- 9.

SELECT w.name FROM world AS w WHERE w.name LIKE '%o__o%';

-- 10.

SELECT w.name FROM world AS w WHERE LENGTH(w.name) = 4;

-- 11.

SELECT w.name FROM world AS w WHERE w.name = w.capital;

-- 12.

SELECT w.name FROM world AS w WHERE w.capital LIKE CONCAT(w.name,' City');

-- 13.

SELECT w.capital, w.name FROM world AS w WHERE w.capital LIKE CONCAT('%',w.name,'%');

-- 14.

SELECT w.capital, w.name FROM world AS w WHERE w.capital LIKE CONCAT(w.name,'_%');

-- 15.

SELECT w.name, REPLACE(w.capital,w.name,'') AS ext FROM world AS w WHERE w.capital LIKE concat(w.name,'_%');
