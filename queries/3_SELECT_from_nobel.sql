-- 1. Winners from 1950

SELECT n.* FROM nobel AS n WHERE n.yr = 1950;

-- 2. 1962 Literature

SELECT n.winner FROM nobel AS n WHERE n.subject = 'Literature' AND n.yr = 1962;

-- 3. Albert Einstein

SELECT n.yr, n.subject FROM nobel AS n WHERE n.winner = 'Albert Einstein';

-- 4. Recent Peace Prizes

SELECT n.winner FROM nobel AS n WHERE n.subject = 'Peace' AND n.yr >= 2000;

-- 5. Literature in the 1980's

SELECT n.* FROM nobel AS n WHERE n.subject = 'Literature' AND n.yr BETWEEN 1980 AND 1989;

-- 6. Only Presidents

SELECT n.* FROM nobel AS n WHERE n.winner IN ('Theodore Roosevelt','Woodrow Wilson','Jimmy Carter','Barack Obama');

-- 7. John

SELECT n.winner FROM nobel AS n WHERE n.winner LIKE 'John%';

-- 8. Chemistry and Physics from different years

SELECT n.* FROM nobel AS n WHERE n.subject = 'Physics' AND n.yr = 1980 OR n.subject = 'Chemistry' AND n.yr = 1984;

-- 9. Exclude Chemists and Medics

SELECT n.* FROM nobel AS n WHERE n.subject NOT IN('Chemistry','Medicine') AND n.yr = 1980;

-- 10. Early Medicine, Late Literature

SELECT n.* FROM nobel AS n WHERE n.subject = 'Medicine' AND  n.yr < 1910 OR n.subject = 'Literature' AND  n.yr >= 2004;

-- 11. Umlaut

SELECT n.* FROM nobel AS n WHERE n.winner LIKE 'peter gr_nberg';

-- 12. Apostrophe

SELECT n.* FROM nobel AS n WHERE n.winner LIKE 'Eugene O_Neill';

-- 13. Knights of the realm

SELECT n.winner, n.yr, n.subject FROM nobel AS n WHERE n.winner LIKE 'Sir%';

-- 14. Chemistry and Physics last

SELECT n.winner, n.subject FROM nobel AS n WHERE n.yr = 1984 ORDER BY n.subject IN ('Chemistry','Physics'),subject,winner;
