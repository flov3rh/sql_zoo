-- 1. Introduction

SELECT w.name, w.continent, w.population FROM world AS w;

-- 2. Large Countries


SELECT w.name FROM world AS w WHERE w.population >= 200000000;

-- 3. Per capita GDP


SELECT w.name, w.gdp/w.population AS per_capita_GDP FROM world AS w WHERE w.population >= 200000000;

-- 4. South America In millions


SELECT w.name, w.population/1000000 AS population_millions FROM world AS w WHERE w.continent = 'South America';

-- 5. France, Germany, Italy


SELECT w.name, w.population FROM world AS w WHERE w.name IN ('France', 'Germany', 'Italy');

-- 6. United

SELECT w.name FROM world AS w WHERE w.name LIKE '%United%';

-- 7. Two ways to be big


SELECT w.name,w.population,w.area FROM world AS w WHERE w.area > 3000000 OR w.population > 250000000;

-- 8. One or the other (but not both)


SELECT w.name,w.population,w.area FROM world AS w WHERE w.area > 3000000 XOR w.population > 250000000;

-- 9. Rounding


SELECT w.name, ROUND(w.population/1000000,2), ROUND(w.gdp/1000000000,2) FROM world AS w WHERE w.continent = 'South America';

-- 10. Trillion dollar economies


SELECT w.name, ROUND(w.gdp/w.population,-3) AS per_capita_GDP FROM world AS w WHERE w.gdp >= 1000000000000;

-- 11. Name and capital have the same length


SELECT w.name, w.capital FROM world AS w WHERE LENGTH(w.capital) = LENGTH(w.name);

-- 12. Matching name and capital

SELECT w.name,w.capital FROM world AS w WHERE LEFT(w.name,1) = LEFT(w.capital,1) AND w.name <> w.capital;

-- 13. All the vowels

SELECT w.name FROM world AS w WHERE w.name NOT LIKE '% %' AND w.name LIKE '%a%' AND w.name LIKE '%e%' AND w.name LIKE '%i%' AND w.name LIKE '%o%' AND w.name LIKE '%u%';
