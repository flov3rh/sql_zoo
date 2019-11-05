-- 1. Total world population

SELECT SUM(population) FROM world;

-- 2. List of continents

SELECT DISTINCT continent FROM world;

-- 3. GDP of Africa

SELECT SUM(w.gdp) FROM world AS w WHERE w.continent = 'Africa';

-- 4. Count the big countries

SELECT COUNT(w.name) FROM world AS w WHERE w.area >= 1000000;

-- 5. Baltic states population

SELECT SUM(w.population) AS baltic_states_population FROM world AS w WHERE w.name IN ('Estonia', 'Latvia', 'Lithuania');

-- 6. Using GROUP BY and HAVING

SELECT w.continent,COUNT(w.name) AS countries FROM world AS w GROUP BY w.continent;

-- 7. Counting big countries in each continent

SELECT w.continent, COUNT(w.name) FROM world AS w WHERE w.population > 10000000 GROUP BY w.continent;

-- 8. Counting big continents

SELECT w.continent FROM world AS w GROUP BY w.continent HAVING SUM(w.population) > 100000000;
