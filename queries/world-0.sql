-- Queries for table world

-- 1.

SELECT w.population FROM world AS w WHERE w.name = 'Germany';

-- 2.

SELECT w.name, w.population FROM world AS w WHERE name IN('Sweden', 'Norway', 'Denmark');

-- 3.

SELECT w.name, w.area FROM world AS w WHERE area BETWEEN 200000 AND 250000;
