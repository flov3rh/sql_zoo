-- 1. Bigger than Russia

SELECT w.name FROM world AS w WHERE w.population > (SELECT population FROM world WHERE name = 'Russia');

-- 2. Richer than UK

SELECT w.name FROM world AS w WHERE w.gdp/w.population > (SELECT gdp/population FROM world WHERE name = 'United Kingdom') AND w.continent = 'Europe';

-- 3. Neighbours of Argentina and Australia

SELECT w.name, w.continent FROM world AS w WHERE w.continent IN(SELECT continent FROM world WHERE name IN('Argentina','Australia')) ORDER BY w.name;

-- 4. Between Canada and Poland

SELECT w.name, w.population FROM world AS w WHERE w.population > (SELECT population FROM world WHERE name = 'Canada') AND w.population < (SELECT population FROM world WHERE name = 'Poland');

-- 5. Percentages of Germany

SELECT w.name, CONCAT(ROUND((w.population*100)/(SELECT population FROM world WHERE name = 'Germany'),0),'%') AS population FROM world AS w WHERE w.continent = 'Europe';

-- 6. Bigger than every country in Europe

SELECT w.name FROM world AS w WHERE  w.gdp > ALL(SELECT gdp FROM world WHERE continent = 'Europe' AND gdp > 0);

-- 7. Largest in each continent

SELECT w.continent,w.name,w.area FROM world AS w WHERE w.area >= ALL(SELECT area FROM world WHERE continent = w.continent);

-- 8. First country of each continent (alphabetically)

SELECT DISTINCT w.continent, (SELECT DISTINCT name FROM world WHERE continent = w.continent ORDER BY name LIMIT 1) FROM world AS w;

-- 9. Difficult Questions That Utilize Techniques Not Covered In Prior Sections


-- 10. Some countries have populations more than three times that of any of their neighbours (in the same continent). Give the countries and continents.
